library(here)
# usethis::create_project(path = here::here("InProgress/00_AME/isprs-paged") )

usethis::use_git()

usethis::use_description(
  fields = list(
    Title = "Pagedown template for ISPRS publication",
    Description = paste("Pagedown template for ISPRS publication"),
    `Authors@R` = c(
      person("Nicolas", "Roelandt", email = "nicolas.roelandt@univ-eiffel.fr",
             role = c("aut", "cre"), comment = c(ORCID = "0000-0001-9698-4275")),
      person(given = "Uni. Gustave Eiffel", role = "cph")
    )
  ))

usethis::use_rmarkdown_template(
  template_name = "ISPRS paged",
  template_dir = NULL,
  template_description = "Pagedown template for ISPRS publication",
  template_create_dir = FALSE
)

usethis::use_mit_license()
usethis::use_namespace(roxygen = TRUE)
devtools::document()
