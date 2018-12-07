return {
{
    version = '2.4.7',
    { 'FIX', '修正特定情况下的运行时错误' },
},
{
    version = '2.4.6',
    { 'FIX', '修正没有war3map.imp文件时不会重建的问题' },
    { 'FIX', '修正wts部分格式解析错误的问题' },
},
{
    version = '2.4.5',
    { 'FIX', '修正config命令使用错误参数时抛错的问题' },
},
{
    version = '2.4.4',
    { 'FIX', '修正一些错误提示不准确的问题' },
    { 'FIX', '修正lni后带有前后空格的触发器丢失的问题' },
    { 'FIX', '修正英文版lni后触发器损坏的问题' },
},
{
    version = '2.4.3',
    { 'CHG', 'lni时清理输出目录的多余文件' },
    { 'FIX', '修正无法识别脚本中8进制整数的问题' },
    { 'FIX', '修正会被环境变量影响的问题' },
},
{
    version = '2.4.2',
    { 'FIX', '修正lni转obj后数组变量识别为常量的问题' },
    { 'FIX', '修正slk时公式计算的误差问题' },
},
{
    version = '2.4.1',
    { 'FIX', '修正插件的on_mark事件失效的问题' },
    { 'FIX', '修正lni转obj会导入多余文件的问题' },
},
{
    version = '2.4.0',
    { 'NEW', 'lni支持导出文件名带有非法符号的文件' },
    { 'CHG', '优化转换流程，减少内存占用' },
    { 'CHG', '提取MPQ时会先清理目录' },
    { 'CHG', '使用提取数据转换Obj不再提示无效数据' },
    { 'CHG', '转换后文件名会维持大小写' },
    { 'CHG', 'lml文件加上了前缀，使排序与WE中相同' },
    { 'FIX', '修正路径中有连续斜杠的文件无法识别的问题' },
    { 'FIX', '修正不兼容1.29UI文件中新增错误的问题' },
    { 'FIX', '修正脚本错误的报告可能没有正确显示的问题', '在动作中的未知函数' },
    { 'FIX', '修正命令行中部分配置的说明错误' },
    { 'FIX', '修正lni时可能保存错误翻译文件的问题' },
    { 'FIX', '修正slk时.开头的对象ID导致地图损坏的问题' },
    { 'FIX', '修正File0000XXXX.文件名无法识别的问题' },
},
{
    version = '2.3',
    { 'NEW', '重写GUI' },
    { 'NEW', 'GUI支持提取War3数据文件' },
    { 'CHG', '不会转换无法识别的Lni地图', '之前会将其当做目录格式的地图' },
    { 'CHG', '配置了错误的数据目录时不会转换', '之前会使用默认数据目录来转换地图' },
    { 'FIX', '修正ID冲突的对象文本被覆盖的问题', 'A00A 与 A00a 的文本会互相覆盖' },
    { 'FIX', '修正无法打开目录格式地图的问题', '2.2.1 产生' },
    { 'FIX', '修正未修改的自定义技能行为不一致的问题' },
    { 'FIX', '修正脚本无法引用特殊ID对象的问题' },
    { 'FIX', '修正非法ID的技能丢失的问题' },
    { 'FIX', '修正obj时丢失部分物编文本的问题' },
    { 'FIX', '修正slk时科技的tooltip问题' },
    { 'FIX', '修正lni时触发器中的文本损坏的问题', '触发器类别与常量字符串没有被正确地加上引号' },
    { 'FIX', '修正slk时某些技能被错误移除的问题', '未引用的自定义技能会错误清除父技能的引用' },
    { 'FIX', '修正科技需求和科技需求值不正确的问题' },
},
{
    version = '2.2',
    { 'NEW', '支持War3 1.29的数据提取' },
    { 'NEW', '数据文件增加版本号', '版本不符的数据文件将无法使用，需要重新提取生成'},
    { 'FIX', '修正lni时重名触发器丢失的问题' },
    { 'FIX', '修正slk时极端情况下的报错', '多个对象使用了同一个不合法的ID（首字符为数字、负号或小数点的ID为不合法ID）' },
    { 'FIX', '修正优化脚本的实数精度问题', '显性实数常量会在在小数点后3位失去精度' },
    { 'FIX', '修正提取mpq时输出目录的错误', 'prebuilt会被生成到默认版本的目录中' },
},
{
    version = '2.1',
    { 'NEW', '支持多语言' },
    { 'NEW', '支持命令行' },
    { 'FIX', '修正部分buff在简化后丢失的问题', 'Boar、Barm' },
    { 'FIX', '修正slk后无图标buff的显示问题' },
    { 'FIX', '修正slk时丢失部分平衡常数的问题', 'HERO等' },
    { 'FIX', '修正obj时显示平衡常数有修改的问题' },
    { 'FIX', '修正报告的一些错误', '简化的对象没有显示名字、可破坏物与装饰物没有显示正确的名字' },
},
{
    version = '2.0',
    { 'NEW', 'lni时会转换触发器', '需要设置YDWE关联地图。' },
    { 'NEW', '支持插件' },
    { 'NEW', 'lni时可以选择不导出lua脚本', '以便使用其他工具管理lua脚本。' },
    { 'CHG', '修改了lni目录结构', '放在script目录中的文件被认为是lua脚本，其他文件按照后缀名分类。' },
    { 'CHG', '不再产生多余的txt.ini文件' },
    { 'CHG', '模板lni显示值为空字符串的属性' },
    { 'CHG', '转换地图时给脚本加上时间戳', '避免魔兽将多次转换的地图视为同一张地图。' },
    { 'CHG', '转换地图时不能拖入新的地图', '避免界面出错。' },
    { 'FIX', '修正"使用科技"没有被引用的问题' },
    { 'FIX', '修正导入列表可能不正确的问题', '保存地图时会自动生成，但用户主动导入覆盖的文件，在转换后可能没有出现在导入列表上。'},
    { 'FIX', '修正读取slk时数据可能重置的问题', '部分无等级的空字符串会被还原为默认值。'},
    { 'FIX', '修正过长的文本可能不正确的问题', '反斜杠数量翻倍，换行变为|n。' },
    { 'FIX', '修正等价物文本可能丢失的问题', '例如："任意英雄"、"任意1级基地"等文本。' },
    { 'FIX', '修正非法ID的单位在slk后丢失的问题', '请尽量不要使用字母数字以外的字符作为对象ID。' },
    { 'FIX', '修正部分技能文本可能丢失的问题', '选择英雄等' },
    { 'FIX', '修正长文本在lni转obj后丢失的问题' },
},
{
    version = '1.9',
    { 'NEW', '支持游戏数据设置为"对战地图"', 'slk后地图会使用1.28.5的数据。'},
    { 'FIX', '修正slk后自定义单位名丢失的问题', '影响"转换单位类型为字符串"与"转换命令ID为字符串"。'}
},
{
    version = '1.8',
    { 'NEW', 'slk时可以选择优化脚本' },
    { 'NEW', 'slk时可以选择混淆脚本', '必须要开启优化脚本才可使用' },
    { 'CHG', '保留中立单位引用更少单位', '不引用类型为"特殊"的单位' },
    { 'CHG', '移除WE文件时不转换触发器'},
    { 'FIX', '修正部分SLK文件解析不正确的问题' },
    { 'FIX', '修正转换为obj与lni可能失败的问题', '物编中包含了错误的数据，现在会忽略并报告' },
    { 'FIX', '修正公式计算的一个错误', '例如<AHbz:XXXX,DataA1>、<AHbzXXX,DataA1>' },
    { 'FIX', '修正lni转换可能失败的问题', 'lni是通过slk转换出来的，且里面有一些奇怪数据' },
    { 'FIX', '修正转换lni后触发器文本丢失的问题' },
},
{
    version = '1.7',
    { 'NEW', '转换为lni时保留imp信息', '转换回obj格式后这些文件会继续覆盖编辑器自动生成的同名文件' },
    { 'FIX', '修正转换为obj时简化不正确的问题' },
    { 'FIX', '修正多行字符串会使slk错误的问题' },
    { 'FIX', '修正单位ui名可能失效的问题', '用于对战函数中给市场添加物品，以及检测是否有主基地' },
    { 'FIX', '修正obj格式下长文本导致的崩溃问题' },
},
{
    version = '1.6',
    { 'NEW', 'slk时可以选择是否优化装饰物', '优化装饰物后地形变化不会导致卡顿，但是玩下一张地图前需要重启魔兽，否则装饰物会显示不正常' },
    { 'CHG', 'slk文件的key不再无视大小写' },
    { 'FIX', '修正不支持中文路径的问题' },
    { 'FIX', '修正技能数据版本不正确的问题' },
    { 'FIX', '修正部分技能目标允许错误的问题', '默认目标允许为空的技能' },
},{
version = '1.5',
    { 'NEW', '没有修改过的自定义技能会被移除', '和魔兽的行为保持一致' },
    { 'CHG', '转换为lni时不生成imp文件' },
    { 'CHG', '简化时科技需求不搜索它的引用' },
    { 'CHG', '简化显示更多的详情' },
    { 'FIX', '修正随机物品会被简化掉的问题' },
    { 'FIX', '修正弹道速率为0优化后错误的问题', '弹道速度默认为1500(编辑器中错误的显示为0)' },
    { 'FIX', '修正imp中的文件分析不全的问题' },
    { 'FIX', '修正部分图标填空slk后崩溃的问题', '如影遁等技能' },
    { 'FIX', '修正触发器文本丢失的问题' },
    { 'FIX', '修正没有忽略无效对象的问题' },
    { 'FIX', '修正游戏界面文本可能丢失的问题', '换行后的文本会丢失' },
    { 'FIX', '修正部分报告后面多一个数字的问题' },
},
{
    version = '1.4',
    { 'FIX', '修正创建地图失败的问题' },
    { 'FIX', '修正读取lni对象等级错误的问题' },
    { 'FIX', '修正w3i字符串可能留在wts里的问题' },
    { 'FIX', '修正地图创建界面玩家数错误的问题' },
    { 'FIX', '修正地图信息中队伍玩家错误的问题' },
    { 'FIX', '修正可能丢失自定义对象的问题', '仅仅从默认对象上复制出来，没有修改任何属性的自定义对象会在转换成obj/lni后丢失' },
    { 'FIX', '修正转换obj后部分数据不可见的问题', '在编辑器中技能的DataA等数据显示为默认值' },
},
{
    version = '1.3',
    { 'NEW', '保留无法转换为obj/lni的slk数据', '有些slk数据无法转换成obj格式，会在转回slk时重新生成出来' },
    { 'NEW', 'slk后的文本不会出现DefaultString' },
    { 'NEW', '从wts读取的文本不会因"}"截断', '不要在长文本中使用"}"符号，否则魔兽和编辑器会将从该符号开始的字符丢弃' },
    { 'NEW', '往wts写入的文本会将"}"改为"|"', '不要在长文本中使用"}"符号，否则魔兽和编辑器会将从该符号开始的字符丢弃' },
    { 'CHG', '简化slk后的txt文件', '去掉重复的文本' },
    { 'CHG', '简化lni模板', 'template去掉超过等级的数据' },
    { 'FIX', '修正slk后无法研究科技的问题' },
    { 'FIX', '修正部分详情显示错误的问题' },
    { 'FIX', '修正平衡常数可能丢失的问题', '转换到obj或lni时，丢失平衡常数的修改' },
    { 'FIX', '修正部分空文本在slk后错误的问题' },
    { 'FIX', '修正无法放在txt的数据丢失的问题' },
    { 'FIX', '修正部分模型在slk后不显示的问题', '模型路径可以被转换为数字(路径开头是数字/负号/小数点+数字)' },
    { 'FIX', '修正部分平衡常数简化后失效的问题' },
    { 'FIX', '修正删除WE文件导致读取不全的问题', '(listfile)中不存在但导入列表中存在的文件没有搜索到' },
},
{
    version = '1.2',
    { 'NEW', '对象不再无视大小写', '例如A00A与A00a，会被视为两个对象' },
    { 'NEW', '现在会搜索导入表里的文件' },
    { 'NEW', '优化详情的显示' },
    { 'CHG', '只有slk的数据会移除超过等级的部分' },
    { 'CHG', '变身技能的buff引用改为搜索', 'Amil、AHav' },
    { 'CHG', '必须保留列表移除一些对象', 'Barm' },
    { 'CHG', '空的slk文件会保留文件头', '包含标题等信息,而再是个空文件' },
    { 'CHG', '生成lni时会使用正确的数据类型' },
    { 'FIX', '修正部分技能的引用分析错误的问题', 'Acoi、Acoh' },
    { 'FIX', '修正lpeg模块加载失败的问题' },
    { 'FIX', '修正市场没有被搜索到的问题' },
    { 'FIX', '修正没有读取的SLK会被删除的问题' },
    { 'FIX', '修正转换为SLK时数据可能不对的问题', '例如技能的[100,200,300,400,400]改成[100,200,300,500,400]，上个版本会错误的转换为[100,200,300,500,500]' },
    { 'FIX', '修正平衡常数分析不正确的问题' },
    { 'FIX', '修正部分物编文本没有截断的问题', '例如buff的描述应该只显示到逗号前' },
    { 'FIX', '修正生成lni时有冗余数据的问题', '超过4级的技能应该不显示与底板完全相同的属性' },
    { 'FIX', '修正w3i和imp文件不正确的问题' },
},
{
    version = '1.1',
    { 'NEW', '支持模型压缩', '有损压缩' },
    { 'NEW', '无法放在txt中的字符串会放在wts里', '尽量不要同时包含逗号和双引号' },
    { 'NEW', '增加部分选项的提示' },
    { 'NEW', '转换成OBJ时会补充必要文件', 'war3mapunits.doo' },
    { 'CHG', '重要的详情现在会更加显眼' },
    { 'CHG', '必须保留列表移除一些对象', 'Bbar、Bchd、Buad、Biwb' },
    { 'FIX', '修正某些格式互转地图不可用的问题' },
    { 'FIX', '修正无法读取南瓜头生成的txt的问题' },
    { 'FIX', '修正读取0级技能会出错的问题' },
    { 'FIX', '修正详情里的tip被截断的问题' },
}
}
