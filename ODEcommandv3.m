close all; clear all;

% initial values: gender, risk group, state of virus
%note rate of infection in women is 4.4 percent, in men 4.0 percent

%must add up to 0.946
fls = 0.904376
fli = 0.041624
flr = 0

%must add up to 0.054
fhs = 0.47708
fhi = 0.006292
fhr = 0

% must add up to 0.857
mls = 0.82272
mli = 0.03428
mlr = 0

%must add up to 0.143
mhs = 0.13728
mhi = .00572
mhr = 0


[tv,Yv]=ode23('funsys',[0 50],[fls;fli;flr;fhs;fhi;fhr;mls;mli;mlr;mhs;mhi;mhr]);
figure(1)
plot(tv,Yv(:,1),'+',tv,Yv(:,2),'x',tv,Yv(:,3),'o')
axis([ 0 50 0 1])
hold
grid
title('Female: Low Risk')
xlabel('Time (years)')
ylabel('Proportion of Population')
legend(' = susceptible',' = infected',' = recovered','Location','northeast')

figure(2)
plot(tv,Yv(:,4),'+',tv,Yv(:,5),'x',tv,Yv(:,6),'o')
axis([ 0 50 0 1])
hold
grid
title('Female: High Risk')
xlabel('Time (years)')
ylabel('Proportion of Population')
legend(' = susceptible',' = infected',' = recovered','Location','northeast')

figure(3)
plot(tv,(Yv(:,7)/0.857),'+',tv,Yv(:,8),'x',tv,Yv(:,9),'o')
axis([ 0 50 0 1])
hold
grid
title('Male: Low Risk')
xlabel('Time (years)')
ylabel('Proportion of Population')
legend(' = susceptible',' = infected',' = recovered','Location','northeast')

figure(4)
plot(tv,(Yv(:,10)/0.143),'+',tv,Yv(:,11),'x',tv,Yv(:,12),'o')
axis([ 0 50 0 1])
hold
grid
title('Male: High Risk')
xlabel('Time (years)')
ylabel('Proportion of Population')
legend(' = susceptible',' = infected',' = recovered','Location','northeast')

figure(5)
plot(tv,Yv(:,2),'+',tv,Yv(:,5),'x')
axis([ 0 50 0 1])
hold
grid
title('Female Infection')
xlabel('Time (years)')
ylabel('Prevalence of Infection')
legend(' = low risk',' = high risk','Location','northeast')

figure(6)
plot(tv,Yv(:,8),'+',tv,Yv(:,11),'x')
axis([ 0 50 0 1])
hold
grid
title('Male Infection')
xlabel('Time (years)')
ylabel('Prevalence of Infection')
legend(' = low risk',' = high risk','Location','northeast')