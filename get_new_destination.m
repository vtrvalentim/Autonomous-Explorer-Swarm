function dest = get_new_destination(curPos, unexplored_areas)
% Write this function so that it will pick the closest unexplored area
% as the new destination dest. We will keep this function simple by
% ignoring any walls that may block our path to the new destination. Here
% we define "closest" using the euclidean distance measure,
% e.g. sqrt((x1-x2)^2 + (y1-y2)^2).

% The lines below are not part of the solution and are only written here
% so that runMe.m can actually run without having written the functions yet
%dest = unexplored_areas(randi(size(unexplored_areas,1)),:);

[loops, dummy] = size(unexplored_areas);

i=1;
p=1;
distM=zeros([loops 1]);

while i<loops
    distM(i,1)= sqrt((curPos(1,1)-unexplored_areas(i,1))^2 + ((curPos(1,2)-unexplored_areas(i,2))^2));
    
    if i==1
        mindis = distM(1,1);
        mark(p,1) = 1;
        p=p+1;
    else
        if mindis > distM(i,1)
            mindis = distM(i,1);
            p=1;
            mark(p,1) = i;
            p=p+1;
        elseif mindis == distM(i,1)
            mark(p,1) = i;
            p=p+1;
        end
        
    end
    
    i=i+1; 
    
end

existencia = exist('mark');

if existencia==1
%if p>1
kek=randi(p-1);


    dest(1,1)=unexplored_areas(mark(kek,1),1);
    dest(1,2)=unexplored_areas(mark(kek,1),2);
else
    dest(1,1)=25;
    dest(1,2)=25;
    
end

end

