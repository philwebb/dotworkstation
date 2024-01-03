import os, sys, subprocess

fthreshMB = 3900 # threshhold size in MB
fthresh = fthreshMB * 1024*1024
segext = '.part'
segstartnum = 1

# main
fp = sys.argv[1]
if not os.path.isfile(fp):
    print('Invalid file',fp)
    sys.exit(1)

fsize = os.path.getsize(fp)
if fsize < fthresh:
    print('File is below threshhold of',fthreshMB,'MB')
    sys.exit(0)
    
# get file duration
ffcmd = 'ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "' + fp + '"'
result = subprocess.run(ffcmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
fdur = float(result.stdout)

# number of segments
segs = 1
while (fsize / segs) > fthresh:
    segs += 1
segdur = int(fdur / segs)
print('duration',fdur,'seconds. divide into',segs,'segments of',segdur,'seconds. segment start number',segstartnum)

# split file
fn, fext = os.path.splitext(fp)
ffcmd = 'ffmpeg -hide_banner -y -i "' + fp + '" -c copy -map 0 -segment_time ' + str(segdur) + ' -f segment ' + \
        '-reset_timestamps 1 -segment_start_number ' + str(segstartnum) + ' "' + fn + segext + '%d' + fext + '"'
result = subprocess.run(ffcmd,capture_output=True, shell=True)
if result.returncode == 0: print('success')
else: print('error')
