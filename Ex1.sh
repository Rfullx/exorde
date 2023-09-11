#!/bin/bash

wget https://github.com/subspace/subspace/releases/download/gemini-3f-2023-sep-11/subspace-node-ubuntu-x86_64-v2-gemini-3f-2023-sep-11 -O subspace-node;
wget https://github.com/subspace/subspace/releases/download/gemini-3f-2023-sep-11/subspace-farmer-ubuntu-x86_64-v2-gemini-3f-2023-sep-11 -O subspace-farmer;
sudo chmod +x subspace-node;
sudo chmod +x subspace-farmer;
./subspace-node-ubuntu-x86_64-skylake-gemini-3f-2023-sep-05 \
   --chain gemini-3f \
   --execution wasm \
   --blocks-pruning 256 \
   --state-pruning archive \
   --validator \
   --name "NODE___1--SOLO";
./subspace-farmer farm --reward-address st8aUjpUkHcfnwWVbyvTRPL1sNnymfKchsx7wgh2Cm7jENzeR path=/var/subspace, size=850G;



