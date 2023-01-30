#!/bin/bash
MZN_VERSION="2.6.4" # should be backwards compatible to the version used in competitions
MZN_DIR="MinizincIDE-$MZN_VERSION-bundle-linux-x86_64"
MZN_ARCHIVE="$MZN_DIR.tgz"
INSTALL_DIR="$HOME/bin"

mkdir -p $INSTALL_DIR
wget "https://github.com/MiniZinc/MiniZincIDE/releases/download/${MZN_VERSION}/${MZN_ARCHIVE}" \
     -O "${INSTALL_DIR}/${MZN_ARCHIVE}"

tar xf "${INSTALL_DIR}/${MZN_ARCHIVE}" -C "${INSTALL_DIR}"

rm "${INSTALL_DIR}/${MZN_ARCHIVE}"

echo "export PATH=${INSTALL_DIR}/${MZN_DIR}/bin:\$PATH" >> $HOME/.bashrc