#Problem 1 
#(a)  (2 points) Create a vector with the numbers 4, 1, 1, 4 called x. 
x <- c(4, 1, 1, 4)
#(b) (2 points) Create a second vector called y with the numbers 1, 4. 
y <- c(1, 4)
#(c) (2 points) Compute the difference between x and y and explain the result. Use a comment to write the answer in the code. Comments in R start with #. 
x-y 

#(d) (2 points) Concatenate x and y to a new vector called s. 
s <- c(x, y)
#(e) (2 points) Use the rep function to repeat the whole vector s 10 times. Calculate the length of the resulting vector. 
rep ( s, 10 )
length(rep( s,10 ))
#(f) (2 points) Use the rep function to repeat each element of s 3 times.
rep ( s, each = 3)

#(g) (2 points) Create a sequence with all integers between 7 and 21 using
#i) seq
#ii) the : shortcut. 
seq(7,21,by=1)

7:21	

#(h) (1 point) Compute the length of the sequence using length. 
length(7:21)
