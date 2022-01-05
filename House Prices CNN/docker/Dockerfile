#FROM jupyter/scipy-notebook
FROM python:3

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

# Credencias Kaggle (site kaggle)
RUN mkdir /root/.kaggle
COPY kaggle.json /root/.kaggle

RUN kaggle competitions download -c house-prices-advanced-regression-techniques
RUN unzip -o house-prices-advanced-regression-techniques.zip