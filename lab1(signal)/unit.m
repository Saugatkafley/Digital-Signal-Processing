hold on ;
n = -10:10;
for(n = -10:1:10)
  if(n<0)
    stem(n,0);
  else
    stem(n,1);
    title("Unit step 075bct099")
  end
end
hold off;