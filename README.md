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

> <span style="font-family: serif;">RandCustomKv(names string) []map[string]string</span><br/>
> <i style="color:gray; font-size: 80%"><b>从多个kv库中随机1个kv</b> `name`是kv库下的文件名 不含后缀 多个kv库可用英式逗号隔开。</i>

> <span style="font-family: serif;">GetCustomKv(names string, n int) []map[string]string</span><br/>
> <i style="color:gray; font-size: 80%"><b>从多个kv库中随机多个kv</b> `name`是kv库下的文件名 不含后缀 多个kv库可用英式逗号隔开。`n` 要获取的数目</i>