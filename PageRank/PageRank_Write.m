function ans = PageRank_Write(ranks, i, n)
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


% write2file
fid = fopen('Answer.txt','w+');
fprintf(fid, '%6s\t\t\t\t%6s\n\n', 'nodes', 'score');
fprintf(fid, '*****************************\n\n');
for k = 1 : n
    fprintf(fid, '%6d\t\t\t\t%6f\n', full(i(k, 1))-1, full(ranks(k, 1))*10^5);
end
fprintf(fid, '\n\n*****************************\n\n');
fclose(fid);

end