f_scale = load('C:\Users\user\Desktop\Tez\Fitting\SI_scale.txt');

f_027 = load('C:\Users\user\Desktop\Tez\Fitting\SI_shape027.txt');
f_036 = load('C:\Users\user\Desktop\Tez\Fitting\SI_shape036.txt');
f_067 = load('C:\Users\user\Desktop\Tez\Fitting\SI_shape067.txt');
f_073 = load('C:\Users\user\Desktop\Tez\Fitting\SI_shape073.txt');
f_082 = load('C:\Users\user\Desktop\Tez\Fitting\SI_shape082.txt');

%%
fit_036=fit(f_scale,f_036,'fourier2')
%f_063=fit(f_scale,f_063,'poly3','Normalize','on','Robust','Bisquare')
fit_027=fit(f_scale,f_027,'fourier2')
fit_067=fit(f_scale,f_067,'fourier2')
fit_073=fit(f_scale,f_073,'fourier2')
fit_082=fit(f_scale,f_082,'fourier2')


plot(fit_036,'r'); hold on
plot(fit_027,'b'); hold on
plot(fit_067,'g'); hold on
plot(fit_073,'y'); hold on
plot(fit_082,'c'); hold on
xlabel('scale')
ylabel('Smoothness Index')
title('Smoothness Index for Fixed Shape Parameter')
legend('shape 0.36','shape 0.27','shape 0.67','shape 0.73','shape 0.82')

%%
x=linspace(1,10);
y=0.5377-0.01706*cos(x*0.3777)-0.01729*sin(x*0.3777)-0.001243*cos(2*x*0.3777)-0.008512*sin(2*x*0.3777);
plot(x,y,'r')
indexmin=find(min(y)==y);
xmin=x(indexmin);
ymin=y(indexmin);
title('Minimum Smoothness Index')

strmin=['minimum SI= ',num2str(ymin)];
text(xmin,ymin,strmin,'HorizontalAlignment','right');

strmin=[',minimum Scale=',num2str(xmin)];
text(xmin,ymin,strmin,'HorizontalAlignment','left');
