
function output = LAT(Sbox)
Output_bits=8;
Input_bits=8;
P=0:(2^Output_bits)-1;
i=0;
while i<2^Input_bits
j=0;
while j<2^Output_bits
    LA_Table(i+1,j+1)=Walsh(P,Sbox,i,j,Input_bits,Output_bits);
    j=j+1;
end
i=i+1;
end
LA1=LA_Table(:);
output1 = LA1/256-0.5;
output=max(output1(2:end));
