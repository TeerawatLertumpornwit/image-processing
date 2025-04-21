clc; clear; close all;

%% 1. โหลดภาพที่ต้องการต่อกัน (ใส่ชื่อไฟล์ภาพของคุณ)
images = {imread('image1.jpg'), imread('image2.jpg'), imread('image3.jpg'), imread('image4.jpg')};
numImages = length(images);

% แปลงเป็นระดับสีเทาเพื่อหาจุดเด่น
grayImages = cell(1, numImages);
for i = 1:numImages
    grayImages{i} = rgb2gray(images{i});
end

%% 2. ตรวจจับจุดเด่นและดึงคุณลักษณะของแต่ละภาพโดยใช้ SURF
keypoints = cell(1, numImages);
features = cell(1, numImages);

for i = 1:numImages
    keypoints{i} = detectSURFFeatures(grayImages{i});
    [features{i}, keypoints{i}] = extractFeatures(grayImages{i}, keypoints{i});
end

%% 3. คำนวณ Homography และปรับภาพให้ตรงกัน
tforms(numImages) = projective2d(eye(3)); % เก็บค่าการแปลง Homography

% คำนวณการแปลงสำหรับแต่ละคู่ของภาพที่ต่อกัน
for i = 2:numImages
    indexPairs = matchFeatures(features{i}, features{i-1}, 'Unique', true);
    matchedPoints1 = keypoints{i}(indexPairs(:,1));
    matchedPoints2 = keypoints{i-1}(indexPairs(:,2));

    % คำนวณ Homography matrix
    tforms(i) = estimateGeometricTransform2D(matchedPoints1, matchedPoints2, 'projective');
    
    % อัปเดตพิกัดให้สัมพันธ์กับภาพแรก
    tforms(i).T = tforms(i-1).T * tforms(i).T;
end

%% 4. คำนวณขนาดของพาโนรามา
imageSizes = cellfun(@size, images, 'UniformOutput', false);
imageSizes = cat(1, imageSizes{:});

% คำนวณขอบเขตของพาโนรามา
[xLimits, yLimits] = deal(zeros(numImages,2));
for i = 1:numImages
    [xLimits(i,:), yLimits(i,:)] = outputLimits(tforms(i), [1 imageSizes(i,2)], [1 imageSizes(i,1)]);
end

xMin = min(xLimits(:));
xMax = max(xLimits(:));
yMin = min(yLimits(:));
yMax = max(yLimits(:));

outputView = imref2d([round(yMax - yMin), round(xMax - xMin)], [xMin xMax], [yMin yMax]);

%% 5. แปลงภาพและรวมเข้าด้วยกัน
panorama = zeros([outputView.ImageSize 3], 'like', images{1});

for i = 1:numImages
    warpedImage = imwarp(images{i}, tforms(i), 'OutputView', outputView);
    panorama = max(panorama, warpedImage);
end

%% 6. แสดงผลลัพธ์
figure;
imshow(panorama);
title('Panoramic Image');
