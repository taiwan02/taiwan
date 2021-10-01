#!/usr/bin/env bash
cd /ql/ninja/backend
pm2 start
cd /ql/scripts
sed -i 's/吹水群：https:\/\/t.me\/wenmouxx/苏青/g' shufflewzc_faker2_jd_qqxing.js
sed -i 's/开源免费By: https:\/\/github.com\/curtinlv\/JD-Script/苏青/g' sendNotify.py
sed -i 's/本通知 By：https:\/\/github.com\/whyour\/qinglong/本通知 By：苏青/g' sendNotify.js
