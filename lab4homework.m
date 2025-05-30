% Read the image
img = imread('brain.jpg');
% Convert to grayscale if needed
if ndims(img) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end
% Apply filtering to reduce noise
img_filt = imgaussfilt(img_gray, 2);
% Compute the gradient magnitude
gmag = imgradient(img_filt);
% Compute foreground markers using morphological operations
se = strel('disk', 3);
opened = imopen(img_filt, se);
reconstructed = imreconstruct(imerode(img_filt, se), img_filt);
fgm = imregionalmax(reconstructed);

% Compute background markers
bw = imbinarize(img_filt);
D = bwdist(~bw);
DL = watershed(D);
bgm = DL == 0;
% Modify gradient image so watershed lines are forced at background markers
gmag_mod = imimposemin(gmag, bgm | fgm);
% Apply watershed transform
L = watershed(gmag_mod);
% Visualize results
Lrgb = label2rgb(L);
figure;
subplot(2,2,1), imshow(img), title('Original Image');
subplot(2,2,2), imshow(gmag, []), title('Gradient Magnitude');
subplot(2,2,3), imshow(gmag_mod, []), title('Modified Gradient with Markers');
subplot(2,2,4), imshow(Lrgb), title('Watershed Segmentation Result');
