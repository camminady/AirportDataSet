function visData
clear all
close all
clc
load FlightData.mat
whos

figure
subplot(2,2,1)
imagesc(log(Traffic));
title('Log(Traffic)');
subplot(2,2,2)
imagesc((Traffic));
title('Traffic');
subplot(2,2,3)
imagesc(log(Distance));
title('Log(Distance)');
subplot(2,2,4)
imagesc(Distance);
title('Distance');

N = 50;
figure
geoshow('landareas.shp', 'FaceColor', [0.5 1.0 0.5]);
hold on
geoshow(Latitude(1:N),Longitude(1:N),'DisplayType','Point')
G = digraph( Traffic(1:N,1:N));
LWidths = G.Edges.Weight/mean(G.Edges.Weight);
plot(G,'XData',Longitude(1:N),'YData',Latitude(1:N),'LineWidth',LWidths,'NodeLabel',Names(1:N))


end