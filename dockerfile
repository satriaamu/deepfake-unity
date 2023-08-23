FROM python:3.8

# Instal dependensi yang diperlukan
RUN pip install jupyter

# Salin proyek Deepfake ke dalam kontainer
COPY . /app
WORKDIR /app

# Buat port Jupyter Notebook tersedia
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root"]