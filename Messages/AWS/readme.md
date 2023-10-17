# Orquestração de Mensagens na AWS com Filtros Avançados usando Terraform

![terraform](https://img.shields.io/badge/-terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)
![amazonaws](https://img.shields.io/badge/-Amazon_Web_Services-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)
![amazonsqs](https://img.shields.io/badge/-Amazon_SQS-white?style=for-the-badge&logo=amazonsqs&color=FF4F8B&logoColor=white)

Este repositório contém código Terraform projetado para configurar um ambiente de mensagens na AWS. Ele cria um tópico no Serviço de Notificação Simples (SNS) e três filas no Serviço de Filas Simples (SQS). Além disso, configura as filas SQS para receber mensagens enviadas para o tópico SNS, aplicando filtros específicos para direcionar diferentes tipos de mensagens para as filas apropriadas.

Este código foi desenvolvido com base no tutorial [**Filtrar mensagens publicadas em tópicos com o Amazon SNS e o Amazon SQS**](https://aws.amazon.com/pt/getting-started/hands-on/filter-messages-published-to-topics/) da AWS.

Lembre-se de seguir as melhores práticas de segurança ao lidar com suas credenciais e informações sensíveis. Mantenha suas variáveis de ambiente seguras e evite incluir informações confidenciais diretamente no código.