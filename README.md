# tlptexbeta

非公式開発版pTeXバイナリ

## 使い方

リポジトリの登録

* Linux
```
tlmgr repository add /path/to/tlptexbeta/dist ptexbeta
tlmgr pinning add ptexbeta '*'
```
* Windows（コマンドプロンプトを管理者として実行）
```
tlmgr repository add C:/path/to/tlptexbeta/dist ptexbeta
tlmgr pinning add ptexbeta "*"
```

## ptex-beta

インストールする前に`texlive/2021/texmf.cnf`に以下を追記する。
```
% ptex-beta
TEXINPUTS.eptex-beta       = $TEXMFDOTDIR;$TEXMF/tex/{ptex,plain,generic,latex,}//
TEXINPUTS.euptex-beta      = $TEXMFDOTDIR;$TEXMF/tex/{uptex,ptex,plain,generic,latex,}//
TEXINPUTS.platex-beta      = $TEXMFDOTDIR;$TEXMF/tex/{platex,latex,generic,}//
TEXINPUTS.platex-beta-dev  = $TEXMFDOTDIR;$TEXMF/tex/{latex-dev,platex,latex,generic,}//
TEXINPUTS.ptex-beta        = $TEXMFDOTDIR;$TEXMF/tex/{ptex,plain,generic,latex,}//
TEXINPUTS.uplatex-beta     = $TEXMFDOTDIR;$TEXMF/tex/{uplatex,platex,latex,generic,}//
TEXINPUTS.uplatex-beta-dev = $TEXMFDOTDIR;$TEXMF/tex/{latex-dev,uplatex,platex,latex,generic,}//
TEXINPUTS.uptex-beta       = $TEXMFDOTDIR;$TEXMF/tex/{uptex,ptex,plain,generic,latex,}//
```

TeX Live Manager（GUIも可）からptex-betaパッケージをインストールする。
```
tlmgr install ptex-beta
```
