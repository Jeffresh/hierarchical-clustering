function c = herarchicalAgglomerativeClustering(x,n)
    x = x';
    distances = pdist(x);
    L = linkage(distances,'average');
    figure;
    dendrogram(L);
    
    title('Hierachical clustering tree'); 
    xlabel('cluster indexes'); 
    ylabel('Distance');
    c = cluster(L,'maxclust',n);

    figure;hold on;
    
    for i=1:max(c)
        color = [rand(), rand(), rand()];
        ind=find( c== i);
        scatter3(x(ind, 1), x(ind, 2), zeros(size(x(ind,1))), 50, ...
            color, 'filled')
    end
    
    hold off;
end