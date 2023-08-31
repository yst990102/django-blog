# 使用一个基础镜像
FROM python:3.8

# 设置环境变量
ENV PYTHONUNBUFFERED 1

# 创建并切换工作目录
WORKDIR /app

# 将依赖项复制到容器
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# 将项目文件复制到容器
COPY . /app/

EXPOSE 8000
