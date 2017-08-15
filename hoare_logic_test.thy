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
{P}
x:=7
{Q∧x=7}"
  apply vcg
  apply auto
    sorry
    
    
    
    
lemma "VARS x
{P}
SKIP;SKIP
{Q}"
  apply vcg
    sorry
    
    
    
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
