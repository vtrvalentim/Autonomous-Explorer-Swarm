function [curPos, route, dest, explore_map] = update_position(curPos, route, dest, explore_map, MAPPED)
% Write this function so that:
% 1) update curPos 1 step closer to the destination using route
% 2) mark the new location of the bot as MAPPED
% 3) if the new location of the bot is at the destination, set destination
%    to be empty, i.e. dest = []
% 4) update the route by removing the location that the bot was just
%    updated to e.g. if route was inputted as an Nx2 matrix, it should
%    output as a (N-1)x2 matrix.

% The lines below are not part of the solution and are only written here
% so that runMe.m can actually run without having written the functions yet
%curPos = curPos + randi([-1 1],[1 2]);

%curPos: 1x2 matrix containing the location of the bot

%1
curPos = route(1,:); 

%2
explore_map(curPos(1,1),curPos(1,2)) = MAPPED;

%3
if curPos == dest
    dest=[];
end

%4
[loop, dummy] = size(route);
i=1;
while i<loop
route(i,1)=route(i+1,1);
route(i,2)=route(i+1,2);
i=i+1;
end

end

