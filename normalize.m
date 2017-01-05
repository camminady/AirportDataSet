function B = normalize(A)
% Given a matrix A we return a Matrix B, such that B is the rowwise
% normalized version of A
B = A./max(1,sum(A,2));