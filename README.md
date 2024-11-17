# Alzheimer's Drug Discovery with HPC

This project leverages **High-Performance Computing (HPC)** to accelerate drug discovery for Alzheimer's disease. By integrating **OpenMP** for parallelization and **MPI** for distributed computing, it harnesses the full computational power of modern architectures to run **GROMACS** simulations efficiently. Additionally, Jupyter notebooks are used for visualization, analysis, and management of results.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## Overview

Alzheimer's is a complex neurodegenerative disease with no definitive cure. By simulating molecular interactions using **GROMACS**, this project aims to identify potential drug candidates by studying protein-ligand interactions at the atomic level. The computational pipeline is optimized for HPC environments to process massive datasets and simulations effectively.

## Features

- **OpenMP Parallelization**: Efficient utilization of multi-threaded CPU cores.
- **MPI Distributed Computing**: Scalability across multiple nodes in an HPC environment.
- **GROMACS Integration**: High-performance molecular dynamics simulations.
- **Jupyter Notebook Support**: Simplifies data analysis and results visualization.
- **Flexible Pipeline**: Easily configurable for different molecular systems and drug candidates.

## Installation

### Prerequisites

1. **HPC Environment**
   - Ensure you have OpenMP and [MPI](https://docs.open-mpi.org/en/v5.0.x/installing-open-mpi/quickstart.html) installed.
2. **GROMACS**
   - Install GROMACS. See the [GROMACS Installation Guide](https://manual.gromacs.org/current/install-guide/index.html).
3. **Python & Jupyter Notebook**
   - Install Python 3.8+ with the required packages:
     ```bash
     pip install -r requirements.txt
     ```

### Clone the Repository

```bash
git clone https://github.com/RestartDK/alzheimer-hpc.git
cd alzheimer-hpc
```

## Usage

1. **Prepare Input Files**:
   - Place your `.gro`, `.top`, and `.mdp` files in the `input/` directory.
2. **Run Simulations**:
   - Use the provided script to setup the protein structure for the simulation
   - Example:
     ```bash
     scripts/prepare_simulation.sh
     ```
3. **Analyze Results**:
   - Use the Jupyter notebooks in the `analysis/` folder for analysis:
     ```bash
     jupyter notebook notebooks/
     ```

## Project Structure

```

alzheimer-hpc/
├── analysis/
│   └── molecular-dynamics.ipynb  # Jupyter notebook for analysis
├── data/
│   ├── input/                # Input files (raw protein structures, MD parameters)
│   │   ├── 1aml.pdb
│   │   ├── em.mdp
│   │   ├── ions.mdp
│   │   ├── md.mdp
│   │   ├── nvt.mdp
│   │   ├── solvated.gro
│   │   └── topol.top
│   ├── reference/            # Reference files for the simulation setup
│       ├── box.gro
│       ├── ions.tpr
│       ├── mdout.mdp
│       ├── posre.itp
│       └── processed.gro
├── scripts/
│   └── prepare_simulation.sh # Script for preprocessing and setting up simulation files
├── .gitignore                # Files to ignore in Git
├── README.md                 # Project documentation
└── requirements.txt          # Python dependencies
```

## Acknowledgments

- [GROMACS](http://www.gromacs.org) for their exceptional molecular dynamics tool.
- OpenMP and MPI communities for providing robust parallelization frameworks.
