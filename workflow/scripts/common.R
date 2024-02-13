set.seed(110912)

knitr::opts_chunk$set(
  echo = FALSE,
  message = FALSE,
  warning = FALSE,
  cache = FALSE,
  comment = NA,
  fig.path='./figures/',
  fig.show='asis',
  dev = 'png',
  fig.align='center',
  out.width = "70%",
  fig.width = 7,
  fig.asp = 0.7,
  fig.show = "asis"
)


# conda install -n base -c conda-forge mamba
# conda activate base
# mamba create -c conda-forge -c bioconda -n snakemake snakemake
# conda activate snakemake
# snakemake --help