BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

pushd $BIN_DIR

for s in minizinc ortools yuck picat
do
    bash install-${s}.sh
done

sudo apt install linux-tools-`uname -r`

popd