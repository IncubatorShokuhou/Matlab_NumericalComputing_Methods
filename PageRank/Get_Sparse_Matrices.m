function [sparse_data, sparse_average, sparse_diagonal] = Get_Sparse_Matrices()
% GET_SPARSE_MATRIX
%
% Create some sparse matrices.
%
% Param NULL, using soc_Epinions1.txt under current folder.
%
% Dataset reference (https://snap.stanford.edu/data/soc-Epinions1.html)
%
% Return sparse_data: transefer the relation in txt to a sparse matrix
% Return sparse_vector: e = [1; 1; 1 ... 1; 1];
% Return sparse_average: e'/n;
% Return sparse_diagonal: diagonal matrix to weight the sparse_data;
%
% Created by Nino on 2018/5/19. Copyright ? Nino 2018.
%


% read from soc_Epinions1.txt under current folder
%temp = importdata('test.txt');
temp = importdata('soc-Epinions1.txt');

% node normalization
[m,n] = size(temp);
temp(:, :) = temp(:, :) + 1;

% get in&out vector
departure = temp(:, 1);
destination = temp(:, 2);

% create sparse_data
n = max(max(temp));
sparse_data = sparse(departure, destination, 1, n, n);


% create sparse_vector
sparse_vector = sparse(n, 1);
sparse_vector(:) = 1;


% create sparse_average
sparse_average = sparse_vector'/n;


% create sparse_diagonal
x = 1./sum(sparse_data,2);
sparse_diagonal = spdiags(x, 0, n, n);

end

