# dotfiles
my dotfiles for mac

## setup
install and link files

```
$ git clone https://github.com/gozuk16/dotfiles.git
$ cd dotfiles
$ ./setup.sh
```

.zshrcに以下を追加
```
# Customize to your needs...
[[ ! -f ~/.zshrc-gozu ]] || source ~/.zshrc-gozu
```

## 注意

settup.shで以下を実行したら、.gitconfigをコミットしないように.gitignoreに.gitconfigを追加しておく
```
$ git config --global core.excludesfile ~/.gitignore_global
```
