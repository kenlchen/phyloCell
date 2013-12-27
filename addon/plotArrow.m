function plotArrow(x,y,LineWidth,Color,arrowSize)


plot(x,y,'Color',Color,'LineWidth',LineWidth); hold on;

for i=1:length(x)-1
    
   xc= (x(i+1)+x(i))/2;
   yc= (y(i+1)+y(i))/2;
   
   xv=(x(i+1)-x(i));
   yv=(y(i+1)-y(i));
   
   xv2=xv./sqrt(xv.^2+yv.^2);
   yv2=yv./sqrt(xv.^2+yv.^2);
   
   xb=-yv2;
   yb= xv2;
   
   x1=xc+3*arrowSize*xv2;
   y1=yc+3*arrowSize*yv2;
   
   x2=xc+arrowSize*xb;
   y2=yc+arrowSize*yb;
   
   x3=xc-arrowSize*xb;
   y3=yc-arrowSize*yb;
 
   x4=xc+1*arrowSize*xv2;
   y4=yc+1*arrowSize*yv2;
   
   patch([x1 x2 x4 x3],[y1 y2 y4 y3],Color,'FaceColor',Color,'EdgeColor','none');
   
   %plot([x1],[y1],'Color','g','Marker','o');
end


%axis equal
% use patch function !!!!


%axis equal square
%line2arrow(h);

%nor=( (x(2:end) - x(1:end-1)).^2 + (y(2:end) - y(1:end-1)).^2 );


%quiver(0.5*(x(1:end-1)+x(2:end)),  0.5*(y(1:end-1)+y(2:end)), (x(2:end) - x(1:end-1))./nor, (y(2:end) - y(1:end-1))./nor,1,'Color',Color,'LineWidth',LineWidth)