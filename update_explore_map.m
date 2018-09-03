function explore_map = update_explore_map(dest, route, explore_map, PLANNED, UNMAPPED)
% Write this function so that all the locations specified in route and dest
% are marked as PLANNED only if it was previous UNMAPPED in the explore_map
% variable.

%route  Nx2 matrix containing a sequence of locations the bot takes in order reach the destination. 
%The first row (i.e. route(1,:) contains the next immediate step the box should take.
%the last row (i.e. route(end,:)) contains the same location as dest.

%dest: 1x2 matrix containing the next location the bot is headed towards (e.g. destination)

[loop, dummy] = size(route);

if explore_map(dest(1,1),dest(1,2)) == UNMAPPED
    explore_map(dest(1,1),dest(1,2))= PLANNED;
end

i=1;

while i<=loop
    if explore_map(route(i,1),route(i,2)) == UNMAPPED
        explore_map(route(i,1),route(i,2)) = PLANNED;
    end
    i=i+1;
end


end