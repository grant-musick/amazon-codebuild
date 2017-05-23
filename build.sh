mkdir ./bld
cp ./app/*.py ./bld/
pip install requests -t ./bld/
pip install skillful -t ./bld/
cd ./bld
zip -r ../lambda_deploy.zip .