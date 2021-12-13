# rc_wlink_service
站群内容生成

### 模板内函数集合

> <span style="font-family: serif;">YesOrNo() bool</span><br/>
> <i style="color:gray; font-size: 80%"><b>随机返回一个bool值</b></i>

> <span style="font-family: serif;">Add(n ...int) int</span><br/>
> <i style="color:gray; font-size: 80%"><b>累加</b> 对`n`进行累加 返回累加结果</i>

> <span style="font-family: serif;">Split(str string, sep string) []string</span><br/>
> <i style="color:gray; font-size: 80%"><b>切割字符串</b> 使用`sep`分割`str`</i>

> <span style="font-family: serif;">Join(sep string, str ...string) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>合并字符串</b> 使用`sep`合并`str`</i>

> <span style="font-family: serif;">Substr(str string, l int, add ...string) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>截取字符串</b> 如果`str`的长度超出`l` 则截取`str`从开头至`l`的长度 如果指定了`add`则在截取字符串的未尾加上`add`</i>

> <span style="font-family: serif;">Replace(str string, old, new string, n int) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>替换字符串</b> 把`str`中的`old`字符串替换成`new`字符串，指定`n`表示替换多少次</i>

> <span style="font-family: serif;">GetLib(name string, n int) []string</span><br/>
> <i style="color:gray; font-size: 80%"><b>从word库中随机多个词</b> `name`是word库下的文件名 不含后缀 `n`获取的数目</i>

> <span style="font-family: serif;">RandLib(name string) []string</span><br/>
> <i style="color:gray; font-size: 80%"><b>从word库中随机1个词</b> `name`是word库下的文件名 不含后缀</i>

> <span style="font-family: serif;">GetKv(name string, n int) []map[string]string</span><br/>
> <i style="color:gray; font-size: 80%"><b>从kv库中随机多个kv</b> `name`是kv库下的文件名 不含后缀 `n`获取的数目</i>

> <span style="font-family: serif;">RandKv(name string) map[string]string</span><br/>
> <i style="color:gray; font-size: 80%"><b>从kv库中随机1个kv</b> `name`是kv库下的文件名 不含后缀</i>

> <span style="font-family: serif;">RandCustomKv(names string) map[string]string</span><br/>
> <i style="color:gray; font-size: 80%"><b>从多个kv库中随机1个kv</b> `name`是kv库下的文件名 不含后缀 多个kv库可用英式逗号隔开。</i>

> <span style="font-family: serif;">GetCustomKv(names string, n int) []map[string]string</span><br/>
> <i style="color:gray; font-size: 80%"><b>从多个kv库中随机多个kv</b> `name`是kv库下的文件名 不含后缀 多个kv库可用英式逗号隔开。`n` 要获取的数目</i>

> <span style="font-family: serif;">RandChar(l, max int) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>随机字符串</b> `l`最小长度 `max`最大长度 `i` 和 `max` 相同时 则长度取 `i` 包含 小写字母和数字（无大写字母和特殊符号）</i>

> <span style="font-family: serif;">RandNumber(l, max int) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>随机数字串</b> `l`最小长度 `max`最大长度 `i` 和 `max` 相同时 则长度取 `i`</i>

> <span style="font-family: serif;">RandInt(min, max int) int</span><br/>
> <i style="color:gray; font-size: 80%"><b>随机从数字中抽取一个数</b> `min`最小的数 `max`最大的数</i>

> <span style="font-family: serif;">TimeNow() time.Time</span><br/>
> <i style="color:gray; font-size: 80%"><b>当前时间</b></i>

> <span style="font-family: serif;">TimeFormat(format string, t ...time.Time) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>格式化时间 如果不传入`t`则取用当前时间</b></i>

> <span style="font-family: serif;">RandCustomChar(l, max int, s string) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>随机指定的字符</b> `l`最小长度 `max`最大长度 `i` 和 `max` 相同时 则长度取 `i` 从`s`中随机</i>

> <span style="font-family: serif;">RandWord(word ...string) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>随机返回一个词</b> 从`word`中随机返回一个词 如：`{{RandWord "a" "b" "c" "d" "e" "f"}}`</i>

> <span style="font-family: serif;">RandInsertWord(str, word string) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>插入关键词</b> 在`str`中的随机位置 插入1次`word`关键词 如需多次，可多次调用该方法</i>

> <span style="font-family: serif;">ParseTag(tpl string) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>解析标题</b> `tpl`将被解析后返回</i>

> <span style="font-family: serif;">PinYin(s string) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>汉字转拼音</b> `s`转成全拼后返回</i>

> <span style="font-family: serif;">PinYinFirst(s string) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>汉字转拼音</b> 返回`s`的首拼音字母</i>

> <span style="font-family: serif;">SearchKV(name, word string) map[string][]string</span><br/>
> <i style="color:gray; font-size: 80%"><b>搜索kv库</b> 在`name`库中搜索包含`word`的kv列表</i>

> <span style="font-family: serif;">FindKV(name, k string) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>根据k找到v</b> 在`name`库中根据`k`找到val</i>

> <span style="font-family: serif;">Text2HTML(s string) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>不转义HTML</b> `s`中的html将不被转义 示例：`{{(RandWord "a" "b" "c" "d" "e" "f") | Text2HTML}}`</i>

> <span style="font-family: serif;">Text2HTMLAttr(s string) string</span><br/>
> <i style="color:gray; font-size: 80%"><b>不转义HTML属性</b></i>

> <span style="font-family: serif;">Text2JS(s string) string</span><br/>
> <i style="color:gray; font-size: 80%"></i>

> <span style="font-family: serif;">Text2JSStr(s string) string</span><br/>
> <i style="color:gray; font-size: 80%"></i>

> <span style="font-family: serif;">Text2CSS(s string) string</span><br/>
> <i style="color:gray; font-size: 80%"></i>

> <span style="font-family: serif;">Text2URL(s string) string</span><br/>
> <i style="color:gray; font-size: 80%"></i>