function [ranks, i] = PageRank_Sort(ranks)
% PAGERANK ALGORITHM
%
% PageRank Algorithm to rank the given websites.
%
% Param ranks: the PR ranks vector
%
% Dataset reference (https://snap.stanford.edu/data/soc-Epinions1.html)
%
% Return ranks: corresponding to the significance of given website nodes
% Return iter: the times of iteration.
%
% Created by Nino on 2018/5/20. Copyright ? Nino 2018.
%

[ranks, i] = sort(ranks', 'descend');

end