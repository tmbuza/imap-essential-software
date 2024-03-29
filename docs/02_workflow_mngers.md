# Snakemake workflow management system

## Install snakemake
- Snakemake [@Koster2021] software is best installed via the Mamba package manager or Mambaforge. 
- We first need to confirm if conda or mamba are installed and proceed from there.

```bash
mamba install -c bioconda snakemake
```

## Install snakemake minimal
```bash
mamba install -c bioconda snakemake-minimal
```

## Install snakemake wrappers
```bash
mamba install -c bioconda snakemake-wrapper-utils
```

## Install SnakeDeploy
- Snakedeploy [@Snakedeploy2023] deploys a snakemake pipeline from version control like GitHub.

```bash
mamba install -c bioconda snakedeploy
```

## Installing using `environment.yml`
```bash
name: snakemake
channels:
    - bioconda
dependencies:
    - snakemake =7.19.1
    - snakemake-minimal =7.19.1
    - snakedeploy =0.8.6
    - snakemake-wrapper-utils =0.5.0
```

```bash
conda activate base
mamba env create --name snakemake --file environment.yaml
```
