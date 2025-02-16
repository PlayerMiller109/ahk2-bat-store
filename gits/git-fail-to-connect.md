[网络和 Internet - 代理](ms-settings:network-proxy) 查看地址和端口

```bash
# 假设代理地址为 100.0.0.1, 端口为 5000
set "local=http://100.0.0.1:5000"
git config --global http.proxy %local%
git config --global https.proxy %local%
```

```bash
# 取消代理
git config --global --unset http.proxy
git config --global --unset https.proxy
```
