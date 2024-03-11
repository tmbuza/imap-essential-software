# Data Science & Visualization Tools
The most powerful tools for analyzing and visualizing microbiome data include:

- R and RStudio
- R-markdown
- Python
- Jupyter notebook

## Installing R Environment 

[R](https://www.r-project.org/) is open-source software designed for statistical computing, data analysis, and graphics[3]. You can install the R application on your personal computer to work with the R programming language. Follow these steps to download and install R:

1. Visit [https://www.r-project.org/](https://www.r-project.org/).
2. On the left side, under 'Download,' click on CRAN to access the mirrors. CRAN (Comprehensive R Archive Network) is mirrored on nearly 100 registered servers across almost 50 regions worldwide. Check the [CRAN mirror status](https://cloud.r-project.org/).
   - Choose a mirror close to your location; R will automatically connect to that server for downloading the package files.
3. Select a compatible platform to download precompiled binary distributions of the base system, which also includes contributed packages.

<br>

## Installing RStudio Environment

**RStudio** is a free program that functions as an IDE (Integrated Development Environment), seamlessly integrating with R to implement a wide range of analytical functionalities [@RStudioTeam2021]. For effective analysis, it's essential to install R before proceeding with the installation of RStudio. We will extensively utilize the RStudio IDE, which provides a user-friendly interface. Specifically, we are interested in **RStudio Desktop**, an open-source desktop application. Follow these steps to install it:

1. Visit [RStudio](https://rstudio.com/products/rstudio/).
2. Click on the [RStudio Desktop](https://rstudio.com/products/rstudio/#rstudio-desktop) box to access the open-source edition.
3. Choose your preferred [license](https://rstudio.com/products/rstudio/download/), whether it's open source or commercial.
4. Select the [installer](https://rstudio.com/products/rstudio/download/#download) that is compatible with your operating system.

<br>


![Screen shot of RStudio User Interface](images/RStudioIDE.png)

<br>

## Installing Python

Python can be installed using various methods, with some of the most popular approaches being:

1. **Direct Downloads:** Obtain Python directly from the [official Python website](https://www.python.org/downloads/) by downloading the installer for your operating system.

2. **Environment and Package Management Systems:** Utilize tools like conda to manage Python environments and install packages. For instance, you can use the following command with conda:

```bash
conda config --add channels conda-forge

conda config --set channel_priority strict

conda install python=3.10
```

## Installing using `environment.yml`

```bash
name: python
channels:
    - conda-forge
dependencies:
    - python
    - python-abi
```

```bash
conda activate base
mamba env create --name python --file environment.yaml
```
