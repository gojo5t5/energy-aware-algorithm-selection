# https://github.com/chocoteam/choco-solver
# name="choco solver"
# version="4.10.10"

# echo ""
# echo "============= INSTALLING $name ==================="
# echo "$name version: $version"

# BIN_DIR="$( cd "$( dirname "$(BASH_SOURCE[0])" )" &> /dev/null && pwd )" # https://stackoverflow.com/a/246128/6728255

# if [ ! -d "BIN_DIR/minizinc/share/minizinc" ]; then
#     echo "ERROR: minizinc must be installed in $BIN_DIR first. You can use the install-minizinc.sh script for the installation."
#     exit 1
# fi

# pushd $BIN_DIR

# OS=$(uname)
# if [ "$OS" == "Darwin" ]; then
#     url="https://github.com/google/or-tools/releases/download/v9.2/or-tools_flatzinc_MacOsX-12.0.1_v9.2.9972.tar.gz"
# elif [ "$OS" == "Linux" ]; then
#     url="https://github.com/google/or-tools/releases/download/v9.2/or-tools_amd64_flatzinc_ubuntu-18.04_v9.2.9972.tar.gz"
# else
#     echo "Cannot determine your OS, uname reports: ${OS}"
#     exit 1
# fi