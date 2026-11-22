FROM python:3.12-slim
WORKDIR /app
RUN python -c "import urllib.request,hashlib,zipfile,io; b=urllib.request.urlopen('https://github.com/ysedatt25-source/FS-Mesajlasma/releases/download/v34.32-dev.1/FS-source-34.32-ci.2.zip').read(); assert hashlib.sha256(b).hexdigest()=='d3617d07acd1d9c5499dcf0bbb883f81fb5f4876f52a641b26b02edb5e6672c4'; zipfile.ZipFile(io.BytesIO(b)).extractall('/app')"
RUN pip install --no-cache-dir -r server/requirements.txt
ENV FS_HOST=0.0.0.0 FS_DATA=/data PYTHONUNBUFFERED=1
EXPOSE 8787
CMD ["sh", "-c", "FS_PORT=${PORT:-8787} exec python server/app.py"]
