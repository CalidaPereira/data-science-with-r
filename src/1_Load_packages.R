
packages <- c(
                "here",
                "SnowballC",
                "tidyverse",
                "readxl",
                "hash",
                "stringr",
                "gsubfn",
                "textreg",
                "wordcloud",
                "tidytext",
                "factoextra",
                "tm",
                "SnowballC",
                "tidyverse",
                "wordcloud2",
                "tidytext",
                "widyr",
                "Rtsne",
                "ggplot2",
                "plotly",
                "rbokeh",
                "dbscan",
                "dplyr",
                "tidyverse",
                "mapproj",
                "purrr",
                "tm",
                "cluster",
                "MASS",
                "quanteda",
                "tokenizers",
                "reticulate",
               "data.table",
                "textreg",
                "caret",  
                "topicmodels",
               "rjson",
                "tictoc",
                "readr",
                "LDAvis",
               "servr",
                "reshape2",
                "lattice",
                "zeallot",
               "htmlwidgets",
               "networkD3",
               "textmineR",
                "topicmodels",
                "textmineR",
                "text2vec",
                "circlize",
                "GGally",
                "viridis",
                "hrbrthemes")

verify.packages <- function(pkg) {
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, library, character.only = TRUE)
}

verify.packages(packages)
