function [cen,radius] = wlsqSphere(xyz,w)
%WLSQSPHERE Fits a sphere to a weighted xyz point cloud
%	See pdf for least-squares solution
%
%   written by lleonphd
%

[~,nc] = size(xyz);

if nargin < 2
    w = [];
end

if isempty(w)
    w = repmat(ones,1,nc); % each observation is equally weighted
end

if ~isequal(nc,length(w))
    errordlg('mismatch number of weights with number of measurments')
    return
end

W = diag(w);

x = xyz(1,:);
y = xyz(2,:);
z = xyz(3,:);

X = W*[
    -2*x'   -2*y'   -2*z'   ones(nc,1)
    ];

y = W*(-sum(xyz'.^2,2));

B = (X' * X) \ (X' * y); % closed-form solution
% B = lsqr(X,y); % build-in matlab function

cen = B(1:3);

radius = sqrt(sum(cen.^2, 1) - B(4));

end
