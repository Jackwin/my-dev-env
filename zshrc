# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/chunjie/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
    virtualenv
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias 1="cd .."
alias 2="cd ../../"
alias 3="cd ../../../"
alias dw="cd /data/chunjie/workspace"
alias lib="cd /data/chunjie/workspace/br100/llvm-project-brcc/mlir/lib"
alias inc="cd /data/chunjie/workspace/br100/llvm-project-brcc/mlir/include/mlir"

# ProGraML 
export PATH=/home/chunjie/.local/opt/programl/bin:$PATH
export LD_LIBRARY_PATH=/home/chunjie/.local/opt/programl/lib:$LD_LIBRARY_PATH
# anaconda
export PATH=/home/chunjie/anaconda3/bin:$PATH
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
PATH=$PATH:~/workspace/mlir/verilator/ext/bin:~/workspace/mlir/circt/build/bin:~/.local/bin:~/workspace/mlir/llvm-project/build/bin


# virtualenv settings
#PYTHONPATH=$PYTHONPATH:/home/chunjie/env/python3/lib/python3.6/site-packages:/home/chunjie/env/python3/bin/python
PYTHONPATH=$PYTHONPATH:/home/chunjie/env/python3/lib/python3.7/site-packages


# MARA
#export BUILD_DIR=/home/chunjie/workspace/MARA/third-party/llvm-project/llvm-build
#export PREFIX=/home/chunjie/workspace/MARA/third-party/llvm-project/llvm-build

# MANGO
export BUILD_DIR=/data/chunjie/workspace/br100/llvm-project-forMLIR/llvm-build
export PREFIX=/data/chunjie/workspace/br100/llvm-project-forMLIR/llvm-build

export PATH=$PATH:$BUILD_DIR/bin

# SUPA
export SUPA_PATH=/home/chunjie/workspace/br100/supa
export BRCC_PATH=/data/chunjie/workspace/br100/llvm-project/build
export BESU_PATH=/home/chunjie/workspace/br100/BESU
export LD_LIBRARY_PATH=$BESU_PATH/lib:$LD_LIBRARY_PATH

#TVM 
export TVM_HOME=/data/chunjie/workspace/opensource/HASCO/src/tvm
export PYTHONPATH=$TVM_HOME/python:${PYTHONPATH}
#Ax
export AX_HOME=/data/chunjie/workspace/opensource/HASCO/src/Ax
export PYTHONPATH=$AX_HOME:${PYTHONPATH}
#RISCV
export PATH=$PATH:/opt/riscv/bin:/opt/riscv/riscv64-unknown-elf/bin:/data/chunjie/workspace/opensource/riscv-isa-sim/build
#dtc
export PATH=$PATH:/home/chunjie/tools/dtc-1.6.1
