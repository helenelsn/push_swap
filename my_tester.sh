#!/bin/bash

random_seq=`seq 2147483140 2147483647 | shuf | tr '\n' ' '`

echo $random_seq

r=`./push_swap $random_seq | ./checker_linux $random_seq`

if [ "$r" == "OK" ]; then echo "tvb"; else echo "va toucher de l'herbe sale geek"; fi