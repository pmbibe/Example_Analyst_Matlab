X = xlsread("Student.xlsx")

figure;



[idx,C] = kmeans(X,2);

plot(X(idx==1,1),X(idx==1,2),'b*','MarkerSize',12)
hold on
plot(X(idx==2,1),X(idx==2,2),'r*','MarkerSize',12)
plot(C(:,1),C(:,2),'kx',...
     'MarkerSize',15,'LineWidth',3) 
legend('Group 1','Group 2','Centroids',...
       'Location','NW')
xlabel 'Literature Point'; 
ylabel 'Math Point';
title 'Students';
hold off