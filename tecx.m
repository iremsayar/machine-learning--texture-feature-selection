
srcFiles = dir('C:\Users\Ýrem SAYAR\Desktop\ml\features\pl\*.jpg');  % the folder in which ur images exists

for i = 1 : length(srcFiles)
   
    filename = strcat('C:\Users\Ýrem SAYAR\Desktop\ml\features\pl\',srcFiles(i).name);
    I = imread(filename);
 
    gray = rgb2gray(I);

    glcm = graycomatrix(gray);
    stats = graycoprops(glcm,'Contrast Correlation Energy Homogeneity');

    Contrast = stats.Contrast;
    Correlation = stats.Correlation;
    Energy = stats.Energy;
    Homogeneity = stats.Homogeneity;

    x = [Contrast Correlation Energy Homogeneity];

    features(i,:) = x;

end