#!/bin/bash

pdb_file="./data/1aml.pdb"

# 1. Clean and process PDB
gmx pdb2gmx -f $pdb_file -o ./data/reference/processed.gro -water spce -ff amber99sb-ildn

# 2. Define simulation box
gmx editconf -f ./data/reference/processed.gro -o ./data/reference/box.gro -c -d 1.0 -bt cubic

# 3. Add solvent
gmx solvate -cp ./data/reference/box.gro -cs ./data/reference/spc216.gro -o ./data/reference/solvated.gro -p ./data/reference/topol.top

# 4. Add ions
gmx grompp -f ./data/input/ions.mdp -c .data/reference/solvated.gro -p .data/reference/topol.top -o .data/reference/ions.tpr
echo "13" | gmx genion -s .data/reference/ions.tpr -o .data/reference/ionized.gro -p .data/reference/topol.top -pname NA -nname CL -neutral
