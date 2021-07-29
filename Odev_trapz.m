clc;
clear ;
clear all;

t=0:4;
denklem=exp(0.4581*t)-1;

trapz(t,exp(0.4581*t)-1)

plot(t,denklem,'-.bo','linewidth',2);         
title('exp(0.4581*t)','fontsize',16);    
xlabel('X ekseni','fontsize',16);       
ylabel('Y ekseni','fontsize',16);      
axis([0 4 0 20]);                   
legend({'exp(0.4581*t) grafiği'},'fontsize',15,'textcolor','black','Location','northwest');  
grid on;                               
                              