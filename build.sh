mkdir ./bld
cp ./app/*.py ./bld/
pip install requests -t ./bld/
pip install skillful -t ./bld/
cd ./bld
aws s3 cp s3://s3.amazonaws.com/grant-codebuild-output-bucket/output.tar/output.tar ./output.tar
zip -r ../lambda_deploy.zip .