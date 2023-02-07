# Should place all models in models/ and all instances in instances/
# Run all experiments for all models, instances and solvers

# move files into the right place

# set path to use minizinc command

for m in mznc2022_probs/*.mzn; do
    for i in mznc2022_probs/*.{dzn,json}; do
        for s in solvers/*; do
            # perf record minizinc $m $i --solver $s -t 60
            sudo perf stat -e minizinc $m $i --solver $s -t 60
            # perf report --stdio > reports/$(basename $m)-$(basename $i)-$(basename $s).txt
        done
    done
done
