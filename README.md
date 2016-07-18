# Docker Bin

A set of executables for replacing your workflow with docker commands


## Installation

**Clone the repo**
```
$ git clone https://github.com/tatemz/docker-bin.git ~/.docker-bin
```

**Add folder to your path**
Enter this in a terminal or add this to your `.bashrc` or `.zshrc`

```
export PATH="$HOME/.docker-bin:$PATH"
```

## Usage

Run commands as you usually would. Each of the commands mentioned below will download and run up a docker container (prefixed by `dockerbin_`). The docker container will then be used to run the appropriate commands.

**Available Commands**

* npm


## Contributing
Pull requests may be submitted. This project currently needs the following:

1. More common commands
2. Address need for sharing volumes based on `pwd` or specified parameter
3. Address problem when container has a custom entrypoint that neglects bash support
