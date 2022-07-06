#!/bin/bash
git submodule init
git submodule update
yarn
cd mfe-product-detail && yarn
cd ../mfe-product-relate && yarn
cd ../mfe-product-cart && yarn
cd ../mfe-share-lib && yarn
cd ../root-file && yarn
cd ../ && yarn serve