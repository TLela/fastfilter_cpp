#!/bin/sh
# run the benchmark multiple times with all important algorithms
# for algorithm ids and other parameters, see
# bulk-insert-and-query.cc
#
# rnd: random number generators to use
for rnd in `seq -1 -1`; do
  # m: number of entries (in millions)
  for m in 1 10 100; do
    # test: test id
    #for test in `seq 1 20`; do
      # alg: algorithms to test
      for alg in 5 21 121 120; do
        sleep 10;
        ./bulk-insert-and-query.exe ${m}000 ${alg} ${rnd};
      done;
    #done;
  done;
done > benchmark-results.txt 2>&1
