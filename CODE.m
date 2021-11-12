disp('           University Of Gondar ');
disp('    Faculty of Natural and Computational Science ');
disp('         Department Of Computer Science ');
disp('            Image filtering report ');
disp(' Prepared by: Yemisrach Getinet ');



k=1.00;
s='Y';
start=0;
noise=0;
img2='';
c1=1;
c=1.1;
while k ~= 9 &( s=='Y' | s=='y')
    clc % for clearing the screen
    disp('                WELCOME TO IMAGE FILTERING');
    disp('-----------------Enter the image name and select filter type number given from the list----------------');
    if(start==0 & noise~=1) 
        name=input('Enter the name of the image: ','s'); 
        img = imread(name);
       % img = imresize(img1,[210 210],'nearest');
       img2=img; 
    else  
        if noise~=1 
            disp('Do you want to enter a new image [Y]/[N]?'); 
            ss=input('-->','s'); 
            if ss=='Y' | ss=='y' 
                name=input('Enter the name of the image: ','s'); 
                img1 = imread(name); 
                img2=img; 
            end 
        end 
    end
    
    disp('What type of filter you want?');
                disp('            -----------------------------------------------------------');
                disp('               Average filtering                                    |');
                disp('            |  1.   [3,3] Average filtering                         |');
                disp('            |  2.   [5,5] Average filtering                         |');
                disp('            |  3.   [7,7] Average filtering                         |');
                disp('               Gaussian filtering                                    |');
                disp('            |  4.   [3,3] Gaussian filtering                        |');
                disp('            |  5.   [5,5] Gaussian filtering                        |');
                disp('            |  6.   [7,7] Gaussian filtering                        |');
                disp('               Median filtering                                      |');
                disp('            |  7.   [3,3] Median filtering                          |');
                disp('            |  8.   [5,5] Median filtering                          |');
                disp('            |  9.   [7,7] Median filtering                          |');
                disp('               Adaptive filtering                                    |');
                disp('            |  10.   [3,3] Adaptive filtering                        |');
                disp('            |  11.   [5,5] Adaptive filtering                        |');
                disp('            |  12.   [7,7] Adaptive filtering                        |');
                disp('            |  13. BWAREAOPEN filtering                                |');
                disp('            |  14. Minimum filtering                                   |');
                disp('            |  15. Maximum filtering                                   |');
                disp('            |  16. adjust image intensity value or color map           |');
                disp('               Edge Detection                                        |');
                disp('            |  17. Sobel Edge Detection                        |');
                disp('            |  18. Prewitt Edge Detection                      |');
                disp('            |  19. Roberts Edge Detection                      |');
                disp('            |  20. Canny Edge Detection                        |');
                disp('            |  21. LoG Edge Detection                          |');
                disp('               Hybrid                                                  ');
                disp('            |  22.   Average and Gaussian                           |');
                disp('            |  23.   Average and Median                             |');
                disp('            |  24.   Average and Adaptive                           |');
                disp('            |  25.   Gaussian and Median                            |');
                disp('            |  26.   Gaussian and Adaptive                          |');
                disp('            |  27.   Adaptive and Median                            |');
                disp('            |  28.   Median and imadjust                            |');
                disp('            |  29.   Adaptive and imadjust                          |');
                disp('            |  30.   Gaussian and imadjust                          |');
                disp('            |  31.   Average and imadjust                          |');
                disp('            |  32.   Sobel Edge Detection and Adaptive             |');
                disp('            |  33.   perwitt Edge Detection and Adaptive           |');
                disp('            |  34.   Roberts Edge Detection and Adaptive           |');
                disp('            |  35.   Canny Edge Detection and Adaptive             |');
                disp('            |  36.   LoG Edge Detection and Adaptive               |');

          
                disp('               After coverting the img in to Binary                 ');
                disp('            |  37.   [3,3] Adaptive filtering                       |');
                disp('            |  38.   [5,5] Adaptive filtering                       |');
                disp('            |  39.   [7,7] Adaptive filtering                       |');
                disp('            |  40.   [3,3] Median filtering                         |');
                disp('            |  41.   [5,5] Median filtering                         |');
                disp('            |  42.   [7,7] Median filtering                         |');
                disp('            |  43. Sobel Edge Detection                              |');
                disp('            |  44. Prewitt Edge Detection                             |');
                disp('            |  45. Roberts Edge Detection                             |');
                disp('            |  46. Canny Edge Detection                                |');
                disp('            |  47. LoG Edge Detection                                 |');
                disp('            |  48.   Adaptive and Median                           |');
                disp('            |  49.   Sobel Edge Detection and Adaptive             |');
                disp('            |  50.   perwitt Edge Detection and Adaptive           |');
                disp('            |  51.   Roberts Edge Detection and Adaptive           |');
                disp('            |  52.   Canny Edge Detection and Adaptive             |');
                disp('            |  53.   LoG Edge Detection and Adaptive               |');
  
      
                disp('             After coverting the img in to gray                     ');
                disp('            |  54.   [3,3] Average filtering                          |');
                disp('            |  55.   [5,5] Average filtering                        |');
                disp('            |  56.   [7,7] Average filtering                        |');
                disp('            |  57.   [3,3] Adaptive filtering                       |');
                disp('            |  58.   [5,5] Adaptive filtering                       |');
                disp('            |  59.   [7,7] Adaptive filtering                       |');
                disp('            |  60.   [3,3] Median filtering                         |');
                disp('            |  61.   [5,5] Median filtering                         |');
                disp('            |  62.   [7,7] Median filtering                         |');
                disp('            |  63.    Average and Gaussian                          |');
                disp('            |  64.   Average and Median                            |');
                disp('            |  65.   Average and Adaptive                          |');
                disp('            |  66.   Gaussian and Median                           |');
                disp('            |  67.   Gaussian and Adaptive                         |');
                disp('            |  68.   Adaptive and Median                           |');
                disp('            |  69.   Median and imadjust                           |');
                disp('            |  70.   Adaptive and imadjust                         |');
                disp('            |  71.   Gaussian and imadjust                         |');
                disp('            |  72.   Average and imadjust                          |');
                   
                disp('              Filter images by adding Salt & Pepper noise           ');
                disp('            |  73.   [3,3] Average filtering                        |');
                disp('            |  74.   [5,5] Average filtering                        |');
                disp('            |  75.   [7,7] Average filtering                        |');
                disp('            |  76.   [3,3] Gaussian filtering                       |');
                disp('            |  77.   [5,5] Gaussian filtering                       |');
                disp('            |  78.   [7,7] Gaussian filtering                       |');
                disp('            |  79.   [3,3] Median filtering                         |');
                disp('            |  80.   [5,5] Median filtering                         |');
                disp('            |  81.   [7,7] Median filtering                         |');
                disp('            |  82.  [3,3] Adaptive filtering                       |');
                disp('            |  83.  [5,5] Adaptive filtering                       |');
                disp('            |  84.  [7,7] Adaptive filtering                       |');
                disp('            |  85.   BWAREAOPEN filtering                          |');
                disp('            |  86.   Minimum filtering                             |');
                disp('            |  87.   Maximum filtering                             |');
                disp('            |  88.   adjust image intensity value or color map     |');
                disp('            |  89.   Sobel Edge Detection                          |');
                disp('            |  90.   Prewitt Edge Detection                        |');
                disp('            |  91.   Roberts Edge Detection                        |');
                disp('            |  92.   Canny Edge Detection                          |');
                disp('            |  93.   LoG Edge Detection                            |');
                disp('            |  94.   Average and Gaussian                          |');
                disp('            |  95.   Average and Median                            |');
                disp('            |  96.   Average and Adaptive                          |');
                disp('            |  97.   Gaussian and Median                           |');
                disp('            |  98.   Gaussian and Adaptive                         |');
                disp('            |  99.   Median and Adaptive                            |');
                disp('            |  100.   Median and imadjust                           |');
                disp('            |  101.   Adaptive and imadjust                         |');
                disp('            |  102.   Gaussian and imadjust                         |');
                disp('            |  103.   Average and imadjust                          |');
                disp('            |  104.   Sobel Edge Detection and Adaptive             |');
                disp('            |  105.   perwitt Edge Detection and Adaptive           |');
                disp('            |  106.   Roberts Edge Detection and Adaptive           |');
                disp('            |  107.   Canny Edge Detection and Adaptive             |');
                disp('            |  108.   LoG Edge Detection and Adaptive               |');
    
                disp('               Filter images by adding Speckle noise               ');
                disp('            |  109.   [3,3] Average filtering                        |');
                disp('            |  110.   [5,5] Average filtering                        |');
                disp('            |  111.   [7,7] Average filtering                        |');
                disp('            |  112.   [3,3] Gaussian filtering                       |');
                disp('            |  113.   [5,5] Gaussian filtering                       |');
                disp('            |  114.   [7,7] Gaussian filtering                       |');
                disp('            |  115.   [3,3] Median filtering                         |');
                disp('            |  116.   [5,5] Median filtering                         |');
                disp('            |  117.   [7,7] Median filtering                         |');
                disp('            |  118.   [3,3] Adaptive filtering                      |');
                disp('            |  119.   [5,5] Adaptive filtering                      |');
                disp('            |  120.   [7,7] Adaptive filtering                      |');
                disp('            |  121. BWAREAOPEN filtering                            |');
                disp('            |  122. Minimum filtering                               |');
                disp('            |  123. Maximum filtering                               |');
                disp('            |  124. adjust image intensity value or color map       |');
                disp('            |  125. Sobel Edge Detection                            |');
                disp('            |  126. Prewitt Edge Detection                          |');
                disp('            |  127. Roberts Edge Detection                          |');
                disp('            |  128. Canny Edge Detection                            |');
                disp('            |  129. LoG Edge Detection                              |');
                disp('            |  130.   Average and Gaussian                          |');
                disp('            |  131.   Average and Median                            |');
                disp('            |  132.   Average and Adaptive                          |');
                disp('            |  133.   Gaussian and Median                           |');
                disp('            |  134.   Gaussian and Adaptive                         |');
                disp('            |  135.   Adaptive and Median                           |');
                disp('            |  136.   Median and imadjust                           |');
                disp('            |  137.   Adaptive and imadjust                         |');
                disp('            |  138.   Gaussian and imadjust                         |');
                disp('            |  139.   Average and imadjust                          |');
                disp('            |  140.   Sobel Edge Detection and Adaptive             |');
                disp('            |  141.   perwitt Edge Detection and Adaptive           |');
                disp('            |  142.   Roberts Edge Detection and Adaptive           |');
                disp('            |  143.   Canny Edge Detection and Adaptive             |');
                disp('            |  144.   LoG Edge Detection and Adaptive               |');
          
                disp('              Filter images by adding Gaussian noise               ');
                disp('            |  145.   [3,3] Average filtering                        |');
                disp('            |  146.   [5,5] Average filtering                        |');
                disp('            |  147.   [7,7] Average filtering                        |');
                disp('            |  148.   [3,3] Gaussian filtering                       |');
                disp('            |  149.   [5,5] Gaussian filtering                       |');
                disp('            |  150.   [7,7] Gaussian filtering                       |');
                disp('            |  151.   [3,3] Median filtering                         |');
                disp('            |  152.   [5,5] Median filtering                         |');
                disp('            |  153.   [7,7] Median filtering                         |');
                disp('            |  154.   [3,3] Adaptive filtering                      |');
                disp('            |  155.   [5,5] Adaptive filtering                      |');
                disp('            |  156.   [7,7] Adaptive filtering                      |');
                disp('            |  157. BWAREAOPEN filtering                            |');
                disp('            |  158. Minimum filtering                               |');
                disp('            |  159. Maximum filtering                               |');
                disp('            |  160. adjust image intensity value or color map       |');
                disp('            |  161. Sobel Edge Detection                            |');
                disp('            |  162. Prewitt Edge Detection                          |');
                disp('            |  163. Roberts Edge Detection                          |');
                disp('            |  164. Canny Edge Detection                            |');
                disp('            |  165. LoG Edge Detection                              |');
                disp('            |  166.   Average and Gaussian                          |');
                disp('            |  167.   Average and Median                            |');
                disp('            |  168.   Average and Adaptive                          |');
                disp('            |  169.   Gaussian and Median                           |');
                disp('            |  170.   Gaussian and Adaptive                         |');
                disp('            |  171.   Adaptive and Median                           |');
                disp('            |  172.   Median and imadjust                           |');
                disp('            |  173.   Adaptive and imadjust                         |');
                disp('            |  174.   Gaussian and imadjust                         |');
                disp('            |  175.   Average and imadjust                          |');
                disp('            |  176.   Sobel Edge Detection and Adaptive             |');
                disp('            |  177.   perwitt Edge Detection and Adaptive           |');
                disp('            |  178.   Roberts Edge Detection and Adaptive           |');
                disp('            |  179.   Canny Edge Detection and Adaptive             |');
                disp('            |  180.   LoG Edge Detection and Adaptive               |');
                if noise==0
                disp('               181. Filter images by adding additional noise            ');
        end
                disp('               182. Exit                                                ');
                disp('-----------------------------------------------------------------------');
    k=input('Enter menu number: ');
    switch k
        
    case 1
        disp('[3,3]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        Average=filter2(fspecial('average',[3,3]),img)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(Average), title '[3,3]Average Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 2
        disp('[5,5]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        Average=filter2(fspecial('average',[5,5]),img)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(Average ), title '[5,5]Average Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 3
        disp('[7,7]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        Average=filter2(fspecial('average',[7,7]),img)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(Average ), title '[7,7]Average Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
    case 4
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end

        h=fspecial('gaussian', [3 3]);
        Gaussian=imfilter(img,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(Gaussian), title '[3 3]Gaussian Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
    case 5
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end

        h=fspecial('gaussian', [5 5]);
        Gaussian=imfilter(img,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(Gaussian), title '[5 5]Gaussian Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
     case 6
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end

        h=fspecial('gaussian', [7 7]);
        Gaussian=imfilter(img,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(Gaussian), title '[7 7]Gaussian Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
    case 7
        disp('[3,3]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        median=medfilt2(img,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(median), title '[3 3]median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
     case 8 
         disp('[5,5]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        median=medfilt2(img,[5 5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(median), title '[5 5]median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
     case 9
        disp('[7,7]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        median=medfilt2(img,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(median), title '[7 7]median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
         
    case 10
        disp('[3,3]Adaptive filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        Adaptive= wiener2(img,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(Adaptive), title '[3 3]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 11      
        disp('[5,5]Adaptive filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        Adaptive= wiener2(img,[5 5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(Adaptive), title '[5 5]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 12
            disp('[7,7]Adaptive filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        Adaptive= wiener2(img,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(Adaptive), title '[7 7]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
     case 13
         disp('BWAREAOPEN filtering');
        if noise==1
            img=img2;
            noise=0;
        end

        BW=bwareaopen(img, 40);
        filter2(fspecial('average',3),img)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(BW), title 'BWAREAOPEN filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 14
        disp('Minimum filtering');
        if noise==1
            img=img2;
            noise=0;
        end

        ordfilter=ordfilt2(img,1,ones(3, 3), 'symmetric');
        figure, imshow(img), title 'Original Image';
        figure, imshow(ordfilter), title 'Minimum filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 15
        disp('Maximum filtering');
        if noise==1
            img=img2;
            noise=0;
        end

        ordfilter=ordfilt2(img,3*3,ones(3, 3), 'symmetric');
        figure, imshow(img), title 'Original Image';
        figure, imshow(ordfilter), title 'Maximum filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
    case 16
        disp('imadjust');
        if noise==1
            img=img2;
            noise=0;
        end

        Adjust= imadjust(img,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(Adjust), title 'imageAdjust';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 17
         disp('sobel');
        if noise==1
            img=img2;
            noise=0;
        end
        sobel=edge(img,'sobel');
        figure, imshow(img), title 'Original Image';
        figure, imshow(sobel), title('sobel edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 18
         disp('prewitt');
        if noise==1
            img=img2;
            noise=0;
        end
        prewitt=edge(img,'prewitt');
        figure, imshow(img), title 'Original Image';
        figure, imshow(prewitt), title('perwitt edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 19
          disp('Roberts');
        if noise==1
            img=img2;
            noise=0;
        end
        roberts=edge(img,'roberts');
        figure, imshow(img), title 'Original Image';
        figure, imshow(roberts), title('Roberts edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
     
    case 20
         disp('canny');
        if noise==1
            img=img2;
            noise=0;
        end
        canny=edge(img,'canny');
        figure, imshow(img), title 'Original Image';
        figure, imshow(canny), title('canny edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 21
         disp('LoG');
        if noise==1
            img=img2;
            noise=0;
        end
        LoG=edge(img,'LoG');
        figure, imshow(img), title 'Original Image';
        figure, imshow(LoG), title('LoG edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
          

      case 22
          disp(' Average and Gaussian ');
        if noise==1
            img=img2;
            noise=0;
        end
        Average=filter2(fspecial('average',[3,3]),img)/255;
        h=fspecial('gaussian');
        Gaussian=imfilter(Average,h);
        figure, imshow(img), title 'Original Image'; 
        figure, imshow(Gaussian), title('Average and Gaussian filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');    
        
        
      case 23
        disp(' Average and Median');
        if noise==1
            img=img2;
            noise=0;
        end
        Average=filter2(fspecial('average',[3,3]),img)/255;
        median=medfilt2(Average,[3,3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(median), title('Average and Median filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
            
      case 24
        disp(' Average and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        Average=filter2(fspecial('average',[3,3]),img)/255;
        Adaptive= wiener2(Average,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure,imshow(Adaptive), title('Average and Adaptive filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
     case 25
        disp(' Gaussian and Median ');
        if noise==1
            img=img2;
            noise=0;
        end
        h=fspecial('gaussian');
        Gaussian=imfilter(img,h);        
        median=medfilt2(Gaussian,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure,imshow(median), title('Gaussian and Median filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
     case 26
        disp('Gaussian and Adaptive ');
        if noise==1
            img=img2;
            noise=0;
        end
        h=fspecial('gaussian');
        Gaussian=imfilter(img,h);         
        Adaptive= wiener2(Gaussian,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure,imshow(Adaptive), title('Gaussian and Adaptive filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
    case 27
        disp('Median and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        median=medfilt2(img,[3 3]);
        Adaptive= wiener2(median,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure,imshow(Adaptive), title('Median and Adaptive filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
                       
    case 28
        disp(' Median and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        median=medfilt2(img,[3 3]);
        Adjust= imadjust(median,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure,imshow(Adjust), title('Median and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
     case 29
        disp('Adaptive and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        Adaptive= wiener2(img,[3 3]);
        Adjust= imadjust(Adaptive,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure,imshow(Adjust), title('Adaptive and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 30
        disp('Gaussian and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        t = fspecial('gaussian', [3,3]);
        Gaussian = imfilter(img,t);
        Adjust= imadjust(Gaussian,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure,imshow(Adjust), title('Gaussian and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
   case 31
        disp('Average and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        t = fspecial('average', [3,3]);
        Average = imfilter(img,t);
        Adjust= imadjust(Average,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure,imshow(Adjust), title('Average and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
        
    case 32
         disp('sobel and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        sobel=edge(img,'sobel');
        Adaptive=wiener2(sobel);
        figure, imshow(img), title 'Original Image';
        figure,imshow(sobel), title('sobel edge detection');
        figure,imshow(Adaptive), title('sobel edge detection and Adaptive filter');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 33
         disp('prewitt and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        prewitt=edge(img,'prewitt');
        Adaptive=wiener2(prewitt);
        figure, imshow(img), title 'Original Image';
        figure,imshow(prewitt), title('perwitt edge detection');
        figure,imshow(Adaptive), title('perwitt edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 34
          disp('Roberts and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
         roberts=edge(img,'roberts');
         Adaptive=wiener2(roberts);
         figure, imshow(img), title 'Original Image';
        figure,imshow(roberts), title('Roberts edge detection');
        figure,imshow(Adaptive), title('Roberts edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
     
    case 35
         disp('canny and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        canny=edge(img,'canny');
        Adaptive=wiener2(canny);
        figure, imshow(img), title 'Original Image';
        figure,imshow(canny), title('canny edge detection');
        figure,imshow(Adaptive), title('canny edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 36
         disp('LoG and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
         LoG=edge(img,'LoG');
        Adaptive=wiener2(LoG);
        figure, imshow(img), title 'Original Image';
        figure,imshow(LoG), title('LoG edge detection');
        figure,imshow(Adaptive), title('LoG edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
          
   
   case 37
            disp('[3,3]Adaptive filtering');
              if noise==1
             img=img2;
            noise=0;
        end
        binImg = dither(img);
        Adaptive= wiener2(binImg,[3,3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure, imshow(Adaptive), title '[3,3]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
    
        
                
    case 38
            disp('[5,5]Adaptive filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
        Adaptive= wiener2(binImg,[5,5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure, imshow(Adaptive), title '[5,5]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
    
        
                
    case 39
            disp('[7,7]Adaptive filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
        Adaptive= wiener2(binImg,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure, imshow(Adaptive), title '[7 7]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
         
    case 40
        disp('[3,3]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
        median=medfilt2(binImg,[3,3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure, imshow(median), title '[3 3]Median Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
     case 41
        disp('[5,5]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
        median=medfilt2(binImg,[5,5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure, imshow(median), title '[5,5]Median Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
     case 42
        disp('[7,7]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
        median=medfilt2(binImg,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure, imshow(median), title '[7 7]Median Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
     case 43
         disp('sobel');
        if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
        sobel=edge(binImg,'sobel');
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure,imshow(sobel), title('sobel edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 44
         disp('prewitt');
        if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
        prewitt=edge(binImg,'prewitt');
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure,imshow(prewitt), title('perwitt edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 45
          disp('Roberts');
        if noise==1
            img=img2;
            noise=0;
        end
          binImg = dither(img);
          roberts=edge(binImg,'roberts');       
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure,imshow(roberts), title('Roberts edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
     
    case 46
         disp('canny');
        if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
        canny=edge(binImg,'canny');         
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure,imshow(canny), title('canny edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 47
         disp('LoG');
        if noise==1
            img=img2;
            noise=0;
        end
         binImg = dither(img);
         LoG=edge(binImg,'LoG');
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
         figure,imshow(LoG), title('LoG edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
          
        
    case 48
        disp('Median and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        figure('name','Original image');imshow(img);
        binImg = dither(img);
        median=medfilt2(binImg,[3 3]);
        Adaptive= wiener2(median,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure,imshow(Adaptive), title('Median and Adaptive filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 49
         disp('sobel and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
        sobel=edge(binImg,'sobel');
        Adaptive=wiener2(sobel);
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure,imshow(sobel), title('sobel edge detection');
        figure,imshow(Adaptive), title('sobel edge detection and Adaptive filter');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 50
         disp('prewitt and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
        prewitt=edge(binImg,'prewitt');
        Adaptive=wiener2(prewitt);
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure,imshow(prewitt), title('perwitt edge detection');
        figure,imshow(Adaptive), title('perwitt edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 51
          disp('Roberts and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
         roberts=edge(binImg,'roberts');
         Adaptive=wiener2(roberts);
         figure, imshow(img), title 'Original Image';
         figure, imshow(binImg), title 'Binary Image';
         figure,imshow(roberts), title('Roberts edge detection');
        figure,imshow(Adaptive), title('Roberts edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
     
    case 52
         disp('canny and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
        canny=edge(binImg,'canny');
        Adaptive=wiener2(canny);
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure,imshow(canny), title('canny edge detection');
        figure,imshow(Adaptive), title('canny edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 53
         disp('LoG and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        binImg = dither(img);
         LoG=edge(binImg,'LoG');
        Adaptive=wiener2(LoG);
        figure, imshow(img), title 'Original Image';
        figure, imshow(binImg), title 'Binary Image';
        figure,imshow(LoG), title('LoG edge detection');
        figure,imshow(Adaptive), title('LoG edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
                
    case 54
            disp('[3,3]Average Filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img); 
        %Resized = imresize(grayImg,[210 210],'nearest');
        %figure, imshow(Resized), title 'Average Filtering';
        Average=filter2(fspecial('average',[3,3]), grayImg)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Average), title '[3,3]Average Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
   
    case 55
               disp('[5,5]Average Filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        Average=filter2(fspecial('average',[5,5]), grayImg)/255;
        %Resized = imresize(Average,[210 210],'nearest');
        %figure, imshow(Resized), title 'Average Filtering';
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Average), title '[5,5]Average Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
                    
    case 56
               disp('[7,7]Average Filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        Average=filter2(fspecial('average',[7,7]), grayImg)/255;
        %Resized = imresize(Average,[210 210],'nearest');
        %figure, imshow(Resized), title 'Average Filtering';
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Average), title '[7,7]Average Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
    
     case 57
            disp('[3,3]Adaptive filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        Adaptive= wiener2(grayImg,[3,3]);
        %Resized = imresize(Adaptive,[210 210],'nearest');
        %figure, imshow(Resized), title 'Adaptive Filtering';
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Adaptive), title '[3,3]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
   
    case 58
            disp('[5,5]Adaptive filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        Adaptive= wiener2(grayImg,[5,5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Adaptive), title '[5,5]Adaptive Filtering';        
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
                    
    case 59
            disp('[7,7]Adaptive filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        Adaptive= wiener2(grayImg,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Adaptive), title '[7 7]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
    
    case 60
        disp('[3,3]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        median=medfilt2(grayImg,[3,3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(median), title '[3,3]Median Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
     case 61
        disp('[5,5]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        median=medfilt2(grayImg,[5,5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(median), title '[5,5]Median Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
     case 62
        disp('[7,7]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        median=medfilt2(grayImg,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(median), title '[7 7]Median Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
      
     case 63
        disp(' Average and Gaussian ');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        Average=filter2(fspecial('average',[3,3]),grayImg)/255;
        h=fspecial('gaussian');
        Gaussian=imfilter(Average,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Gaussian), title '[3,3]Average and Gaussian filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');    
        
        
      case 64
        disp(' Average and Median');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        Average=filter2(fspecial('average',[3,3]), grayImg)/255;
        median=medfilt2(Average,[3,3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(median), title '[3,3]Average and Median filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
            
      case 65
        disp(' Average and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        Average=filter2(fspecial('average',[3,3]),grayImg)/255;
        Adaptive= wiener2(Average,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Adaptive), title '[3,3]Average and Adaptive filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
     case 66
        disp(' Gaussian and Median ');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        h=fspecial('gaussian');
        Gaussian=imfilter(grayImg,h);        
        median=medfilt2(Gaussian,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Gaussian), title '[3,3]Gaussian and Median filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
     case 67
        disp('Gaussian and Adaptive ');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        h=fspecial('gaussian');
        Gaussian=imfilter(grayImg,h);         
        Adaptive= wiener2(Gaussian,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Adaptive), title '[3,3]Gaussian and Adaptive filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
    case 68
        disp(' Median and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        median=medfilt2(grayImg,[3 3]);
        Adaptive= wiener2(median,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Adaptive), title '[3,3]Median and Adaptive filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
                       
    case 69
        disp('Median and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        median=medfilt2(grayImg,[3 3]);
        Adjust= imadjust(median,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Adjust), title '[3,3]Median and Adjust';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
      case 70
        disp('Adaptive and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        Adaptive= wiener2(grayImg,[3 3]);
        Adjust= imadjust(Adaptive,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Adjust), title '[3,3]Adaptive and Adjust filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 71
        disp('Gaussian and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        t = fspecial('gaussian', [3,3]);
        Gaussian = imfilter(grayImg,t);
        Adjust= imadjust(Gaussian,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Adjust), title '[3,3]Gaussian and Adjust';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
   case 72
        disp('Average and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        grayImg = rgb2gray(img);
        t = fspecial('average', [3,3]);
        Average = imfilter(grayImg,t);
        Adjust= imadjust(Average,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(grayImg), title 'Gray Image';
        figure, imshow(Adjust), title '[3,3]Average and Adjust';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 

    case 73
        disp('[3,3]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        Average=filter2(fspecial('average',[3,3]),SPNoise)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(Average), title '[3,3]Average Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 74
        disp('[5,5]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        Average=filter2(fspecial('average',[5,5]),SPNoise)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(Average ), title '[5,5]Average Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 75 
        disp('[7,7]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        Average=filter2(fspecial('average',[7,7]),SPNoise)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(Average ), title '[7,7]Average Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
    case 76
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        h=fspecial('gaussian', [3 3]);
        Gaussian=imfilter(SPNoise,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(Gaussian), title '[3 3]Gaussian Filtering ';
         disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
    case 77
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        h=fspecial('gaussian', [5 5]);
        Gaussian=imfilter(SPNoise,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(Gaussian), title '[5 5]Gaussian Filtering ';
         disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
     case 78
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        h=fspecial('gaussian', [7 7]);
        Gaussian=imfilter(SPNoise,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(Gaussian), title '[7 7]Gaussian Filtering ';
         disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
    case 79 
        disp('[3,3]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        median=medfilt2(SPNoise,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(median), title '[3 3]Median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
     case 80
        disp('[5,5]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        median=medfilt2(SPNoise,[5 5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(median), title '[5 5]Median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
     case 81
        disp('[7,7]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        median=medfilt2(SPNoise,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(median), title '[7 7]Median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
         
    case 82
        disp('[3,3]Adaptive filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        Adaptive= wiener2(SPNoise,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(Adaptive), title '[3 3]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 83      
        disp('[5,5]Adaptive filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        Adaptive= wiener2(SPNoise,[5 5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(Adaptive), title '[5 5]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 84
            disp('[7,7]Adaptive filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        Adaptive= wiener2(SPNoise,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(Adaptive), title '[7 7]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
     case 85
        disp('BWAREAOPEN filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        BW=bwareaopen(SPNoise, 40);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(BW), title 'BWAREAOPEN filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 86
        disp('Minimum filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        ordfilter=ordfilt2(SPNoise,1,ones(3, 3), 'symmetric');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(ordfilter), title 'Minimum Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 87 
        disp('Maximum filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        ordfilter=ordfilt2(SPNoise,3*3,ones(3, 3), 'symmetric');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(ordfilter), title 'Maximum Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
   case 88
        disp('imadjust');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        Adjust= imadjust(SPNoise,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure, imshow(Adjust), title 'imageAdjust';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
      
  case 89
      disp('sobel');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        sobel=edge(SPNoise,'sobel');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(sobel), title('sobel edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 90
         disp('prewitt');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        prewitt=edge(SPNoise,'prewitt');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(prewitt), title('perwitt edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 91
          disp('Roberts');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        roberts=edge(SPNoise,'roberts');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(roberts), title('Roberts edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
     
    case 92
         disp('canny');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        canny=edge(SPNoise,'canny');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(canny), title('canny edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 93
         disp('LoG');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        LoG=edge(SPNoise,'LoG');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(LoG), title('LoG edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
          

        
  case 94
      disp(' Average and Gaussian ');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        Average=filter2(fspecial('average',[3,3]),SPNoise)/255;
        h=fspecial('gaussian');
        Gaussian=imfilter(Average,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(Gaussian), title('Average and Gaussian filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');    
        
        
   case 95
        disp(' Average and Median');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        Average=filter2(fspecial('average',[3,3]),SPNoise)/255;
        median=medfilt2(Average,[3,3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(median), title('Average and median filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
            
    case 96
        disp(' Average and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        Average=filter2(fspecial('average',[3,3]),SPNoise)/255;
        Adaptive= wiener2(Average,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(Adaptive), title('Average and Adaptive filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
     case 97
        disp(' Gaussian and Median ');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        h=fspecial('gaussian');
        Gaussian=imfilter(SPNoise,h);        
        median=medfilt2(Gaussian,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(median), title('Gaussian and Median filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
     case 98
        disp('Gaussian and Adaptive ');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        h=fspecial('gaussian');
        Gaussian=imfilter(SPNoise,h);         
        Adaptive= wiener2(Gaussian,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(Adaptive), title('Gaussian and Adaptive filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
    case 99
        disp(' Median and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        median=medfilt2(SPNoise,[3 3]);
        Adaptive= wiener2(median,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(Adaptive), title('Median and Adaptive filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
                       
    case 100
        disp('Median and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        median=medfilt2(SPNoise,[3 3]);
        Adjust= imadjust(median,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(Adjust), title('Median and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 101
        disp('Adaptive and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        Adaptive= wiener2(SPNoise,[3 3]);
        Adjust= imadjust(Adaptive,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(Adjust), title('Adaptive and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 102
        disp('Gaussian and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        t = fspecial('gaussian', [3,3]);
        Gaussian = imfilter(SPNoise,t);
        Adjust= imadjust(Gaussian,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(Adjust), title('Gaussian and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
   case 103
        disp('Average and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        t = fspecial('average', [3,3]);
        Average = imfilter(SPNoise,t);
        Adjust= imadjust(Average,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(Adjust), title('Average and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 104
         disp('sobel and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        sobel=edge(SPNoise,'sobel');
        Adaptive=wiener2(sobel);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(sobel), title('sobel edge detection');
        figure,imshow(Adaptive), title('sobel edge detection and Adaptive filter');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 105
        disp('prewitt and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        prewitt=edge(SPNoise,'prewitt');
        Adaptive=wiener2(prewitt);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(prewitt), title('perwitt edge detection');
        figure,imshow(Adaptive), title('perwitt edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 106
          disp('Roberts and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        roberts=edge(SPNoise,'roberts');
        Adaptive=wiener2(roberts);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(roberts), title('Roberts edge detection');
        figure,imshow(Adaptive), title('Roberts edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
     
    case 107
         disp('canny and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        canny=edge(SPNoise,'canny');
        Adaptive=wiener2(canny);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(canny), title('canny edge detection');
        figure,imshow(Adaptive), title('canny edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 108
         disp('LoG and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SPNoise = imnoise(img,'salt & pepper',0.02); 
        LoG=edge(SPNoise,'LoG');
        Adaptive=wiener2(LoG);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SPNoise), title 'Image with Salt & Pepper Noise';
        figure,imshow(LoG), title('LoG edge detection');
        figure,imshow(Adaptive), title('LoG edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
                
   case 109
        disp('[3,3]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        Average=filter2(fspecial('average',[3,3]),SpeckleNoise)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Average), title '[3,3]Average Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 110
        disp('[5,5]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        Average=filter2(fspecial('average',[5,5]),SpeckleNoise)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Average ), title '[5,5]Average Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 111
        disp('[7,7]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        Average=filter2(fspecial('average',[7,7]),SpeckleNoise)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Average ), title '[7,7]Average Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
    case 112
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        h=fspecial('gaussian', [3 3]);
        Gaussian=imfilter(SpeckleNoise,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Gaussian), title '[3 3]Gaussian Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
    case 113
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        h=fspecial('gaussian', [5 5]);
        Gaussian=imfilter(SpeckleNoise,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Gaussian), title '[5 5]Gaussian Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
     case 114
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        h=fspecial('gaussian', [7 7]);
        Gaussian=imfilter(SpeckleNoise,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Gaussian), title '[7 7]Gaussian Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
    case 115
        disp('[3,3]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        median=medfilt2(SpeckleNoise,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(median), title '[3 3]Median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
     case 116
        disp('[5,5]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        median=medfilt2(SpeckleNoise,[5 5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(median), title '[5 5]Median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
     case 117
        disp('[7,7]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        median=medfilt2(SpeckleNoise,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(median), title '[7 7]Median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
         
    case 118
        disp('[3,3]Adaptive filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        Adaptive= wiener2(SpeckleNoise,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Adaptive), title '[3 3]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 119      
        disp('[5,5]Adaptive filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        Adaptive= wiener2(SpeckleNoise,[5 5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Adaptive), title '[5 5]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 120
        disp('[7,7]Adaptive filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        Adaptive= wiener2(SpeckleNoise,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Adaptive), title '[7 7]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
     case 121
        disp('BWAREAOPEN filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        BW=bwareaopen(SpeckleNoise, 40);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(BW), title 'BWAREAOPEN filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 122
        disp('Minimum filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        ordfilter=ordfilt2(SpeckleNoise,1,ones(3, 3), 'symmetric');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(ordfilter), title 'Minimum Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 123 
        disp('Maximum filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        ordfilter=ordfilt2(SpeckleNoise,3*3,ones(3, 3), 'symmetric');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(ordfilter), title 'Maximum Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
    case 124 
        disp('imadjust');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        Adjust= imadjust(SpeckleNoise,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Adjust), title 'imageAdjust';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
       case 125
         disp('sobel');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        sobel=edge(SpeckleNoise,'sobel');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure,imshow(sobel), title('sobel edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 126
         disp('prewitt');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        prewitt=edge(SpeckleNoise,'prewitt');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure,imshow(prewitt), title('perwitt edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 127
          disp('Roberts');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        roberts=edge(SpeckleNoise,'roberts');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure,imshow(roberts), title('Roberts edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
     
    case 128
         disp('canny');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        canny=edge(SpeckleNoise,'canny');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure,imshow(canny), title('canny edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 129
         disp('LoG');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        LoG=edge(SpeckleNoise,'LoG');
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure,imshow(LoG), title('LoG edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
          
 
      case 130
        disp(' Average and Gaussian ');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        Average=filter2(fspecial('average',[3,3]),SpeckleNoise)/255;
        h=fspecial('gaussian');
        Gaussian=imfilter(Average,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Gaussian), title 'Average and Gaussian Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');    
        
        
      case 131
        disp(' Average and Median');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        Average=filter2(fspecial('average',[3,3]),SpeckleNoise)/255;
        median=medfilt2(Average,[3,3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(median), title 'Average and Median Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
            
      case 132
        disp(' Average and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        Average=filter2(fspecial('average',[3,3]),SpeckleNoise)/255;
        Adaptive= wiener2(Average,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Adaptive), title 'Average and Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
     case 133
        disp(' Gaussian and Median ');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        h=fspecial('gaussian');
        Gaussian=imfilter(SpeckleNoise,h);        
        median=medfilt2(Gaussian,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(median), title 'Gaussian and Median Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
     case 134
        disp('Gaussian and Adaptive ');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        h=fspecial('gaussian');
        Gaussian=imfilter(SpeckleNoise,h);         
        Adaptive= wiener2(Gaussian,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Adaptive), title 'Gaussian and Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
    case 135
        disp(' Median and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        median=medfilt2(SpeckleNoise,[3 3]);
        Adaptive= wiener2(median,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Adaptive), title 'Median and Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
                       
    case 136
        disp('Median and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        median=medfilt2(SpeckleNoise,[3 3]);
        Adjust= imadjust(median,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Adjust), title 'Median and Adjust Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
     case 137
        disp('Adaptive and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        Adaptive= wiener2(SpeckleNoise,[3 3]);
        Adjust= imadjust(Adaptive,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Adjust), title 'Adaptive and Adjust Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 138
        disp('Gaussian and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        t = fspecial('gaussian', [3,3]);
        Gaussian = imfilter(SpeckleNoise,t);
        Adjust= imadjust(Gaussian,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Adjust), title 'Gaussian and Adjust Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
   case 139
        disp('Average and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        t = fspecial('average', [3,3]);
        Average = imfilter(SpeckleNoise,t);
        Adjust= imadjust(Average,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure, imshow(Adjust), title 'Average and Adjust Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 140
         disp('sobel and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        sobel=edge(SpeckleNoise,'sobel');
        Adaptive=wiener2(sobel);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure,imshow(sobel), title('sobel edge detection');
        figure,imshow(Adaptive), title('sobel edge detection and Adaptive filter');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 141
         disp('prewitt and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        prewitt=edge(SpeckleNoise,'prewitt');
        Adaptive=wiener2(prewitt);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure,imshow(prewitt), title('perwitt edge detection');
        figure,imshow(Adaptive), title('perwitt edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 142
          disp('Roberts and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        roberts=edge(SpeckleNoise,'roberts');
        Adaptive=wiener2(roberts);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure,imshow(roberts), title('Roberts edge detection');
        figure,imshow(Adaptive), title('Roberts edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
     
    case 143
         disp('canny and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        canny=edge(SpeckleNoise,'canny');
        Adaptive=wiener2(canny);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure,imshow(canny), title('canny edge detection');
        figure,imshow(Adaptive), title('canny edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 144
         disp('LoG and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        SpeckleNoise = imnoise(img, 'Speckle', 0.02);
        LoG=edge(SpeckleNoise,'LoG');
        Adaptive=wiener2(LoG);
        figure, imshow(img), title 'Original Image';
        figure, imshow(SpeckleNoise), title 'Image with Speckle Noise';
        figure,imshow(LoG), title('LoG edge detection');
        figure,imshow(Adaptive), title('LoG edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
        
    case 145
        disp('[3,3]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        Average=filter2(fspecial('average',[3,3]),GaussianNoise)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(Average), title '[3,3]Average Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 146
        disp('[5,5]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        Average=filter2(fspecial('average',[5,5]),GaussianNoise)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(Average ), title '[5,5]Average Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 147
        disp('[7,7]Average filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        Average=filter2(fspecial('average',[7,7]),GaussianNoise)/255;
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(Average ), title '[7,7]Average Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
    case 148
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        h=fspecial('gaussian', [3 3]);
        Gaussian=imfilter(GaussianNoise,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(Gaussian), title '[3 3]Gaussian Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');  
    case 149
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        h=fspecial('gaussian', [5 5]);
        Gaussian=imfilter(GaussianNoise,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(Gaussian), title '[5 5]Gaussian Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');  
     case 150
        disp('Gaussian filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        h=fspecial('gaussian', [7 7]);
        Gaussian=imfilter(GaussianNoise,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(Gaussian), title '[7 7]Gaussian Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');  
    case 151
        disp('[3,3]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        median=medfilt2(GaussianNoise,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(median), title '[3 3]Median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
     case 152
        disp('[5,5]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        median=medfilt2(GaussianNoise,[5 5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(median), title '[5 5]Median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
     case 153
        disp('[7,7]Median filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        median=medfilt2(GaussianNoise,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(median), title '[7 7]Median Filtering ';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
         
    case 154
        disp('[3,3]Adaptive filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        Adaptive= wiener2(GaussianNoise,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(Adaptive), title '[3 3]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 155     
        disp('[5,5]Adaptive filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        Adaptive= wiener2(GaussianNoise,[5 5]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(Adaptive), title '[5 5]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 156
            disp('[7,7]Adaptive filtering');
              if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        Adaptive= wiener2(GaussianNoise,[7 7]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(Adaptive), title '[7 7]Adaptive Filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
     case 157
        disp('BWAREAOPEN filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        BW=bwareaopen(GaussianNoise, 40);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(BW), title 'BWAREAOPEN filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 158
        disp('Minimum filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        ordfilter=ordfilt2(GaussianNoise,1,ones(3, 3), 'symmetric');
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(ordfilter), title 'Minimum filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 159 
        disp('Maximum filtering');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        ordfilter=ordfilt2(GaussianNoise,3*3,ones(3, 3), 'symmetric');
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(ordfilter), title 'Maximum filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
    case 160 
        disp('imadjust');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        Adjust= imadjust(GaussianNoise,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure, imshow(Adjust), title 'imageAdjust filtering';
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
     case 161
         disp('sobel');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        sobel=edge(GaussianNoise,'sobel');
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(sobel), title('sobel edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 162
         disp('prewitt');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        prewitt=edge(GaussianNoise,'prewitt');
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(prewitt), title('perwitt edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 163
          disp('Roberts');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005); 
        roberts=edge(GaussianNoise,'roberts');
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(roberts), title('Roberts edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
     
    case 164
         disp('canny');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        canny=edge(GaussianNoise,'canny');
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(canny), title('canny edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 165
         disp('LoG');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        LoG=edge(GaussianNoise,'LoG');
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(LoG), title('LoG edge detection');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
          
      case 166
        disp(' Average and Gaussian ');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        Average=filter2(fspecial('average',[3,3]),GaussianNoise)/255;
        h=fspecial('gaussian');
        Gaussian=imfilter(Average,h);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(Gaussian), title('Average and Gaussian filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');    
        
        
      case 167
        disp(' Average and Median');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        Average=filter2(fspecial('average',[3,3]),GaussianNoise)/255;
        median=medfilt2(Average,[3,3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(median), title('Average and Median filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
            
      case 168
        disp(' Average and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        Average=filter2(fspecial('average',[3,3]),GaussianNoise)/255;
        Adaptive= wiener2(Average,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(Adaptive), title('Average and Adaptive filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
     case 169
        disp(' Gaussian and Median ');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        h=fspecial('gaussian');
        Gaussian=imfilter(GaussianNoise,h);        
        median=medfilt2(Gaussian,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(median), title('Gaussian and Median filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
     case 170
        disp('Gaussian and Adaptive ');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        h=fspecial('gaussian');
        Gaussian=imfilter(GaussianNoise,h);         
        Adaptive= wiener2(Gaussian,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(Adaptive), title('Gaussian and Adaptive filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');   
        
    case 171
        disp('Median and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        median=medfilt2(GaussianNoise,[3 3]);
        Adaptive= wiener2(median,[3 3]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(Adaptive), title('Median and Adaptive filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
                       
    case 172
        disp('Median and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        median=medfilt2(GaussianNoise,[3 3]);
        Adjust= imadjust(median,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(Adjust), title('Median and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 173
        disp('Adaptive and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        Adaptive= wiener2(GaussianNoise,[3 3]);
        Adjust= imadjust(Adaptive,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(Adjust), title('Adaptive and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 174
        disp('Gaussian and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        t = fspecial('gaussian', [3,3]);
        Gaussian = imfilter(GaussianNoise,t);
        Adjust= imadjust(Gaussian,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(Adjust), title('Gaussian and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
   case 175
        disp('Average and Adjust');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        t = fspecial('average', [3,3]);
        Average = imfilter(GaussianNoise,t);
        Adjust= imadjust(Average,[0.3 0.7],[]);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(Adjust), title('Average and Adjust filtering');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s'); 
        
    case 176
         disp('sobel and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        sobel=edge(GaussianNoise,'sobel');
        Adaptive=wiener2(sobel);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(sobel), title('sobel edge detection');
        figure,imshow(Adaptive), title('sobel edge detection and Adaptive filter');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 177
        disp('prewitt and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        prewitt=edge(GaussianNoise,'prewitt');
        Adaptive=wiener2(prewitt);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(prewitt), title('perwitt edge detection');
        figure,imshow(Adaptive), title('perwitt edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');

    case 178
          disp('Roberts and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        roberts=edge(GaussianNoise,'roberts');
        Adaptive=wiener2(roberts);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(roberts), title('Roberts edge detection');
        figure,imshow(Adaptive), title('Roberts edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
     
    case 179
         disp('canny and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        canny=edge(GaussianNoise,'canny');
        Adaptive=wiener2(canny);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(canny), title('canny edge detection');
        figure,imshow(Adaptive), title('canny edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 180
         disp('LoG and Adaptive');
        if noise==1
            img=img2;
            noise=0;
        end
        GaussianNoise = imnoise(img,'gaussian',0,0.005);
        LoG=edge(GaussianNoise,'LoG');
        Adaptive=wiener2(LoG);
        figure, imshow(img), title 'Original Image';
        figure, imshow(GaussianNoise), title 'Image with Gaussian Noise';
        figure,imshow(LoG), title('LoG edge detection');
        figure,imshow(Adaptive), title('LoG edge detection and Adaptive');
        disp('Do you want to continue [Y]/[N]?');
        s=input('-->','s');
        
    case 181
        disp('Add noise and filter the image ');
        disp('What type noise you want to add on the image? ');
        disp('      1. Gaussian noise');
        disp('      2. Salt & pepper noise');
        disp('      3. Speckle noise');
        c1=input('-->');
        if c1==1
            GaussianNoise = imnoise(img,'gaussian',0,0.005);
            figure, imshow(img), title 'Original Image';
            figure,imshow(GaussianNoise), title('Gaussian Noise');
            imwrite(GaussianNoise,'GaussianNoise.jpeg','jpeg');
        else
            if c1==2
                SPNoise = imnoise(img,'salt & pepper',0.02);   
                figure, imshow(img), title 'Original Image';
                figure,imshow(SPNoise), title('salt & pepper Noise');
                imwrite(SPNoise,'salt & pepper Noise.jpeg','jpeg');
            else
                if c1==3
                   SpeckleNoise = imnoise(img, 'Speckle', 0.02);
                    figure, imshow(img), title 'Original Image';
                    figure,imshow(SpeckleNoise), title('Speckle Noise');
                    imwrite(SpeckleNoise,'Speckle Noise.jpeg','jpeg');

            else
                disp('Incorrect input try again!');                
            end        
        end
        
        
        %figure('name');imshow(img2);
        noise=1;    
        %otherwise
        if k ~= 182
            disp('Incorrect input try again!');
            disp('Do you want to try again [Y]/[N]?');
            s=input('-->','s');
        end    
    end
    start=1;
end
disp('You are exit,Thank you for using');
end