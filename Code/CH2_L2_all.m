function results = CH2_L2_all(x, L, par)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
narginchk(1,3)
validateattributes(x, {'logical','numeric'}, {'square','binary'});
x = double(sparse(x));
x = max(x,x');
x(speye(size(x))==1) = 0;
n = size(x,1);  
[i,j] = find(triu(x==0|1));
w = [i,j]; 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initialization
m = size(w,1);
d = full(sum(x,1));
if any(L==[0,2])
    scores_CH2_L2 = zeros(m,1);
end

% adjacency list
A = cell(n,1);
parfor (i = 1:n, par)
    A{i} = find(x(i,:));
end

% main code
parfor (i = 1:m, par)
    u = w(i,1); v = w(i,2);
    if x(u,v)==0
        Au = A{u}; Av = A{v};
    else
        Au = setdiff(A{u},v); Av = setdiff(A{v},u);
    end
    
    % L2
    cn = intersect(Au,Av);
    if any(L==[0,2]) && ~isempty(cn)
        di = full(sum(x(cn,cn),1));
        de = d(cn) - di - 2;
        scores_CH2_L2(i) = sum((1+di)./(1+de));
    end
end

% output scores
    scores = [w scores_CH2_L2];

% turn into "sparse matrix"
results = sparse(scores(:,1), scores(:,2), scores(:,3), max(scores(:,1)), max(scores(:,2)));



