# 基础镜像
FROM python:3.13-slim AS base 
# 工作目录
WORKDIR /app
# 安装依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# 复制文件(app)
COPY . . 
# 运行
CMD ["python", "docu/hello_world.py"]
#ENTRYPOINT ["python", "hello_world.py"] 优先级高，不容易被覆盖