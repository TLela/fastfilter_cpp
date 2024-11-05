#!/bin/sh
# run the benchmark multiple times with all important algorithms
# for algorithm ids and other parameters, see
# bulk-insert-and-query.cc
#
# rnd: random number generators to use
for rnd in `seq -1 -1`; do
  # m: number of entries (in millions)
  for m in `seq 10 10`; do
    # test: test id
    for test in `seq 1 4`; do
      # alg: algorithms to test
      for alg in 2 12 117 119; do
        now=$(date +"%T");
        echo ${test} ${now} alg ${alg} size ${m} ${rnd};
        sleep 10;
        ./bulk-insert-and-query.exe ${m}0000 ${alg} ${rnd};
      done;
    done;
  done;
done > benchmark-results.txt 2>&1
