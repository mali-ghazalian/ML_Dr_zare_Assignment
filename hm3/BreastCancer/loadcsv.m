function D = loadcsv(filename,formatStr)

[fid,msg] = fopen(filename,'r');
if fid < 0
    error(msg);
end
D = textscan(fid,formatStr,'headerLines',1,'delimiter',',','treatAsEmpty',{'?'});
fclose(fid);
