#imagem base
FROM python:3.10.12

#diretorio base dos arquivos
WORKDIR /app

#instrucao para pegar um arquivo/diretorio na imagem
COPY requirements.txt .

#instalacao de dependencias (construcao do container)
RUN python -m pip install -r requirements.txt

#copia todos arquivo/diretorio na imagem
COPY . .

#instrucao de inicializacao (inicializacao do container)
CMD [ "gunicorn", "--bind", "0.0.0.0:5000", "app:app" ]