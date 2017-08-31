# openresty-proxy-block-ads
使用openresty(nginx+lua)经过简单的配置来做为http proxy达到屏蔽广告的目的. 注意: 不支持https代理.

a http proxy for ads blocking. 

###
firefox下设置http proxy .注意ssl代理请留空.

![](https://github.com/hellochineseworld/openresty-proxy-block-ads/raw/master/docs/firefox-proxy-setting.png) 

###
效果
firebug下查看被屏蔽的内容(js)
![](https://github.com/hellochineseworld/openresty-proxy-block-ads/raw/master/docs/debug-firebug.png) 

服务器上使用grep查看日志
![](https://github.com/hellochineseworld/openresty-proxy-block-ads/raw/master/docs/terminal-debug-grep.png)  

没有屏蔽广告时:
![](https://github.com/hellochineseworld/openresty-proxy-block-ads/raw/master/docs/demo-page-1.png)  

屏幕广告后:
![](https://github.com/hellochineseworld/openresty-proxy-block-ads/raw/master/docs/demo-page-1-clear.png)  

