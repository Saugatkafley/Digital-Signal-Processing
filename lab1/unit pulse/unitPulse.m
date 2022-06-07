hold on ;
n = -10:10;
for(n = -10:1:10)
  if(n=0)
    stem(n,1);
  else
    stem(n,0);
  end
end