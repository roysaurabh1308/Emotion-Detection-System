function [z]=Crop_Face(~)


[url_img, map] = imread('http://192.168.43.1:8080/shot.jpg');
    %file = ['\Image',sprintf('%03d',i),'.jpg'];
    I = imresize(url_img,[375,300]);
    %[aa,SN_fill,FaceDat]=detect_face(I);

    fid=fopen('read.txt','r');
    format='%f';
    D=fscanf(fid,format);
    D=D+1;
    fclose(fid);
    disp(D)
    
    
    
    %I = imresize(aa,[280,180]);
    figure
    imshow(I);
    
    %%
    l2=int2str(D);
    name=strcat('Image0','05','.jpg');
    name2=strcat('Image0',l2,'.jpg');
    loc=strcat('F:\programming\matlab_docs\EigenFace\Test\',name);
    loc2=strcat('F:\programming\matlab_docs\EigenFace\Train\',name2);
    %file=[preText,'\Cropped\Image',sprintf('%03d',i),'.jpg'];
    imwrite(I,loc);
    imwrite(I,loc2);
   
   system('roy pol.py')
 choice = questdlg('Choose Size','Size',...
    'low','moderate','High','High');
switch choice
    case 'High'
        gag='happy';
    case 'low'
        gag='sad';
    case 'moderate'
        gag='disgust';
end

choice = questdlg('Choose resolution','Input',...
    '>720p','>720p','Default','Default');
switch choice
    case '>720p'
        gag='anger';
    case '<720p'
        gag='neutral';
    case 'Default'
        disp('ok');
end

pol=strcat(name2,',',gag);
lala=strcat('ECHO','.',pol,'>>"F:\programming\matlab_docs\EigenFace\LabelFile.txt"');
system(lala);
    
    
    
    %disp(file);



end
