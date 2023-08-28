# Criando uma Máquina Virtual Linux no Google Cloud Platform

![terraform](https://img.shields.io/badge/-terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)
![googlecloud](https://img.shields.io/badge/-Google_Cloud_Platform-white?style=for-the-badge&logo=googlecloud&color=0078D7&logoColor=white)

Este repositório contém código Terraform para criar uma Máquina Virtual (VM) com sistema operacional Linux no Google Cloud Platform (GCP), com o armazenamento do `remote state` da VM em uma bucket na GCP e acessando as informações da VPC de um `remote state` na mesma bucket. Além disso Cria arquivos no diretório `/temp` do sistema usando provisioners.

Lembre-se de seguir as melhores práticas de segurança ao lidar com suas credenciais e informações sensíveis. Mantenha suas variáveis de ambiente seguras e evite incluir informações confidenciais diretamente no código.
