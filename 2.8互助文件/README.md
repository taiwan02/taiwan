###code.sh

必读一：
名称：格式化更新互助码
命令：task /ql/config/code.sh
定时规则：10 * * * *

必读二：
互助码和互助规则文件路径调整至/ql/log/.ShareCode；备份路径调整至/ql/log/.bak_ShareCode/。
这两个文件夹会自动创建。可以通过面板-任务日志查看。

必读三：
task_before.sh不再负责互助码和互助规则的导入，只负责读取 /ql/log/.ShareCode 的文件并格式化成全局互助变量提交给活动脚本。

必读四：
code.sh 和 task_before.sh 还是仍旧存放在 /ql/config/ 路径不变。

必读五：
由于众所周知的原因， code.sh 或 task_before.sh 仍旧不包含新算法助力规则和全局变量自截断的代码，所以并不能解决 Argument list too long 的问题。如果账号过多提示这个报错，建议分多容器运行。

Build 20210830-001
1、修复读取 env.sh 备注的代码逻辑错误。
Build 20210829-001
1、导出 COOKIE 增加备注名显示。

Build 20210817-002
1、增加 JD_Cookie 有效性检测并输出日志的功能。

Build 20210817-001
1、改进静默杀死其他code.sh进程的功能。解决偶尔出现杀进程回显日志的问题。

Build 20210816-001
1、增加启动时静默杀死其他code.sh进程的功能。解决线程过多问题。

Build 20210811-001
1、默认开启"自动静默安装/修复常用 node 依赖功能"（FixDependType="1"）。对 code.sh 的运行速度会有一定影响。如果不喜欢，可以自行关闭（FixDependType=""）。


Build 20210810-001
1、修复一处报错。

Build 20210807-003
1、修复日志时间显示异常。

Build 20210807-002
1、修复无法更新互助文件问题。


Build 20210807-001

1、同步青龙最新版的特性，取消tee log代码。不影响日志打印和显示。
2、修复 task 命令启动时"sed: unmatched '/'"这个古老的报错问题。

必读一：
名称：格式化更新互助码
命令：task /ql/config/code.sh
定时规则：10 * * * *

必读二：
互助码和互助规则文件路径调整至/ql/log/.ShareCode；备份路径调整至/ql/log/.bak_ShareCode/。
这两个文件夹会自动创建。可以通过面板-任务日志查看。

必读三：
task_before.sh不再负责互助码和互助规则的导入，只负责读取 /ql/log/.ShareCode 的文件并格式化成全局互助变量提交给活动脚本。

必读四：
code.sh 和 task_before.sh 还是仍旧存放在 /ql/config/ 路径不变。

必读五：
由于众所周知的原因， code.sh 或 task_before.sh 仍旧不包含新算法助力规则和全局变量自截断的代码，所以并不能解决 Argument list too long 的问题。如果账号过多提示这个报错，建议分多容器运行。

Build 20210830-001
1、修复读取 env.sh 备注的代码逻辑错误。

Build 20210829-001
1、导出 COOKIE 增加备注名显示。

Build 20210817-002
1、增加 JD_Cookie 有效性检测并输出日志的功能。

Build 20210817-001
1、改进静默杀死其他code.sh进程的功能。解决偶尔出现杀进程回显日志的问题。

Build 20210816-001
1、增加启动时静默杀死其他code.sh进程的功能。解决线程过多问题。

Build 20210811-001
1、默认开启"自动静默安装/修复常用 node 依赖功能"（FixDependType="1"）。对 code.sh 的运行速度会有一定影响。如果不喜欢，可以自行关闭（FixDependType=""）。


Build 20210810-001
1、修复一处报错。

Build 20210807-003
1、修复日志时间显示异常。

Build 20210807-002
1、修复无法更新互助文件问题。

Build 20210807-001

1、同步青龙最新版的特性，取消tee log代码。不影响日志打印和显示。
2、修复 task 命令启动时"sed: unmatched '/'"这个古老的报错问题。

###task_before.sh

Build 20210829-001
1、增加按照用户名(pt_pin)临时禁止账号参加活动的代码，环境变量参数需根据 Build 20210829-001 以上版本的 config_sample.sh 定义填写。

Build 20210822-001
1、适配 2.8.4-002 及以上版本青龙，解决不能提交互助码的问题。

Build 20210817-001
1、代码优化。

Build 20210815-002
1、增加组队模式的相关代码。环境变量需在配套 config.sh 中填写。相关填写要求详见Build 20210815-002 及以上版本的 config_sample.sh

Build 20210815-001
1、增加随机 Cookie 模式代码。须配合 config.sh (参考尝鲜版 config_sample.sh )使用。

Build 20210810-003
1、修复一处错误。

Build 20210810-002
1、修复一处报错。

Build 20210810-001
1、修复一处报错。

Build 20210809-001
1、修复手机狂欢城读取不到互助码。

1、大幅代码优化；
2、互助码和互助规则文件路径调整至/ql/log/.ShareCode；备份路径调整至/ql/log/.bak_ShareCode/;
3、task_before.sh只负责两个工作：
    ①读取互助码和互助规则文件并格式化成全局互助变量；
    ②临时禁止CK参加活动。
4、不包含新算法助力规则和全局变量自截断的代码，所以并不能解决 Argument list too long 。

###config_sample.sh

Build 20210829-001
1、增加按照用户名(pt_pin)临时禁止账号参加活动的环境变量，须配套 Build 20210829-001 以上版本的 task_before.sh 实现功能。

Build 20210815-002
1、增加组队模式的环境变量填写模板。

Build 20210815-001
1、增加随机 Cookie 模式环境变量填写模板。须配合尝鲜版 task_before.sh 使用。

2021.8.11.001
1、增加 smiek2221 大佬“星动七夕 纵享丝滑”、"大牌联合 约惠一夏"的环境变量；
2、curtinlv 的新版抢京豆可能不支持中文 pt_pin 了，故调整为原 pt_pin 自动格式化代码。

2021.8.10.001
1、增加 smiek2221 大佬“头号玩家 一起热8”的环境变量。

2021.8.8.001
1、增加 smiek2221 大佬“七夕会员福利社”的环境变量。

2021.8.7.001
1、smiek2221 大佬开卡活动完善加购物车环境变量。

2021.8.5.002
1、增加 smiek2221 大佬“七夕告白季-开卡”的环境变量。

2021.8.5.001
1、增加 smiek2221 和 Tsukasa007 大佬“冰爽夏日 钜惠送好礼”的环境变量。

2021.8.4.002
1、增加 smiek2221 大佬“大牌联合 冰爽一夏”的环境变量。

2021.8.4.001
1、增加 Tsukasa007 大佬“奶爸经典”的环境变量。


说明：
①config.sh模板，适用于青龙 2.8.0。整合了Oreo大佬的最新环境变量。
②注意：青龙面板的对比工具，呈现的 config.sample.sh 其实是 /ql/sample/路径下的文件，不是 /ql/config/ 路径下的。所以无论你怎么折腾 /ql/config/ 路径的这个文件模板，都无法使用青龙面板进行对比。建议使用 Beyond Compare 等第三方软件对附件和自己的 config.sh 进行对比更新。

频道：https://t.me/update_help
交流群：https://t.me/update_help_group

格式化更新助力码	task /ql/config/code.sh	*/10 * * * *
自动更新模板	curl -L https://raw.githubusercontents.com/shufflewzc/VIP/main/Conf/Qinglong/config.sample.sh -o /ql/sample/config.sample.sh && cp -rf /ql/sample/config.sample.sh /ql/config	45 6,18 * * *
初始化任务	ql extra	15 0-23/4 * * *
拉取机器人	ql bot	13 14 * * *
