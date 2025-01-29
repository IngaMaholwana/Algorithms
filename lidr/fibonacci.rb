#first method will use iteration to take a given number and create the fibo sequence of that number long
def iterfibs(n)
  fibo = [0, 1]
  i = 2
  while i < n
    fibo.push(fibo[i - 1] + fibo[i - 2]) 
    i += 1
  end
  fibo
end

p iterfibs(9)