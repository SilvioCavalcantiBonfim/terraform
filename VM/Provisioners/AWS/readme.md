# Criando uma Máquina Virtual Linux na AWS

![terraform](https://img.shields.io/badge/-terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)
![amazonaws](https://img.shields.io/badge/-Amazon_Web_Services-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)
![amazonec2](https://img.shields.io/badge/-Amazon_EC2-white?style=for-the-badge&logo=amazonec2&color=ff9900&logoColor=white)
![amazons3](https://img.shields.io/badge/-Amazon_S3-white?style=for-the-badge&logo=amazons3&color=569A31&logoColor=white)

Este repositório contém código Terraform para criar uma Máquina Virtual (VM) com sistema operacional Linux na Amazon Web Services (AWS), com o armazenamento do `remote state` da VM em um Amazon S3 Bucket e acessando as informações da VPC de um `remote state` no mesmo bucket. Além disso Cria arquivos no diretório `/temp` do sistema usando provisioners.

Lembre-se de seguir as melhores práticas de segurança ao lidar com suas credenciais e informações sensíveis. Mantenha suas variáveis de ambiente seguras e evite incluir informações confidenciais diretamente no código.