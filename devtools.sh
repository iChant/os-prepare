#! /bin/bash

set -e

echo "preparing for basic devtool packages..."

# check for privilege
bash $(dirname ${BASH_SOURCE})/chkroot.sh

zypper --quiet install -t pattern devel_basis devel_C_C++
zypper --quiet install git llvm clang

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

rustup completions bash > ~/.local/share/bash-completion/completions/rustup
if [ -n "$ZSH_VERSION" ]; then
    rustup completions zsh > ~/.zfunc/_rustup
fi

echo "basic devtool packages installed."
