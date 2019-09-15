function [ f , flag] =  exception(f, J)
%
% check and correct for inconsistency.
%
flag   = 1;
[p, q] = size(f);

if p ~= 1 
	fprintf('The input signal must be in the format 1xM!\n');
    flag = 0;
    return;
end

if q ~= 2^round( log(q)/log(2) )
	fprintf('The size of the input signal must be dyadic!\n');
    flag = 0;
	return
end

if q /2^J < 4
    fprintf('Either signal is too short, or the decomposition depth is too large \n!');
    flag = 0;
    return;
end

