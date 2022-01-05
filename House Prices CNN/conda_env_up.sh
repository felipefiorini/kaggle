#!/bin/bash

conda_env="kaggle_cnn"

conda env remove -n $conda_env

if [ ! -e "./conda_env.yml" ]; then
    conda env create -f ./env.yml -y
else
    conda create --name $conda_env -y
fi

conda activate $conda_env-env

conda env update

kaggle competitions download -c house-prices-advanced-regression-techniques -p ./data --force
unzip -o ./data/house-prices-advanced-regression-techniques.zip -d ./data