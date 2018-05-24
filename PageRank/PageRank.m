function [ranks, iter] = PageRank(alpha)
% PAGERANK ALGORITHM
%
% PageRank Algorithm to rank the given websites.
%
% Param alpha: probability factor alpha that describes how likely a surfer
% gets bored and switches homepage
%
% Dataset reference (https://snap.stanford.edu/data/soc-Epinions1.html)
%
% Return ranks: corresponding to the significance of given website nodes
% Return iter: the times of iteration.
%
% Created by Nino on 2018/5/20. Copyright ? Nino 2018.
%


% weight sparse_data
[sparse_data, sparse_average, sparse_diagonal] = Get_Sparse_Matrices();
n = length(sparse_data);
sparse_data = sparse_diagonal*sparse_data;

% iteration
iter = 0;
ranks = sparse_average;                       
oldrank = sparse(1,n);

% iterate until convergence
while(norm(ranks-oldrank) > 1e-4)
    iter = iter + 1;
    oldrank = ranks;
    c = (1-alpha)/n;
    vector1 = alpha*oldrank*sparse_data;
    vector2 = c*sum(oldrank);
    ranks = vector1 + vector2;                                                                                                                                                                    
end 

[ranks, i] = PageRank_Sort(ranks);

PageRank_Write(ranks, i, n);

end