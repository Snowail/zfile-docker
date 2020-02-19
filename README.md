# zfile-docker
在线云盘zfile的Docker版
```
docker run -d --name zfile \
      -p 8080:8080 --restart=always \
      -v ~/zfile/config:/root/.zfile \
      -v ~/zfile/data:/zfile \
      zfile
 ```
