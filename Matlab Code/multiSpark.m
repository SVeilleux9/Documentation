highTime      = 1;
singleLow     = 40;
multiLowShort = 2;

numSparks = 5;

single.x = [0 singleLow];
single.y = [0 0];
multi.x  = [0 singleLow];
multi.y  = [0 0];

for i = 1:numSparks
    single.x = [single.x single.x(end) single.x(end)+highTime];
    single.x = [single.x single.x(end) single.x(end)+singleLow];
    
    single.y = [single.y 1 1 0 0];
    
    multi.x = [multi.x multi.x(end) multi.x(end)+highTime];
    multi.x = [multi.x multi.x(end) multi.x(end)+multiLowShort];
    multi.x = [multi.x multi.x(end) multi.x(end)+highTime];
    multi.x = [multi.x multi.x(end) multi.x(end)+singleLow-multiLowShort-highTime];
    
    multi.y = [multi.y 1 1 0 0 1 1 0 0];
end

subplot(2,1,1)
plot(single.x, single.y)
title("Multi-Spark Disabled")
ylabel("Spark Fire")
xlabel("Time")

subplot(2,1,2)
plot(multi.x,  multi.y)
title("Mutli-Spark Enabled")
ylabel("Spark Fire")
xlabel("Time")

