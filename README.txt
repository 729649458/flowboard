# 上传这两个文件到 GitHub

1. `Dockerfile`
2. `flowboard-source.zip`

## 步骤

1. 打开 https://github.com/729649458/flowboard/upload
2. 把这两个文件拖进去（只拖文件，不拖文件夹）
3. 点“提交更改”

## 然后在 Render 部署

1. https://render.com → New + → Web Service
2. 选择 `flowboard` 仓库
3. Runtime 选 **Docker**
4. 环境变量：
   - `JWT_SECRET`：随便填一串长随机字符
   - `DATA_DIR`：`/data`
5. 点 Create Web Service，等 5–10 分钟
6. 拿到 `https://xxx.onrender.com` 域名
