 function B = normalize(A)
 % Given a matrix A we return a Matrix B, such that B is the rowwise
 % normalized version of A

  
 n = length(A); % A is square
 rowSums = sum(A,2);
 normalizingMatrix = repmat(rowSums,1,n);
 normalizingMatrix(normalizingMatrix == 0 ) = 1; % don't divide by zero;
 B = A ./ normalizingMatrix;

  
 % this only works with v2016b and above:
 % B = A./max(1,sum(A,2));


