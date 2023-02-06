BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

pushd $BIN_DIR

for s in mininzinc ortools yuck picat
do
    bash install-${s}.sh
done

popd