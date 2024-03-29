# Environment Management System

## Install conda
Conda is a package manager obtained via Miniconda or Anaconda.

- For a complete installation guide, click [here](https://conda.io/projects/conda/en/latest/user-guide/install/index.html).
- For documentation, click [here](https://docs.conda.io/en/latest/).
- Miniconda: https://docs.conda.io/en/latest/miniconda.html
- Anaconda: https://docs.anaconda.com/
- Getting started with Conda: Click [here](https://docs.conda.io/projects/conda/en/latest/user-guide/getting-started.html).


## Install mamba
> Mamba is a CLI tool to manage conda environments

- Mamba can be obtained via Mambaforge.
- For a complete installation guide, click [here](https://mamba.readthedocs.io/en/latest/installation.html).
- For documentation, click [here](https://mamba.readthedocs.io/en/latest/user_guide/mamba.html).


### Demo installing Miniconda3 for Mac OS
```bash
curl -L  https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -o Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
```

### Demo installing Mambaforge for Mac OS
```bash
curl -L https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-MacOSX-x86_64.sh -o Mambaforge-MacOSX-x86_64.sh
bash Mambaforge-MacOSX-x86_64.sh
```

## Setting up common channels
We will be using lots of bioinformatics and analysis tools. 

> - Note that most bioinformatics tools are via the `bioconda` channel. 
> - Most analysis tools are installed via the `conda-forge` channel.
> - Some metagenomics analysis tools described in this guide are installed via the `biobakery` channel. 

```bash
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --add channels biobakery
conda config --add channels qiime2
conda config --add channels "qiime2/label/r2023.2"
conda config --set auto_activate_base False
```

## Creating a conda environment

### Using conda
```bash
conda activate base
conda create --name imap
conda create --name imap python==10
conda create --name imap python==10 pandas numpy seaborn
```
> Note: Each command line creates the environment `imap` in the base environment, so choose a line that suits you best.

### Using mamba
```bash
mamba create -c bioconda --name imap
mamba create --name imap python==10
mamba create --name imap python==10 pandas numpy seaborn
```

## Activating and deactivating the environment
```bash
conda activate imap

conda deactivate imap
```

> - After setting up the channels and creating an environment, we can install more software. 
> - For installation, we will use `Mamba package manager` instead of `Conda package manager` because it is much faster. 

## Updating conda
```bash
conda update conda

mamba update conda
```

## Checking the conda version
```bash
conda -V

mamba -V
```

## Reproducing existing environment
Requires an environment `spec` file or a `yml` file

### Creating an env spec file
```bash
conda list --explicit > env_spec_file.txt
```

### Creating a new environment from a spec file
```bash
conda create --name new_env --file env_spec_file.txt
```

### Updating existing environment
To update the packages in the existing environment e.g. named my_environment, you can run:
```bash
conda env update -n my_environment -f environment.yml
```

### Installing packages from a spec file
```bash
conda install --name existing_env --file env_spec_file.txt
```

### Creating new env from a YAML file
- First, create the YAML or YML file:
  - `environment.yml`
  - `environment.yaml`
  - Here, we save the environment.yml file in the `workflow/envs` folder, and it is configured to contain the following:

```bash
name: imap
channels:
  - conda-forge
  - bioconda
  - defaults
  - r
dependencies:
  - snakemake =7.19.1
  - snakemake-minimal =7.19.1
  - snakemake-wrapper-utils =0.5.0
  - snakedeploy =0.8.6
  - python =3.8.0
  - r-base =4.1.3
  - r-tidyverse =1.3.2 
  - r-bookdown =0.32
  - r-htmltools =0.5.4 
  - r-htmlwidgets =1.6.1
  - r-leaflet =2.1.1
  - r-leaflet.providers =1.9.0 
  - r-rmarkdown =2.20
  - r-schtools =0.4.0
  - graphviz =6.0.1
  - qiime2 =2023.2.0
  - mothur =1.48.0
  - vsearch =2.22.1
  - q2-vsearch =2023.2.0
```

```bash
conda activate base
mamba env create --name imap --file environment.yaml
```

## Checking available environments
If everything goes smoothly, you should see the newly created environment. It will be ready to be activated. Great!
```bash
conda env list

conda info --envs

mamba env list

mamba info --envs
```

```bash
conda activate imap
```

## Removing an environment
> Must deactivate the environment before removing it.

```bash
conda env list
```
<img src="images/conda_list.png">

```bash
conda deactivate

conda env remove --name imap

conda remove --name imap --all

conda env list
```

## Miscellaneous queries with `repoquery`

### Search all package version
```bash
 mamba repoquery search snakemake --channel bioconda 

 mamba repoquery search python --channel conda-forge 
```

### List package dependencies
```bash
mamba repoquery depends snakemake --channel bioconda

mamba repoquery depends python --channel conda-forge
```

### List which packages depend on
```bash
mamba repoquery whoneeds snakemake --channel bioconda

mamba repoquery whoneeds python --channel conda-forge
```
