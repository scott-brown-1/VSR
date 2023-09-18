source('./R/constants.R')

##' Setup Theme
##'
##' @description Install and activate VSR rstheme file. Requires \pkg{\link{rstudioapi}} package.
##' @import rstudioapi
##' @export
setup_theme <- function(){
  cat('Installing and activating VSR theme.')
  tryCatch({
    rstudioapi::addTheme(THEME_FILE_PATH, apply = TRUE)
  }, warning = function(w) {
    warning(w)
  }, error = function(e) {
    stop(e)
  }, finally = {
    cat('VSR successfully installed and activated.')
  })
}
