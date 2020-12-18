clear all; close all; clc;

wine_data = importdata("wine_dataset_clean.mat");

% Split data
x = wine_data(:,2:end);
y = wine_data(:,1);
x = x';
y = y';
[x, y] = shuffle(x, y);

figure;
plotpat(x, y);

% clusters number
n = 3;

ypred = herarchicalAgglomerativeClustering(x, n);
accuracy = (sum(y == ypred') * 100) / length(y);