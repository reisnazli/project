function  [diff]  =  differ(ww_modu,M,J)
for kk=1:J
    
for i=1:M/2-1
    
diff{kk}=ww_modu{1,i+1}-ww_modu{1,i};

end
end
end

