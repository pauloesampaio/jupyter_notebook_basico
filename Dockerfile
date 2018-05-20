# Usa uma imagem oficial do jupyter notebook como base
FROM jupyter/base-notebook

# Copy o requirements.txt para a imagem
WORKDIR .
ADD requirements.txt .

# instala as bilbiotecas do requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# deixa a porta 8888 aberta (eh a que o jupyter notebook usa)
EXPOSE 8888

WORKDIR ./work
