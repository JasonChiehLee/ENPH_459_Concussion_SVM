function [featureMatrix] = extractFeatures(eegMat)
%EXTRACT_FEATURES Summary of this function goes here
%   Detailed explanation goes here

eegStruct = load(eegMat);
field = fieldnames(eegStruct);
fieldName = field{1};
eegMatrix = eegStruct.(fieldName);

[rows, cols] = size(eegMatrix);
featureMatrix = zeros(30,cols);

% Power Spectral Analysis


% Wavelet Decomposition Analysis


% Shannon Entropy Analysis
shannonEntropyMatrix = getShannonEntropy(eegMatrix);

featureMatrix(30,:) = shannonEntropyMatrix;
end

