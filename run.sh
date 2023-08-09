# mkdir AddTree-16-32;cp AddTree-16-32.v AddTree-16-32
# mkdir AddTree-4-32;cp AddTree-4-32.v AddTree-4-32
# mkdir AddTree-8-32;cp AddTree-8-32.v AddTree-8-32
# mkdir AddTree-32-32;cp AddTree-32-32.v AddTree-32-32
# mkdir AddTree-64-32;cp AddTree-64-32.v AddTree-64-32
# mkdir PriorityQueue-32-2-32-1-false;cp PriorityQueue-32-2-32-1-false.v PriorityQueue-32-2-32-1-false
# mkdir PriorityQueue-16-2-32-1-false;cp PriorityQueue-16-2-32-1-false.v PriorityQueue-16-2-32-1-false
# mkdir PriorityQueue-128-2-32-1-false;cp PriorityQueue-128-2-32-1-false.v PriorityQueue-128-2-32-1-false
# mkdir PriorityQueue-256-2-32-1-false;cp PriorityQueue-256-2-32-1-false.v PriorityQueue-256-2-32-1-false
# mkdir PriorityQueue-64-2-32-1-false;cp PriorityQueue-64-2-32-1-false.v PriorityQueue-64-2-32-1-false

# rm -rf objects reports results; ln -f designs/src/AddTree-4-32.v designs/src/addtree/AddTree.v;make DESIGN_CONFIG=./designs/asap7/addtree/config.mk;mv logs/asap7/AddTree ./logs/AddTree-4-32
# rm -rf objects reports results; ln -f designs/src/AddTree-8-32.v designs/src/addtree/AddTree.v;make DESIGN_CONFIG=./designs/asap7/addtree/config.mk;mv logs/asap7/AddTree ./logs/AddTree-8-32
# rm -rf objects reports results; ln -f designs/src/AddTree-16-32.v designs/src/addtree/AddTree.v;make DESIGN_CONFIG=./designs/asap7/addtree/config.mk;mv logs/asap7/AddTree ./logs/AddTree-16-32
# rm -rf objects reports results; ln -f designs/src/AddTree-32-32.v designs/src/addtree/AddTree.v;make DESIGN_CONFIG=./designs/asap7/addtree/config.mk;mv logs/asap7/AddTree ./logs/AddTree-32-32
# rm -rf objects reports results; ln -f designs/src/AddTree-64-32.v designs/src/addtree/AddTree.v;make DESIGN_CONFIG=./designs/asap7/addtree/config.mk;mv logs/asap7/AddTree ./logs/AddTree-64-32

# rm -rf objects reports results; ln -f designs/src/PriorityQueue-16-2-32-1-false.v designs/src/priorityqueue/PriorityQueue.v;make DESIGN_CONFIG=./designs/asap7/priorityqueue/config.mk;mv logs/asap7/PriorityQueue ./logs/PriorityQueue-16
# rm -rf objects reports results; ln -f designs/src/PriorityQueue-32-2-32-1-false.v designs/src/priorityqueue/PriorityQueue.v;make DESIGN_CONFIG=./designs/asap7/priorityqueue/config.mk;mv logs/asap7/PriorityQueue ./logs/PriorityQueue-32
# rm -rf objects reports results; ln -f designs/src/PriorityQueue-64-2-32-1-false.v designs/src/priorityqueue/PriorityQueue.v;make DESIGN_CONFIG=./designs/asap7/priorityqueue/config.mk;mv logs/asap7/PriorityQueue ./logs/PriorityQueue-64
# rm -rf objects reports results; ln -f designs/src/PriorityQueue-128-2-32-1-false.v designs/src/priorityqueue/PriorityQueue.v;make DESIGN_CONFIG=./designs/asap7/priorityqueue/config.mk;mv logs/asap7/PriorityQueue ./logs/PriorityQueue-128
# rm -rf objects reports results; ln -f designs/src/PriorityQueue-256-2-32-1-false.v designs/src/priorityqueue/PriorityQueue.v;make DESIGN_CONFIG=./designs/asap7/priorityqueue/config.mk;mv logs/asap7/PriorityQueue ./logs/PriorityQueue-256



#!/bin/bash

files=(
"ReadWriteSmem-2-8.v"
"ReadWriteSmem-2-16.v"
"ReadWriteSmem-2-32.v"
"ReadWriteSmem-4-8.v"
"ReadWriteSmem-4-16.v"
"ReadWriteSmem-4-32.v"
"ReadWriteSmem-8-8.v"
"ReadWriteSmem-8-16.v"
"ReadWriteSmem-8-32.v"
"ReadWriteSmem-16-8.v"
"ReadWriteSmem-16-16.v"
"ReadWriteSmem-16-32.v"
"ReadWriteSmem-32-8.v"
"ReadWriteSmem-32-16.v"
"ReadWriteSmem-32-32.v"
"ReadWriteSmem-64-8.v"
"ReadWriteSmem-64-16.v"
"ReadWriteSmem-64-32.v"
"ReadWriteSmem-128-8.v"
"ReadWriteSmem-128-16.v"
"ReadWriteSmem-128-32.v"
"ReadWriteSmem-256-8.v"
"ReadWriteSmem-256-16.v"
"ReadWriteSmem-256-32.v"
)

for file in "${files[@]}"; do
  rm -rf objects reports results
  ln -f designs/src/$file designs/src/readwritesmem/ReadWriteSmem.v
  make DESIGN_CONFIG=./designs/asap7/readwritesmem/config.mk
  mv logs/asap7/ReadWriteSmem ./logs/$file
done
