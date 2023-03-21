function [y] = filtro(x,A,B)
%x: the column vector input signal
%A,B: column vectors of coefficients
%y: the output column vector
N=length(A);
M=length(B);
P=max([N,M]);
R=length(x);

y=zeros(size(x));
for I=P+1:length(x)
    y(I)=B'*x(I:-1:I-M+1)+A'*y(I-1:-1:I-N);
end
end

