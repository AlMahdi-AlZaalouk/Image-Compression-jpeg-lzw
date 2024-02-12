%HW4: Write a program to separate the bits of pixels of any Grayscale image to
%the 8 levels saving they in files (from LSB to MSB)].

v = imread('/MATLAB Drive/Images/image2.jpg');

if size(v, 3) == 3
    img = rgb2gray(v);
else
    img = v;
end

img = double(img);
bit_planes = zeros(size(img, 1), size(img, 2), 8);

for i = 1:8
    bit_planes(:,:,i) = bitget(img, i);
end

for i = 1:8
    filename = sprintf('bit_plane_%d.jpg', i-1);
    imwrite(uint8(bit_planes(:,:,i) * 255), filename);
end
