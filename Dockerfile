#PythonのDockerイメージを指定
FROM python:3.6

#ファイルをappディレクトリに追加
# COPY preprocessing/ /app/
# COPY modules/ /app/
COPY hoge.py /app/


#ルートディレクトリ設定
WORKDIR /app

# CMD ["python", "preprocessing.py", "https://dev-api.agpro.technology/api/samples/","P32780-A-PS-SOIL", "P33344-A-PS-SOIL", "akiyoshi@aaaphj.co.jp password"]
#↑CMDのパスはdockerfileからのパスになるっぽい...

#実行するときはmodules,preprocessingと同階層で`docker build -t preprocessing3（←イメージ名） --no-cache -f preprocessing/Dockerfile .`を実行
#参考「Dockerで上の階層はCOPYできないので、ビルドコンテキストを上の階層にする」https://miuuuu.hatenablog.com/entry/2020/03/22/162221

#コンテナ起動は`docker run --rm -it preprocessing3（←イメージ名）`

CMD ["python", "hoge.py"]
