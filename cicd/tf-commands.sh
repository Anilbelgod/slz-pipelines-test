# steps:
#   - id: 'Terraform Init'
#     name: "hashicorp/terraform:1.2.9"
#     entrypoint: 'sh'
#     dir: "${_APPLICATION_DIRECTORY}"
#     args:
#       - '-c'
#       - |
#         echo "working directory is ${ dir }"
#         terraform init
#         echo "working directory is ${ dir }"

#   - id: 'Terraform Plan'
#     name: "hashicorp/terraform:1.2.9"
#     entrypoint: 'sh'
#     dir: "${_APPLICATION_DIRECTORY}"
#     args:
#       - '-c'
#       - |
#         terraform plan

#   - id: 'Terraform Apply'
#     name: "${_TF_IMAGE}"
#     entrypoint: 'sh'
#     dir: "${_APPLICATION_DIRECTORY}"
#     args:
#       - '-c'
#       - |
#         terraform apply -auto-approve

for dir in "$@"; do
  echo "working directory is $dir"
  cd $dir
  terraform init
  terraform plan
  cd -
done
