function y = wmean(x, w, dim)
% weighted mean

    narginchk(2, 3);

    if ~exist('dim', 'var') || isempty(dim)
        dim = find(size(x) ~= 1, 1);
        
        if isempty(dim), 
            dim = 1; 
        end
    end
    
    y = sum(x .* w, dim) ./ sum(w, dim);
    
    