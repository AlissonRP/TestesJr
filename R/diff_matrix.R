A = matrix(c(1,2,3,2,4,5,0,0,1), ncol =3, byrow = T)
A = matrix(c(1, 2, 3, 2,
             4, 5, 0, 0,
             1, 1, 2, 3,
             2, 3, 8, 2), ncol = 4, byrow = T)
diff_matrix = function(A){
diags = diagp = 0
for (i in 1:ncol(A)){
  diags = A[i, ncol(A)+ 1 -i] + diags
  diagp = A[i,i] + diagp
}
dif = diags - diagp
if (dif < 0){
  -dif
} else {
  dif
}
}
