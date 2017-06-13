mkdir ./bld
cp ./app/*.py ./bld/
pip install requests -t ./bld/
pip install skillful -t ./bld/
cd ./bld
wget https://s3.amazonaws.com/grant-codebuild-output-bucket/output.tar/output.tar
zip -r ../lambda_deploy.zip .