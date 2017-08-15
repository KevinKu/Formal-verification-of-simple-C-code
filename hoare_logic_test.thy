theory hoare_logic_test
  imports "~~/src/HOL/Hoare/Separation"
begin
 
  
lemma "VARS x
{P}
SKIP
{P}"  
  apply vcg
    done
  
  
lemma "VARS x
{x=5}
x:=7
{x=5}"
  apply vcg
  apply auto
    sorry
    
    
    
    
lemma "VARS x
{P}
SKIP;SKIP
{P}"
  apply vcg
    done
    
    
    
lemma "VARS x
{P}
IF R THEN SKIP ELSE SKIP FI
{Q}"  
  apply vcg
  sorry
    

    
lemma "VARS x
{P}
WHILE S 
INV{I}
DO
SKIP
OD
{Q}"
  apply vcg
    sorry
  
  
end
