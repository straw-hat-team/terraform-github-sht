cd $1
terraform-docs markdown table --sort-by-required . >> README.md
