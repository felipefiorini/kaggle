#!/bin/bash

conda_env="kaggle_cnn"

conda env export > conda_env.yml

conda deactivate

conda env remove -n $conda_env