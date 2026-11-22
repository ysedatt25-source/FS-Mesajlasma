FROM python:3.12-slim
WORKDIR /app
RUN python -c "import urllib.request,hashlib,zipfile,io; b=urllib.request.urlopen('https://github.com/ysedatt25-source/FS-Mesajlasma/releases/download/v34.32-dev.1/FS-source-34.32-ci.3.zip').read(); assert hashlib.sha256(b).hexdigest()=='447852d5f30ba0ad3210c12c03b900d59d5ae3dd98b5939f7c50e6b71bd08e27'; zipfile.ZipFile(io.BytesIO(b)).extractall('/app')"
RUN pip install --no-cache-dir -r server/requirements.txt
ENV FS_HOST=0.0.0.0 FS_DATA=/data PYTHONUNBUFFERED=1
EXPOSE 8787
CMD ["sh", "-c", "FS_PORT=${PORT:-8787} exec python server/app.py"]
