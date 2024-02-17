
# User styled report for GHPages
rule deploy_to_github_pages:
	input:
		rulegraph="dags/rulegraph.svg",
		tree="results/project_tree.txt",
		# smkpng="images/smkreport/screenshot.png",
	output:
		doc="index.html",
	conda:
		"../envs/environment.yml"
	shell:
		"""
		R -e "library(rmarkdown); render('index.Rmd')"
		"""