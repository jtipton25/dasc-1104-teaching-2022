# make sure all the R packages are the same as on the course development gitHub
# renv::snapshot()
renv::restore()

# if tinytex is needed
library(tinytex)
# tinytex::install_tinytex()

# file to compile all .Rmd files to pdf
library(rmarkdown)
library(pagedown)

# Build the teaching example slides
render(here::here("teaching-part-1.Rmd"))
chrome_print(here::here("teaching-part-1.html"), here::here("teaching-part-1.pdf"))
render(here::here("teaching-part-2.Rmd"))
chrome_print(here::here("teaching-part-2.html"), here::here("teaching-part-2.pdf"))

# Build the lecture slides
render(here::here("lectures", "unit_4_R_09_intro_R_Rmarkdown.Rmd"))
chrome_print(here::here("lectures", "unit_4_R_09_intro_R_Rmarkdown.html"),
             here::here("lectures", "unit_4_R_09_intro_R_Rmarkdown.pdf"))

render(here::here("lectures", "unit_4_R_10_intro_plotting.Rmd"))
chrome_print(here::here("lectures", "unit_4_R_10_intro_plotting.html"),
             here::here("lectures", "unit_4_R_10_intro_plotting.pdf"))

render(here::here("lectures", "unit_4_R_11_File_IO_and_basic_data_wrangling.Rmd"))
chrome_print(here::here("lectures", "unit_4_R_11_File_IO_and_basic_data_wrangling.html"),
             here::here("lectures", "unit_4_R_11_File_IO_and_basic_data_wrangling.pdf"))

render(here::here("lectures", "unit_4_R_12_Data_types_and_objects.Rmd"))
chrome_print(here::here("lectures", "unit_4_R_12_Data_types_and_objects.html"),
             here::here("lectures", "unit_4_R_12_Data_types_and_objects.pdf"))


render(here::here("lectures", "unit_4_R_13_Functional_programming.Rmd"))
chrome_print(here::here("lectures", "unit_4_R_13_Functional_programming.html"),
             here::here("lectures", "unit_4_R_13_Functional_programming.pdf"))

render(here::here("lectures", "unit_4_R_14_Intro_to_modeling.Rmd"))
chrome_print(here::here("lectures", "unit_4_R_14_Intro_to_modeling.html"),
             here::here("lectures", "unit_4_R_14_Intro_to_modeling.pdf"))

# Build the project 

render(here::here("project", "project.Rmd"), output_dir = here::here("project"))

render(here::here("project", "Setting-up-blog.Rmd"))
chrome_print(here::here("project", "Setting-up-blog.html"),
             here::here("project", "Setting-up-blog.pdf"))

# Downloading the Tidy Tuesday data
# render(here::here("project", "data-tutorial", "data-tutorial.Rmd"), output_dir = here::here("project", "data-tutorial"))
# chrome_print(here::here("project", "data-tutorial", "data-tutorial.html"),
#              here::here("project", "data-tutorial", "data-tutorial.pdf"))

