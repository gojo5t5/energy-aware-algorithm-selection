# Should place all models in models/ and all instances in instances/
# Run all experiments for all models, instances and solvers
for m in models/*.dzn; do
    for i in instances/*.dzn; do
        for s in solvers/*; do
            perf record minizinc $m $i --solver $s -t 60
            perf report --stdio > reports/$(basename $m)-$(basename $i)-$(basename $s).txt
        done
    done
done
