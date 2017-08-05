theory Try_
  imports  "~~/src/HOL/Hoare/Separation"
begin

(*

f()

code:

 unsigned int max = 0;

        if(max < 82)
                {
                        max = 82;
                }

        if(max < 43)
                {
                        max = 43;
                }

*)
  
(*

Goal:

prove that the variable max equals 82.

*)  
  
lemma "VARS max::nat
{True}
max:=0;
IF max < 82 THEN max:=82  ELSE SKIP FI;
IF max < 43 THEN max:=43  ELSE SKIP FI
{}"
  


  

(*

g()

code:
        unsigned int max = 0;
        unsigned int a[3] ;

        a[0] = 45;
        a[1] = 36;
        a[2] = 12;

        unsigned int i = 0;

        while(i < 3)
                {
                        if(max < a[i])
                                {
                                        max = a[i];
                                }
                        i = i+1;
                }

*)

(*

Goal:

prove that the variable max is bigger element of array a or equals some element of array a.

*)    
  
lemma "VARS (max::nat) (a::nat list) (i::nat)
{length a = 3}
max:=0;
a[0]:=45;
a[1]:=36;
a[2]:=12;
i:=0;
WHILE i < 3
INV{}
DO 
IF max < (a!i) THEN max:=(a!i) ELSE SKIP FI;
i:=i+1
OD
{}"  
  
  
end
