A <- array(c(1, 1, 2, 3, 5, 1, 2), dim = c(1, 7))
m <- 1
id <- grep(1, A)

for(i in id) {
  L <- i
  R <- i
  
  while(L - 1 > 0 && A[, L - 1] > m) {
    L = L -1
  }
  
  while(R + 1 <= length(A) && A[, R + 1] > m) {
    R = R + 1
  }
  
  print(c(L, R))
}