# Criando uma Máquina Virtual Linux na Alibaba Cloud

![terraform](https://img.shields.io/badge/-terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)
![alibabacloud](https://img.shields.io/badge/-Alibaba_Cloud-white?style=for-the-badge&logo=alibabacloud&color=FF6A00&logoColor=white)


Este repositório contém código Terraform para criar uma Máquina Virtual (VM) com sistema operacional Linux na Alibaba Cloud, com o armazenamento do `remote state` da VM em uma bucket na Alibaba Cloud e acessando as informações da VPC de um `remote state` na mesma bucket. Além disso Cria arquivos no diretório `/temp` do sistema usando provisioners.

Lembre-se de seguir as melhores práticas de segurança ao lidar com suas credenciais e informações sensíveis. Mantenha suas variáveis de ambiente seguras e evite incluir informações confidenciais diretamente no código.
