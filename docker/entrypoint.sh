#!/bin/bash

# this script checks if .tf files exist in the workspace directory and executes them using terraform
if ls *.tf > /dev/null; then

    echo "✅ Terraform files found in the workspace directory"

    echo "✅ Initializing Terraform"
    terraform init -upgrade

    echo "✅ Planning Terraform"
    terraform plan -out=plan.out

    echo "✅ Applying Terraform"
    terraform apply plan.out

    echo "✅ Terraform applied successfully"

    echo "✅ Destroying Terraform"
    terraform destroy -auto-approve

    echo "✅ Terraform destroyed successfully"  

else
    echo "❌ No .tf files found in the workspace directory"
fi

exec /bin/bash
