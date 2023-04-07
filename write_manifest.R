base_path <- Sys.getenv("APP_DIR")
if (dir.exists(base_path)) {
  setwd(base_path)
  renv::init()

  package_renv_ref <- Sys.getenv("PACKAGE_RENV_REF")
  if (package_renv_ref != "") {
    renv::install(package_renv_ref)
  }
  renv::install("rsconnect")
  rsconnect::writeManifest()
}
