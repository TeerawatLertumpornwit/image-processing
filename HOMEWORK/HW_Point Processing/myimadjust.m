function s = myimadjust(img, input_range, output_range)
    % รับค่าช่วง input และ output
    a = input_range(1);
    b = input_range(2);
    c = output_range(1);
    d = output_range(2);
    
    % เตรียมค่าผลลัพธ์
    s = zeros(size(img));
    
    % กรณี r < a
    condition1 = (img >= 0) & (img < a);
    s(condition1) = c * img(condition1) / a;
    
    % กรณี a <= r < b
    condition2 = (img >= a) & (img < b);
    s(condition2) = ((d - c) * (img(condition2) - a) / (b - a)) + c;
    
    % กรณี r >= b
    condition3 =  (img >= b);
    s(condition3) = ((1 - d) * (img(condition3) - b) / (1 - b)) + d;
end

