function [ ] = analyze( )

load FlightData.mat;


N = length(Latitude);
M = 200;
TrafficN = normalize(Traffic);
People = zeros(N,1);
People(1,1) = M;
T = 100;
for t=1:T
    t
    % Move according to probability
    
    figure(1)
    hold off
    for i=1:N
        plot(Longitude(i),Latitude(i),'ro','MarkerSize',max(eps,People(i)));
        hold on
    end
    drawnow
    People = TrafficN*People;
    
end

end

