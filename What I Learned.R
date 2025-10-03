#VARIABLES
#Variables are basically reserved memory spaces which we allocate in memory
#Variables are containers in which we store value values

#Variable Creation
x=120
#here x is my variable which is storing value 120 inside it

#DATATYPES
#Datatypes are basically type of value which variable holds

#1.Numeric
#Real numbers (with or without decimals)
x<-4 #Here 4 will be also treated as double
y<-9.8
print(x)
print(y)
print(typeof(x))
#In R print() takes only 1 argument
#print(x,y) will raise an error

#2.Integer
a<-42L # It will be only treated as an integer
print(a)
print(typeof(a))

#3.Character
#Text or String Data
G<-"S"
F<-"Siddhi"
print(G)
print(F)

#4.Logical/Boolean
#It can be a TRUE or FALSE
cond1=TRUE
cond2=FALSE
print(cond1)
print(cond2)

#5.Complex
#half part is real and half part is imaginary just like complex numbers
z <- 3 + 4i
print(typeof(z))  # "complex"
print(Re(z))       # 3
print(Im(z))      # 4
print(Mod(z))      # Magnitude: sqrt(3^2 + 4^2) = 5
print(Arg(z))     # Angle in radians
print(Conj(z))    # Complex conjugate: 3 - 4i

# Why Use Complex Numbers?
# 1.Signal processing
# 2.Electrical engineering
# 3.Quantum physics
# 4.Fourier transforms
# 5.Mathematical modeling

#6.Factor 
#usually contains categorical values (eg.Male,female,Student or Working Proffesional)

#DATASTRUCTURES IN R
#1.Vectors
#Vector is sequence of elements of same data types
#vector can be a logical,integer,Character,Numeric,Complex
#creation of vectors
?c
v1<- c(1,2,3)  #Numeric vector
v2<- c(4,5,6)  #Numeric Vector

#You can perform direct operations on vectors
c1 <- v1*v2
print(c1)
c2 <- v1+v2
print(c2)

#logical vector
b = c(TRUE,FALSE,TRUE)
