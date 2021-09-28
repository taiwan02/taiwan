国内鸡
进入容器
docker exec -it qinglong bash 
#获取ninja
git clone -b main https://ghproxy.com/https://github.com/wjx0428/ninja.git /ql/ninja
#安装
cd /ql/ninja/backend && pnpm install 
cp .env.example .env  
#添加UA_
echo 'NINJA_UA="Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1"' >> .env 
#关闭通知 （可选）
sed -i 's/NINJA_NOTIFY=true/NINJA_NOTIFY=false/g' .env  
#启动
pm2 start 
#和面板一起启动
echo -e "cd /ql/ninja/backend\npm2 start" >> /ql/config/extra.sh 

开启ninja隐藏的手动输入cookie界面：
进入qinglong 容器

docker exec -it qinglong bash

输入命令：sed -i '/<body>/a\<script type="text/javascript">\nwindow.onload=function(){\ndocument.getElementsByClassName("card hidden")[0].className = "card";\n}\n</script>' $(find /ql -type f -name '*.html'| xargs grep -l -r 'modulepreload')

下面的步骤是删除CK登录，不用请不要输入
删除添加内容 
输入命令：sed -i '13,17d' $(find /ql -type f -name '*.html'| xargs grep -l -r 'modulepreload')
删除ninja命令
pm2 delete ninja
