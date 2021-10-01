#!/usr/bin/env bash
VERSION=$(grep "当前版本" "/tmp/bili-helper.log" | awk '{print $2}')
echo "当前版本:"$VERSION
latest=$(curl -s https://ghproxy.com/https://api.github.com/repos/JunzhouLiu/BILIBILI-HELPER-PRE/releases/latest)

latest_VERSION=`echo $latest | jq '.tag_name' | sed 's/v\|"//g'`
echo "最新版本:"$latest_VERSION
download_url=`echo $latest | jq '.assets[0].browser_download_url' | sed 's/"//g'`
function version_lt() { test "$(echo "$@" | tr " " "\n" | sort -rV | head -n 1)" != "$1"; }

if version_lt $VERSION $latest_VERSION; then
   echo "有新版本，开始更新"
   curl -L -o "./BILIBILI-HELPER.zip" "https://ghproxy.com/$download_url"
   mkdir ./tmp
   echo "正在解压文件......."
   unzip -d ./tmp/ BILIBILI-HELPER.zip
   cp -f ./tmp/BILIBILI-HELPER*.jar BILIBILI-HELPER.jar
   echo "清除缓存........."
   rm -rf tmp
   rm -rf BILIBILI-HELPER.zip
   echo "更新完成"
   else
   echo "已经是最新版本，不需要更新！！！"
fi
#修复依赖
install_dependencies_all(){
    install_dependencies_normal openjdk
    for i in openjdk; do
        install_dependencies_force $i
    done
}