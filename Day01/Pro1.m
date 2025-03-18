>> a = 5

a =

     5

>> a=5;
>> a=5

a =

     5

>> b = 10

b =

    10

>> a + b

ans =

    15

>> a * b

ans =

    50

>> a % b

a =

     5

>> c = a + b

c =

    15

>> d = a * b

d =

    50

>> e = a / b

e =

    0.5000

>> f = a - b

f =

    -5

>> A = [1 2 3]

A =

     1     2     3

>> B = [4;5;6]

B =

     4
     5
     6

>> C = [2 3 4;5 6 7;8 9 10]

C =

     2     3     4
     5     6     7
     8     9    10

//size of the matrix
>> size(C)

ans =

     3     3

//number of elements 
>> numel(C)

ans =

     9

//sum of columns
>> sum(C,1)

ans =

    15    18    21

//Sum of rows
>> sum(C,2)

ans =

     9
    18
    27

>> 

//sum of whole matrix
>> sum(sum(C))

ans =

    54

//Give column wise minimum element
>> min(C)

ans =

     2     3     4

//minimum of the matrix
>> min(min(C))

ans =

     2

//Give column wise maximum element
>> max(C)
ans =

     8     9    10


//maximum of the matrix
>> max(max(C))
ans =

    10

//second number of the matrix

>> C(2)

ans =

     5

//find the number by index
>> C(1,1)  //C(column, row)

ans =

     2

//get all the elements inb the first row
>> C(1,:)

ans =

     2     3     4

//get all the elements inb the first column
>> C(:,1)

ans =

     2
     5
     8

//last element in first row
>> C(1,end)

ans =

     4

//example
>> A = [1 2 3 4;5 6 7 8;9 10 11 12;13 14 15 16]

A =

     1     2     3     4
     5     6     7     8
     9    10    11    12
    13    14    15    16

>> B = [1 2 3 4;5 6 7 8;9 10 11 12;13 14 15 16]

B =

     1     2     3     4
     5     6     7     8
     9    10    11    12
    13    14    15    16

>> A + B

ans =

     2     4     6     8
    10    12    14    16
    18    20    22    24
    26    28    30    32

>> A - B

ans =

     0     0     0     0
     0     0     0     0
     0     0     0     0
     0     0     0     0

>> A * B

ans =

    90   100   110   120
   202   228   254   280
   314   356   398   440
   426   484   542   600


//add 5 to all the elements
>> A + 5

ans =

     6     7     8     9
    10    11    12    13
    14    15    16    17
    18    19    20    21

//element by element multiplication
>> A .* B

ans =

     1     4     9    16
    25    36    49    64
    81   100   121   144
   169   196   225   256

//zero matrix
>> D = zeros(4,3) //(rows, columns)

D =

     0     0     0
     0     0     0
     0     0     0
     0     0     0

//ones matrix
>> E = ones(4,3)

E =

     1     1     1
     1     1     1
     1     1     1
     1     1     1

//Join matrices
>> F = [A B]

F =

     1     2     3     4     1     2     3     4
     5     6     7     8     5     6     7     8
     9    10    11    12     9    10    11    12
    13    14    15    16    13    14    15    16

>> G = [A;B]

G =

     1     2     3     4
     5     6     7     8
     9    10    11    12
    13    14    15    16
     1     2     3     4
     5     6     7     8
     9    10    11    12
    13    14    15    16

//check whether number is positive or negative
//use script
num = 4;
if num > 0
    disp('The Number Is Positive')
else
    disp('The Number Is Negative')
end


//check whether number is odd or even
if mod(num,2) == 0
    disp('The Number Is Even')
else 
    disp('The Number Is Odd')
end


//print from 1 to 5 using while loop
a = 1;
while a <= 5
    disp (a)
    a = a + 1;
end


