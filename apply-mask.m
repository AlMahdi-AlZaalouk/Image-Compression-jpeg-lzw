%HW5: Write a program (using MatLab) to apply mask logic operation (AND & OR)
%on any Grayscale image, let the mask with size (row=300,columns=220) and its
%position start with (x,y) = (50,70).img = imread('/MATLAB Drive/Images/image2.jpg');

if size(img, 3) == 3
    img = rgb2gray(img);
end

maskHeight = 300;
maskWidth = 220;
xStart = 50;
yStart = 70;

mask = zeros(size(img), 'uint8');

mask(xStart:(xStart+maskHeight-1), yStart:(yStart+maskWidth-1)) = 255;

andMaskedImg = bitand(img, mask);

invertedMask = imcomplement(mask);
orMaskedImg = bitor(img, invertedMask);

figure;
subplot(1,3,1), imshow(img), title('Original');
subplot(1,3,2), imshow(andMaskedImg), title('AND');
subplot(1,3,3), imshow(orMaskedImg), title('OR');
