function feat = getmswtfeat(x,winsize,wininc,SF)

if nargin < 4
    if nargin < 3
        if nargin < 2
            winsize = size(x,1);
        end
        wininc = winsize;
    end
    error('Please provide the sampling frequency of this signal')
end

datawin = ones(winsize,1);
datasize = size(x,1);
Nsignals = size(x,2);

%% Chop the signal according to a sliding window approach
numwin = floor((datasize - winsize)/wininc)+1;
% allocate memory
feat = zeros(winsize,numwin);
st = 1;
en = winsize;
for i = 1:numwin
    curwin = x(st:en,:).*repmat(datawin,1,Nsignals);
    feat(1:winsize,i) = detrend(curwin);
    
    st = st + wininc;
    en = en + wininc;
end
J=10;% Number of decomposition
dec = mdwtdec('col',feat,J,'db1');

if isequal(dec.dirDec,'c')
    dim = 1;
end
[cfs,longs] = wdec2cl(dec,'all');
level = length(longs)-2;

if dim==1
    cfs = cfs';
    longs = longs';
end
numOfSIGs  = size(cfs,1);
num_CFS_TOT = size(cfs,2);
absCFS   = abs(cfs);
absCFS0   = (cfs);
cfs_POW2 = absCFS.^2;
Energy  = sum(cfs_POW2,2);
percentENER = 0*ones(size(cfs_POW2));
notZER = (Energy>0);
percentENER(notZER,:) = 100*cfs_POW2(notZER,:)./Energy(notZER,ones(1,num_CFS_TOT));

tab_ENER = zeros(numOfSIGs,level+1);
tab_VAR = zeros(numOfSIGs,level+1);
% tab_STD = zeros(numOfSIGs,level+1);
tab_WL = zeros(numOfSIGs,level+1);
tab_entropy = zeros(numOfSIGs,level+1);

%% Feature extraction
st = 1;
for k=1:level+1
    nbCFS = longs(k);
    en  = st+nbCFS-1;
    tab_ENER(:,k) = mean(percentENER(:,st:en),2);%.*sum(abs(diff(absCFS0(:,st:en)')'),2); % energy per waveform length
    tab_VAR(:,k) = var(percentENER(:,st:en),0,2); % variance of coefficients
    %     tab_STD(:,k) = std(percentENER(:,st:en),[],2); % standard deviation of coefficients
    tab_WL(:,k) = sum(abs(diff(percentENER(:,st:en)').^2))'; % waveform length
    percentENER(:,st:en) = percentENER(:,st:en)./repmat(sum(percentENER(:,st:en),2),1,size(percentENER(:,st:en),2));
    tab_entropy(:,k) = -sum(percentENER(:,st:en).*log(percentENER(:,st:en)),2)./size(percentENER(:,st:en),2);
    st = en + 1;
end
feat =([log1p([tab_ENER tab_VAR  tab_WL]) tab_entropy]);
