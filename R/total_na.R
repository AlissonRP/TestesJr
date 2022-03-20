total_na = function(...){
  x = list(...)
  s = 0
  for (i in 1:length(x)){
    s = s + sum(is.na(x[[i]]))
  }
  return(s)
}
