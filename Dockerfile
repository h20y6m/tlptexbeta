#
# podman build -t tl-update .
#
# podman run --rm -it -v `pwd`:/work tl-update tl-update-tlpdb --master=/work --from-git
# podman run --rm -it -v `pwd`:/work tl-update tl-update-containers --master=/work --location=/work/dist --no-sign --all
#
FROM ubuntu:20.04

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      git \
      libtext-unidecode-perl \
      libxml-parser-perl \
      libxml-xpath-perl \
      perl \
      subversion \
      xz-utils \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/texlive/tlpkg && cd /opt/texlive/tlpkg \
 && svn export svn://tug.org/texlive/trunk/Master/tlpkg/TeXLive/ \
 && mkdir -p /opt/texlive/tlpkg/bin && cd /opt/texlive/tlpkg/bin \
 && svn export svn://tug.org/texlive/trunk/Master/tlpkg/bin/tl-update-tlpdb \
 && svn export svn://tug.org/texlive/trunk/Master/tlpkg/bin/tl-update-containers \
 && mkdir -p /opt/texlive/tlpkg/installer && cd /opt/texlive/tlpkg/installer \
 && svn export svn://tug.org/texlive/trunk/Master/tlpkg/installer/config.guess

ENV PATH /opt/texlive/tlpkg/bin:$PATH

WORKDIR /work
