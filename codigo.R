check_status <- function(link) {
  if (is.na(link)) return(NA)
  #Sys.sleep(2)  # Pausa para evitar ser baneados
  result <- tryCatch({
    head_response <- HEAD(link)
    status_code(head_response)
  }, error = function(e) {
    return(NA)  # Error al consultar la URL
  })
  return(result)
}

check_status("https://commons.wikimedia.org/wiki/Main_Page")
