%HW3: Write a program to separate the components (channels) of Color image to
%3 files named as: RED, GREEN, BLUE, then find the Histogram for each component. 

rgb_im = imread('/MATLAB Drive/Images/image2.jpg');

redChannel = rgb_im;
greenChannel = rgb_im;
blueChannel = rgb_im;

redChannel(:,:,2:3) = 0;
greenChannel(:,:,[1,3]) = 0;
blueChannel(:,:,1:2) = 0;
imwrite(redChannel, 'RED.jpg');
imwrite(greenChannel, 'GREEN.jpg');
imwrite(blueChannel, 'BLUE.jpg');

figure;
subplot(3,1,1);
imhist(redChannel(:,:,1));
title('Histogram of Red');

subplot(3,1,2);
imhist(greenChannel(:,:,2));
title('Histogram of Green');

subplot(3,1,3);
imhist(blueChannel(:,:,3));
title('Histogram of Blue');
