function foldpath = getpath(numfolder, varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Usage : getpath(numfolder, [numbox])
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    path = 'C:\Users\Bernadette\Desktop\Maxime\FrogDetection\Data\';
    folder = char('EnregistrementsPlayback\', 'playback\', 'acquisition\');

    folder = folder(numfolder,:);

    if size(varargin,2)==1 && isa(varargin{1},'double') && numfolder == 3
        numbox = varargin{1};
        box = char('BOX01\', 'BOX02\', 'BOX03\', 'Box04\');
        folder =  strcat(folder,box(numbox,:));
    end

    foldpath = strcat(path,folder);
end