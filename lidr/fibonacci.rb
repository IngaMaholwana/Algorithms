#first method will use iteration to take a given number and create the fibo sequence of that number long
def iterfibs(n)
  fibo = [0, 1] # start the first index 0 and the 2nd 1  
  i = 2 # start workin from the second index beceuse already set on the first
  while i < n #run as long less than n
    fibo.push(fibo[i - 1] + fibo[i - 2]) #adds the last (the newest result) number and the second last (to the previos result before it) together
    i += 1
  end
  fibo
end

# p iterfibs(9)
# now it will be recursive
def fibs_rec(n)
  if n == 1
    return [0] #because its starts at 0
  elsif n == 2
    return [0, 1] #because the first two Fibonacci numbers are 0 and 1
  else
    fibo = fibs_rec(n - 1) #keeps reducing until it reaches 1 of the base cases 
    fibo.push(fibo[-1] + fibo[-2])#last element in array second last element then pushed in array
  end
end

# p fibs_rec(8)
