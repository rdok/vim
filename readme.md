# vim
[![Build Status](https://jenkins.rdok.dev/buildStatus/icon?job=vim)](https://jenkins.rdok.dev/job/vim/)

Use Vim on docker. Use case, installing vim plugins such exuberant tags regardless of the OS.

### Usage
Linux 

```
docker run --rm -it -v  $PWD:/app -e COLUMNS="`tput cols`" -e LINES="`tput lines`" rdok/vim
```

Windows 

```
docker run --rm -it -v  "/${PWD}":/app -e COLUMNS="`tput cols`" -e LINES="`tput lines`" rdok/vim
```

##### Aliases
```
alias rdok-vim='docker run --rm -it -v `pwd`:/app -e COLUMNS="`tput cols`" -e LINES="`tput lines`" rdok/vim'
```


##### Resources
- [Resolve Strange terminal behaviour inside docker](https://github.com/moby/moby/issues/33794#issuecomment-312873988)
