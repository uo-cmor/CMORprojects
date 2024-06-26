test_that("use_project_directory works", {
  local_create_project()

  use_project_directory()

  expect_true(all(fs::file_exists(c("raw_data", "raw_data/raw_data"))))
  expect_true(all(fs::file_exists(c("derived_data", "derived_data/derived_data"))))
  expect_true(all(fs::file_exists(c("output", "output/figures", "output/figures/figures"))))
  expect_true(all(fs::file_exists(c(
    "reports", "reports/manuscript.qmd", "reports/appendix.qmd", "reports/references.bib",
    "reports/vancouver.csl", "reports/_setup.qmd",
    "reports/_tables/table-1.qmd", "reports/_figures/figure-1.qmd",
    "reports/_extensions/cmor", "reports/_extensions/cmor-appendix"
  ))))
  expect_true(all(fs::file_exists(c(
    "reports/_extensions/cmor", "reports/_extensions/cmor/_extension.yml",
    "reports/_extensions/cmor/template.typ", "reports/_extensions/cmor/definitions.typ",
    "reports/_extensions/cmor/typst-show.typ", "reports/_extensions/cmor/typst-template.typ",
    "reports/_extensions/cmor/typst-math.lua", "reports/_extensions/cmor/typst-ref.lua"
  ))))
  expect_true(all(fs::file_exists(c(
    "reports/_extensions/cmor-appendix", "reports/_extensions/cmor-appendix/_extension.yml",
    "reports/_extensions/cmor-appendix/template.typ",
    "reports/_extensions/cmor-appendix/definitions.typ",
    "reports/_extensions/cmor-appendix/typst-show.typ",
    "reports/_extensions/cmor-appendix/typst-template.typ",
    "reports/_extensions/cmor-appendix/typst-math.lua",
    "reports/_extensions/cmor-appendix/typst-ref.lua"
  ))))
  expect_true(fs::file_exists("_plan.R"))
  expect_true(fs::file_exists("_targets.R"))
  expect_true(fs::file_exists(".gitignore"))
})
