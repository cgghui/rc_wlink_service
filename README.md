# rc_wlink_service
站群内容生成

### 模板内函数集合

> <span style="font-family: serif;"><b>YesOrNo() bool</b></span><br/>
> <i style="color:gray; font-size: 80%">随机返回一个bool值</i>

> <span style="font-family: serif;"><b>Add(n ...int) int</b></span><br/>
> <i style="color:gray; font-size: 80%"><font color="#0000dd">累加</font> 对`n`进行累加 返回累加结果</i>

> <span style="font-family: serif;"><b>Split(str string, sep string) []string</b></span><br/>
> <i style="color:gray; font-size: 80%"><span style="color:blue">切割字符串</span> 使用`sep`分割`str`</i>

> <span style="font-family: serif;"><b>Join(sep string, str ...string) string</b></span><br/>
> <i style="color:gray; font-size: 80%"><span style="color:blue">合并字符串</span> 使用`sep`合并`str`</i>

> <span style="font-family: serif;"><b>Substr(str string, l int, add ...string) string</b></span><br/>
> <i style="color:gray; font-size: 80%"><span style="color:blue">截取字符串</span> 如果`str`的长度超出`l` 则截取`str`从开头至`l`的长度 如果指定了`add`则在截取字符串的未尾加上`add`</i>

> <span style="font-family: serif;"><b>Replace(str string, old, new string, n int) string</b></span><br/>
> <i style="color:gray; font-size: 80%">替换字符串 把`str`中的`old`字符串替换成`new`字符串，指定`n`表示替换多少次</i>

> <span style="font-family: serif;"><b>GetLib(name string, n int) []string</b></span><br/>
> <i style="color:gray; font-size: 80%">从word库中随机多个词 `name`是word库下的文件名 不含后缀 `n`获取的数目</i>

> <span style="font-family: serif;"><b>RandLib(name string) []string</b></span><br/>
> <i style="color:gray; font-size: 80%">从word库中随机1个词 `name`是word库下的文件名 不含后缀</i>

> <span style="font-family: serif;"><b>GetKv(name string, n int) []map[string]string</b></span><br/>
> <i style="color:gray; font-size: 80%">从kv库中随机多个kv `name`是kv库下的文件名 不含后缀 `n`获取的数目</i>

> <span style="font-family: serif;"><b>RandKv(name string) map[string]string</b></span><br/>
> <i style="color:gray; font-size: 80%">从kv库中随机1个kv `name`是kv库下的文件名 不含后缀</i>

> <span style="font-family: serif;"><b>RandCustomKv(names string) map[string]string</b></span><br/>
> <i style="color:gray; font-size: 80%">从多个kv库中随机1个kv `name`是kv库下的文件名 不含后缀 多个kv库可用英式逗号隔开。</i>

> <span style="font-family: serif;"><b>GetCustomKv(names string, n int) []map[string]string</b></span><br/>
> <i style="color:gray; font-size: 80%">从多个kv库中随机多个kv `name`是kv库下的文件名 不含后缀 多个kv库可用英式逗号隔开。`n` 要获取的数目</i>

> <span style="font-family: serif;"><b>RandChar(l, max int) string</b></span><br/>
> <i style="color:gray; font-size: 80%">随机字符串 `l`最小长度 `max`最大长度 `i` 和 `max` 相同时 则长度取 `i` 包含 小写字母和数字（无大写字母和特殊符号）</i>

> <span style="font-family: serif;"><b>RandNumber(l, max int) string</b></span><br/>
> <i style="color:gray; font-size: 80%">随机数字串 `l`最小长度 `max`最大长度 `i` 和 `max` 相同时 则长度取 `i`</i>

> <span style="font-family: serif;"><b>RandInt(min, max int) int</b></span><br/>
> <i style="color:gray; font-size: 80%">随机从数字中抽取一个数 `min`最小的数 `max`最大的数</i>

> <span style="font-family: serif;"><b>TimeNow() time.Time</b></span><br/>
> <i style="color:gray; font-size: 80%">当前时间</i>

> <span style="font-family: serif;"><b>TimeFormat(format string, t ...time.Time) string</b></span><br/>
> <i style="color:gray; font-size: 80%">格式化时间 如果不传入`t`则取用当前时间</b></i>

> <span style="font-family: serif;"><b>RandCustomChar(l, max int, s string) string</b></span><br/>
> <i style="color:gray; font-size: 80%">随机指定的字符 `l`最小长度 `max`最大长度 `i` 和 `max` 相同时 则长度取 `i` 从`s`中随机</i>

> <span style="font-family: serif;"><b>RandWord(word ...string) string</b></span><br/>
> <i style="color:gray; font-size: 80%">随机返回一个词 从`word`中随机返回一个词 如：`{{RandWord "a" "b" "c" "d" "e" "f"}}`</i>

> <span style="font-family: serif;"><b>RandInsertWord(str, word string) string</b></span><br/>
> <i style="color:gray; font-size: 80%">插入关键词 在`str`中的随机位置 插入1次`word`关键词 如需多次，可多次调用该方法</i>

> <span style="font-family: serif;"><b>ParseTag(tpl string) string</b></span><br/>
> <i style="color:gray; font-size: 80%">解析标题 `tpl`将被解析后返回</i>

> <span style="font-family: serif;"><b>PinYin(s string) string</b></span><br/>
> <i style="color:gray; font-size: 80%">汉字转拼音 `s`转成全拼后返回</i>

> <span style="font-family: serif;"><b>PinYinFirst(s string) string</b></span><br/>
> <i style="color:gray; font-size: 80%">汉字转拼音 返回`s`的首拼音字母</i>

> <span style="font-family: serif;"><b>SearchKV(name, word string) map[string][]string</b></span><br/>
> <i style="color:gray; font-size: 80%">搜索kv库 在`name`库中搜索包含`word`的kv列表</i>

> <span style="font-family: serif;"><b>FindKV(name, k string) string</b></span><br/>
> <i style="color:gray; font-size: 80%">根据k找到v 在`name`库中根据`k`找到val</i>

> <span style="font-family: serif;"><b>Text2HTML(s string) string</b></span><br/>
> <i style="color:gray; font-size: 80%">不转义HTML `s`中的html将不被转义 示例：`{{(RandWord "a" "b" "c" "d" "e" "f") | Text2HTML}}`</i>

> <span style="font-family: serif;"><b>Text2HTMLAttr(s string) string</b></span><br/>
> <i style="color:gray; font-size: 80%">不转义HTML属性</i>

> <span style="font-family: serif;"><b>Text2JS(s string) string</b></span><br/>
> <i style="color:gray; font-size: 80%"></i>

> <span style="font-family: serif;"><b>Text2JSStr(s string) string</b></span><br/>
> <i style="color:gray; font-size: 80%"></i>

> <span style="font-family: serif;"><b>Text2CSS(s string) string</b></span><br/>
> <i style="color:gray; font-size: 80%"></i>

> <span style="font-family: serif;"><b>Text2URL(s string) string</b></span><br/>
> <i style="color:gray; font-size: 80%"></i>

### -

> <span style="font-family: serif;"><b>{{.HostRoot}} string</b></span><br/>
> <i style="color:gray; font-size: 80%">当前访问的顶级域名</i>

> <span style="font-family: serif;"><b>{{.HostCurrent}} string</b></span><br/>
> <i style="color:gray; font-size: 80%">当前访问的域名</i>

> <span style="font-family: serif;"><b>{{.Param "k string"}} string</b></span><br/>
> <i style="color:gray; font-size: 80%">从当前请求的header中获取以 “Param-” 开头的标头值， `{{.Param "TopHost"}}`</i>