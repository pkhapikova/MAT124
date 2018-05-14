[tv,Yv]=ode23('funsys',[0 50],[.9;0.04;0.006;.1;0.04;0.003;.8;0.05;0.007;.1;0.04;0.003]);
figure(1)
plot(tv,Yv(:,1),'+',tv,Yv(:,2),'x',tv,Yv(:,3),'o')
hold
grid
title('Female: Low Risk')
xlabel('Time (years)')
ylabel('Prevalence of Infection')
legend(' = susceptible',' = infected',' = recovered','Location','northeast')

figure(2)
plot(tv,Yv(:,4),'+',tv,Yv(:,5),'x',tv,Yv(:,6),'o')
hold
grid
title('Female: High Risk')
xlabel('Time (years)')
ylabel('Prevalence of Infection')
legend(' = susceptible',' = infected',' = recovered','Location','northeast')

figure(3)
plot(tv,Yv(:,7),'+',tv,Yv(:,8),'x',tv,Yv(:,9),'o')
hold
grid
title('Male: Low Risk')
xlabel('Time (years)')
ylabel('Prevalence of Infection')
legend(' = susceptible',' = infected',' = recovered','Location','northeast')

figure(4)
plot(tv,Yv(:,10),'+',tv,Yv(:,11),'x',tv,Yv(:,12),'o')
hold
grid
title('Male: High Risk')
xlabel('Time (years)')
ylabel('Prevalence of Infection')
legend(' = susceptible',' = infected',' = recovered','Location','northeast')

figure(5)
plot(tv,Yv(:,2),'+',tv,Yv(:,5),'x')
hold
grid
title('Female Infection')
xlabel('Time (years)')
ylabel('Prevalence of Infection')
legend(' = susceptible',' = infected','Location','northeast')

figure(6)
plot(tv,Yv(:,8),'+',tv,Yv(:,11),'x')
hold
grid
title('Male Infection')
xlabel('Time (years)')
ylabel('Prevalence of Infection')
legend(' = susceptible',' = infected','Location','northeast')