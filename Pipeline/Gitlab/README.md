# Criando uma Máquina Virtual Linux na AWS

![terraform](https://img.shields.io/badge/-terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)
![amazonaws](https://img.shields.io/badge/-Amazon_Web_Services-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)
![amazonec2](https://img.shields.io/badge/-Amazon_EC2-white?style=for-the-badge&logo=amazonec2&color=ff9900&logoColor=white)
![amazons3](https://img.shields.io/badge/-Amazon_S3-white?style=for-the-badge&logo=amazons3&color=569A31&logoColor=white)
![microsoftazure](https://img.shields.io/badge/-Microsoft_Azure-white?style=for-the-badge&logo=microsoftazure&color=0078D7&logoColor=white)
![Gitlab](https://img.shields.io/badge/-Gitlab-white?style=for-the-badge&logo=gitlab&color=FC6D26&logoColor=white)

Este repositório contém código Terraform para criar duas Máquinas Virtuais (VM) com sistema operacional Linux na Amazon Web Services (AWS) e na microsoft Azure, com o armazenamento do `remote state` das VM em um Azure Container Storage e acessando as informações da VPC de um `remote state` em uma Amazon S3 Bucket e as informações da Virtual Network (VNET) de um `remote state` no mesmo Azure Container Storage que armazenamos o `remote state` das VMs.

[![Gitlab](https://img.shields.io/badge/-Repositório_do_Gitlab-white?style=for-the-badge&logo=gitlab&color=FC6D26&logoColor=white)](https://gitlab.com/SilvioCavalcantiBonfim/gitlab-ci)

Lembre-se de seguir as melhores práticas de segurança ao lidar com suas credenciais e informações sensíveis. Mantenha suas variáveis de ambiente seguras e evite incluir informações confidenciais diretamente no código.