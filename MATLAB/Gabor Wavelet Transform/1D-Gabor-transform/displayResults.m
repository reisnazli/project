function displayResults(f, recon, w)

M = length(f);
J = length(w);

fprintf('Plotting figures.\n');

figure, 
plot(f,'b','linewidth', 1); 
axis([1 M    min(f)   max(f)]); 
title('Original signal', 'fontsize', 20);
xlabel('$n$', 'Interpreter', 'latex', 'fontsize', 18); 
ylabel('$f_0[n]$', 'Interpreter', 'latex', 'fontsize', 18);


figure, 
plot(recon,'b','linewidth', 1), 
axis([1 M    min(f)   max(f)]); 
xlabel('$n$', 'Interpreter', 'latex', 'fontsize', 18); 
ylabel('$f_r[n]$', 'Interpreter', 'latex', 'fontsize', 18);
title('Reconstructed signal', 'fontsize', 18);

err = f - recon ;
figure(3),
plot(err,'r','linewidth', 1); 
axis([1 M    min(err)   max(err)]); 
xlabel('$n$', 'Interpreter', 'latex', 'fontsize', 18); 
ylabel('$f_r[n]$-$f_0[n]$', 'Interpreter', 'latex', 'fontsize', 18);
title('Reconstruction error', 'fontsize', 18);


figure, 
for depth = 1 : J  
    
%subplot(4,J,depth), plot(real(w{depth}), 'r'),
%axis([1 M/2^depth    min(real(w{depth}))   max(real(w{depth}))]), 
%set(gca,'xtick',[]), set(gca,'ytick',[]);
%title(strcat('real-', num2str(depth)), 'fontsize', 10);


%subplot(4,J,J+depth), plot(imag(w{depth}), 'b'),
%axis([1 M/2^depth  min(imag(w{depth}))    max(imag(w{depth}))]),
%set(gca,'xtick',[]), set(gca,'ytick',[]);
%title(strcat('imag-', num2str(depth)), 'fontsize', 10);


%subplot(4,J,2*J+depth), 
plot(abs(w{depth}), 'm'),
axis([1 M/2^depth  -0.1*max(abs(w{depth}))    1.5*max(abs(w{depth}))]),
set(gca,'xtick',[]), set(gca,'ytick',[]);
title(strcat('amp-', num2str(depth)), 'fontsize', 10);


%subplot(4,J,3*J+depth), plot(phase(w{depth}), 'k'),
%axis([1 M/2^depth  min(phase(w{depth}))    max(phase(w{depth}))]), 
%set(gca,'xtick',[]), set(gca,'ytick',[]);
%title(strcat('phase-', num2str(depth)), 'fontsize', 10);

end

