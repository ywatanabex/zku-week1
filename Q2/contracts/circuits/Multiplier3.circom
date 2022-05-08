pragma circom 2.0.4;

template Multiplier2 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;  
   signal output c;  

   // Constraints.  
   c <== a * b;  
}

template Multiplier3 () {  

   // Declaration of signals.  
   signal input in1;  
   signal input in2;
   signal input in3;
   signal output out;  

   component multiplierA = Multiplier2();
   component multiplierB = Multiplier2();

   // Constraints.  
   multiplierA.a <== in1;
   multiplierA.b <== in2;
   multiplierB.a <== multiplierA.c; 
   multiplierB.b <== in3;
   out <== multiplierB.c; 
}

component main = Multiplier3();