---
editor:
  markdown:
    wrap: 72
    canonical: true
---

My attempt at the AdvancedR3 course from r-cubed

# AdvancedR3:

This is a project working with some lipidomics data to help walk through
the steps to make reporducable code in R for projects.

This project...

# Brief description of folder and file contents

As project evolves, add brief description of what is inside the data,
doc and R folders.

The following folders contain:

-   `data/`: lipidomics.csv
-   `doc/`: learning.qmd
-   `R/`: functions.R

# Installing project R package dependencies

If dependencies have been managed by using
`usethis::use_package("packagename")` through the `DESCRIPTION` file,
installing dependencies is as easy as opening the `AdvancedR3.Rproj`
file and running this command in the console:

```         
# install.packages("remotes")
remotes::install_deps()
```

You'll need to have remotes installed for this to work.

# Resource

For more information on this folder and file workflow and setup, check
out the [prodigenr](https://rostools.github.io/prodigenr) online
documentation.
