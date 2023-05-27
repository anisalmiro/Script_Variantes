

# Funcao para carregamento de ficheiros tipo XLSX,CSV,XLS

inport <-   function (file, format, setclass, which, ...) 
{
  if (grepl("^http.*://", file)) {
    file <- remote_to_local(file, format = format)
  }
  if ((file != "clipboard") && !file.exists(file)) {
    stop("No such file")
  }
  if (grepl("\\.zip$", file)) {
    if (missing(which)) {
      file <- parse_zip(file)
    }
    else {
      file <- parse_zip(file, which = which)
    }
  }
  else if (grepl("\\.tar", file)) {
    if (missing(which)) {
      which <- 1
    }
    file <- parse_tar(file, which = which)
  }
  if (missing(format)) {
    fmt <- get_ext(file)
    if (fmt %in% c("gz", "gzip")) {
      fmt <- tools::file_ext(tools::file_path_sans_ext(file, 
                                                       compression = FALSE))
      file <- gzfile(file)
    }
    else {
      fmt <- get_type(fmt)
    }
  }
  else {
    fmt <- get_type(format)
  }
  args_list <- list(...)
  class(file) <- c(paste0("rio_", fmt), class(file))
  if (missing(which)) {
    x <- .import(file = file, ...)
  }
  else {
    x <- .import(file = file, which = which, ...)
  }
  if (inherits(file, c("rio_rdata", "rio_rds", "rio_json"))) {
    return(x)
  }
  if (missing(setclass) || is.null(setclass)) {
    if ("data.table" %in% names(args_list) && isTRUE(args_list[["data.table"]])) {
      return(set_class(x, class = "data.table"))
    }
    else {
      return(set_class(x, class = "data.frame"))
    }
  }
  else {
    if ("data.table" %in% names(args_list) && isTRUE(args_list[["data.table"]])) {
      if (setclass != "data.table") {
        warning(sprintf("'data.table = TRUE' argument overruled. Using setclass = '%s'", 
                        setclass))
        return(set_class(x, class = setclass))
      }
      else {
        return(set_class(x, class = "data.table"))
      }
    }
    else {
      return(set_class(x, class = setclass))
    }
  }
}


source("R/script_funcoes/limp_data.R", encoding = "UTF-8")
source("R/script_funcoes/limp_tipo_genoma_nome.R", encoding = "UTF-8")
source("R/script_funcoes/limp_localizacao.R", encoding = "UTF-8")
source("R/script_funcoes/limp_tipo_genoma_ensenciais.R", encoding = "UTF-8")
