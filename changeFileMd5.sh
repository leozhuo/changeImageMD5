
#find . -name "*.png" -exec echo $(uuidgen) >> /Users/un/Desktop/xdymn/xdymn/Assets.xcassets{} \;
#find . -name "*.png" -exec echo /Users/un/Desktop/xdymn/xdymn/Assets.xcassets{} \;

function readfile ()
{
#这里`为esc下面的按键符号
for file in `ls $1`
do
#这里的-d表示是一个directory，即目录/子文件夹
if [ -d $1"/"$file ]
then
#如果子文件夹则递归
readfile $1"/"$file
else
#否则就能够读取该文件的地址

if [[ "${file##*.}" = "png" ]]
then
echo $(uuidgen) >> $1"/"$file
#echo $1"/"$file
fi

fi
done
}

folder="/Users/un/Desktop/xdymn/xdymn/Assets.xcassets"
readfile $folder
