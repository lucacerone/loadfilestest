#' @export
not_in_hooks <- readLines(system.file("txt/catullus_5.txt", package = "loadfiletest"))

#' @export
name_clash_not_assigned <- "not_in_hook"

#' @export
name_clash_assigned <- "not_in_hook"

#' @export
name_clash_not_onLoad <- "value 1"

name_clash_not_onLoad <- "value 2"

#' @name in_onLoad_assigned_exported
#' @export
NULL

.onLoad <- function(libname, pkgname) {
  in_onLoad_not_assigned <- readLines(system.file("txt/catullus_51.txt", package = "loadfiletest"))

  in_onLoad_assigned_not_exported <- readLines(system.file("txt/catullus_5.txt", package = "loadfiletest"))
  assign("in_onLoad_assigned_not_exported", in_onLoad_assigned_not_exported, envir = parent.env(environment()))

  in_onLoad_assigned_exported <- readLines(system.file("txt/catullus_5.txt", package = "loadfiletest"))
  assign("in_onLoad_assigned_exported", in_onLoad_assigned_exported, envir = parent.env(environment()))

  name_clash_not_assigned <- "in_hook"

  name_clash_assigned <- "in_hook"
  assign("name_clash_assigned", name_clash_assigned, envir = parent.env(environment()))
}