diff_matrix <- function(A) {
  diags <- diagp <- 0
  for (i in 1:ncol(A)) {
    diags <- A[i, ncol(A) + 1 - i] + diags
    diagp <- A[i, i] + diagp
  }
  dif <- diags - diagp
  if (dif < 0) {
    -dif
  } else {
    dif
  }
}
