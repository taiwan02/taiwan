hostname = ms.jr.jd.com, me-api.jd.com, api.m.jd.com

# 获取京东Cookie. 
^https:\/\/(api\.m|me-api)\.jd\.com\/(client\.action\?functionId=signBean|user_new\/info\/GetJDUserInfoUnion\?) url script-request-header https://raw.githubusercontent.com/taiwan02/taiwan/main/qx/jdck/JD_DailyBonus.js

# 获取钢镚签到body. 
^https:\/\/ms\.jr\.jd\.com\/gw\/generic\/hy\/h5\/m\/appSign\? url script-request-body https://raw.githubusercontent.com/taiwan02/taiwan/main/qx/jdck/JD_DailyBonus.js
