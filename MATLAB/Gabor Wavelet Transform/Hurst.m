%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%Hurst Exponent Code
function [ logRegion,logRS, coeffs ]=Hurst(data)

%logRegion is a vector of log_2 of the region sizes
%logRS is a vector of the log_2 of expected rescaled range for each partition size
%Coeffs returns the estimate for the linear fit (first component is intercept, second component is the Hurst component)

%%%%%%%%%%%%%%Seup the region sizes%%%%%%%%%%%%%%%%%%%%%%%%

n=log2(length(data)/512)+1 ; %Number of partitions of the data with sizes n,n/2,n/4....with a minimum partition of 8 as advised online
logN=(0:n-1); %Automatically rounds down the number of partitions
N=2.^(logN);%The interval sizes

logRS=zeros(1,length(N));
logRegion=zeros(1,length(N));

for i=1:length(N)
    
    intsize=floor(length(data)/N(i)); %Partition size for each of the N(i) partitions
    logRegion(i)=log2(intsize);%Store log of region size
    Partition=reshape(data(1:N(i)*intsize),intsize,N(i))'; %Matrix with a row for each partition
    %Partitions are done by slicing data in the order they appear, not
    %randomly. See http://www.bearcave.com/misl/misl_tech/wavelets/hurst/index.html#EstimatingHurstWithRs

    Mean=mean(Partition,2); %Mean of each partition
    Partition = Partition - Mean*ones(1,intsize); %Subtract the mean of each partition from the partition
    CumDeviation = cumsum(Partition,2); %Cumulative deviation for each partition at each point in the 'path'
    Max=max(CumDeviation,[],2); %Max Cumulative Deviation for each partition
    Min=min(CumDeviation,[],2); %Min Cumulative Deviation for each partition
    
    Range=Max-Min; %Range for each partition
    SD=std(Partition,[],2); %SD for each partition
    RescaledRange = Range./SD; %Rescaled Range 
    
    %Can potentially divide by 0 ONLY WHEN all values in partition are the
    %same (possible non zero). In this case, ignore such partitions when calculating the mean
    RescaledRange(SD==0)=0;%Set the Rescaled Range to zero rather than 0/0=inf in such case
    
    ExpectedRS = mean(RescaledRange); %Mean of the Rescaled range across all partitions
    logRS(i) = log2(ExpectedRS); %Return the log to base 2 of expected R/S to storage vector

end

%Regression for these points. Must have fitlm package. Remove code from
%code if not available, and remove 'coeffs' in returned variables above. 
X=[ones(length(N),1) logRegion'];
lm=fitlm(logRegion',logRS','linear');
disp(lm.Coefficients); %Dispay coefficient estimate and Standard error
coeffs=lm.Coefficients.Estimate;


figure(1);
scatter(logRegion,logRS,'*')
line(logRegion,logRS)
hold on
plot(logRegion,X*coeffs,'r');
legend({'Data','Linear fit'},'Location','NE')
title({'The R/S algorithm with the OLS Regression fit'},'FontName','Times New Roman','FontSize',16);
xlabel('x=log(Region size) ')
ylabel('log( E( Rescaled Range ) )')

hold off

end