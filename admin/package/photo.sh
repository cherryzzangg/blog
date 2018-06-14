#!/bin/sh
ScriptPath=$(cd "$(dirname "$0")"; pwd)
cd ${ScriptPath}
cd ../
PanelPath=$(pwd)
cd ../
echo " "
echo "=========================================================================================="
echo "请确认删除 /source/photos/photoslist.json，确认后按下回车"
echo "=========================================================================================="
echo " "
read answer
rm -f source/photos/photoslist.json
cat -n source/photos/photoslist.json
echo " "
echo "=========================================================================================="
echo "如果显示：No such file or directory，删除成功！"
echo " "
echo "按下回车开始重新生成..."
echo "=========================================================================================="
echo " "
read answer
node scripts/phototool.js
sleep 1
echo " "
echo "=========================================================================================="
echo "生成相册照片信息完毕！"
echo " "
echo "请检查 source/photos/photoslist.json，检查后按下回车"
echo "如果生成相册照片信息失败，请返回主菜单再重复一次。"
echo "=========================================================================================="
cat -n source/photos/photoslist.json
read answer
echo " "
echo "=========================================================================================="
echo "即将返回主菜单，请稍等..."
echo "=========================================================================================="
echo " "
sleep 1
exec ${PanelPath}/admin.sh