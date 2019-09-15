function  [P1, P2]  =  projectionFilters(M, alpha, tau)
%
% projects the signal onto the two 'matched' approximtion spaces.
% note that M must be odd.
%
shift = 1/2;
h     = 1/(M - 1);
mid   = (M + 1)/2;

% symmetric frequency (center at the origin)
nu    = zeros(1, M);
for k = 1 : (M-1)/2
    nu(1, mid+k) =  k * h;
    nu(1, mid-k) = -k * h;
end
w = sqrt(-1)*(2*pi*nu);

p1  = 0.5*(alpha + 1) + tau;
q1  = 0.5*(alpha + 1) - tau;
p2  = 0.5*(alpha + 1) + tau + shift;
q2  = 0.5*(alpha + 1) - tau - shift;

P1 = zeros(1, M);
P2 = zeros(1, M);
P1(mid) = 1;
P2(mid) = 1;

% sample the continuous filter (defined on the real line)
for k = 1 : M
    if k == mid
        continue;
    else
        temp     = (1 - exp(-w(k)))/w(k);
        tempConj = conj(temp);
        P1(k) = temp^p1 * tempConj^q1;
        P2(k) = temp^p2 * tempConj^q2;
    end
end

% move the center frequency to one end (Matlab convention)
P1 = conj( ifftshift(P1) );
P2 = conj( ifftshift(P2) );


