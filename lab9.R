library(microbenchmark)

odd_count =function(x) {
  odd_num = 0
  for(i in 1:length(x)) {
    if(x[i]%%2==1) odd_num  = odd_num+1}
  return(odd_num)
  }



odd =function(x) {
  odd_num = 0 
  
   return(x%%2) 
    
  
  return(odd_num)}
x = seq(1, 100, by = 1)

microbenchmark(odd_count(x),odd(x))



sort_vec = function(x) {
  if (length(x) < 2) return (x)
  for (last in length(x) : 2) {
    for(first in 1 : (last - 1)) {
      if(x[first] > x[first + 1]) {
        temp = x[first]
        x[first] = x[first + 1]
        x[first + 1] = temp
      }
    }
  }

  return(x)
}
sort_vec(c(1,2))
