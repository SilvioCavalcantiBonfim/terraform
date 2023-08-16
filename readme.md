# Repositório de Projetos Terraform

![terraform](https://img.shields.io/badge/-terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)
![amazonaws](https://img.shields.io/badge/-Amazon_AWS-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)
![microsoftazure](https://img.shields.io/badge/-Microsoft_Azure-white?style=for-the-badge&logo=microsoftazure&color=0078D7&logoColor=white)
![googlecloud](https://img.shields.io/badge/-Google_Cloud_Platform-white?style=for-the-badge&logo=googlecloud&color=0078D7&logoColor=white)
![alibabacloud](https://img.shields.io/badge/-Alibaba_Cloud-white?style=for-the-badge&logo=alibabacloud&color=FF6A00&logoColor=white)

Bem-vindo ao repositório de projetos Terraform! Aqui você encontrará uma coleção de projetos individuais, cada um focado em diferentes aspectos da infraestrutura como código utilizando o Terraform. Abaixo estão os links para cada um desses projetos, juntamente com as instruções sobre como configurar suas credenciais da AWS e Azure como variáveis de ambiente.

## Projetos Disponíveis

1. [Projeto 1 - Create AWS S3 Bucket](./Create_AWS_S3_Bucket): Cria um bucket no Amazon S3 para armazenar e gerenciar objetos, como arquivos, imagens e dados, na nuvem da AWS.

    [![terraform](https://img.shields.io/badge/-Código_Terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)](./Create_AWS_S3_Bucket/readme.md)

2. [Projeto 2 - Create Azure Storege Account](./Create_Azure_Storege_Account): Cria um armazenamento no Microsoft Azure para armazenar diversos tipos de dados, como blobs, tabelas e filas, utilizando o código Terraform neste repositório.

    [![terraform](https://img.shields.io/badge/-Código_Terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)](./Create_Azure_Storege_Account/readme.md)

3. [Projeto 3 - Create Google Storage Bucket](./Create_Google_Storage_Bucket): Cria um bucket de armazenamento no Google Cloud para armazenar e gerenciar objetos e dados com eficiência. Use essa solução flexível e escalável para armazenar arquivos, imagens, vídeos e muito mais.

    [![terraform](https://img.shields.io/badge/-Código_Terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)](./Create_Google_Storage_Bucket/readme.md)

4. [Projeto 4 - Create Alibaba Cloud Bucket](./Create_Alibaba_Cloud_Bucket): Cria um bucket de armazenamento no Alibaba Cloud para armazenar e gerenciar seus objetos e dados com eficiência. Use essa solução flexível e escalável para armazenar arquivos, imagens, vídeos e muito mais.

    [![terraform](https://img.shields.io/badge/-Código_Terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)](./Create_Alibaba_Cloud_Bucket/readme.md)

## Configuração das Credenciais

Antes de executar qualquer um dos projetos acima, é necessário configurar suas credenciais da AWS e Azure como variáveis de ambiente. Siga as instruções abaixo para configurar suas credenciais:

### AWS

1. Configure suas credenciais da AWS como variáveis de ambiente:
```bash
   export AWS_ACCESS_KEY_ID=seu_access_key
   export AWS_SECRET_ACCESS_KEY=seu_secret_key
```

2. Certifique-se de que as variáveis de ambiente estejam configuradas corretamente antes de executar o projeto.

### Azure

1. Configure suas credenciais da Azure como variáveis de ambiente:
```bash
   export ARM_CLIENT_ID=seu_client_id
   export ARM_CLIENT_SECRET=seu_client_secret
   export ARM_SUBSCRIPTION_ID=seu_subscription_id
   export ARM_TENANT_ID=seu_tenant_id
```
2. Verifique se todas as variáveis de ambiente estão definidas corretamente antes de iniciar o projeto.

Lembre-se de substituir `seu_access_key`, `seu_secret_key`, `seu_client_id`, `seu_client_secret`, `seu_subscription_id` e `seu_tenant_id` pelos valores correspondentes das suas contas da AWS e Azure.

### Google Cloud Plataform

"Certifique-se de estar com as credenciais do Google Cloud Platform configuradas com o gcloud.

Acesse o site oficial do [Google Cloud SDK](https://cloud.google.com/sdk/docs/install?hl=pt-br) para encontrar o instalador apropriado para o seu sistema operacional (Windows, macOS ou Linux).

Siga as instruções de instalação fornecidas na página para o seu sistema operacional específico. Geralmente, envolve baixar e executar o instalador.

Por fim, execute o seguinte comando:
```bash
gcloud auth application-default login
```
Isso executará a autenticação na sua conta do Google Cloud Platform.


### Alibaba Cloud

1. Configure suas credenciais da Alibaba Cloud como variáveis de ambiente:
```bash
    export ALICLOUD_ACCESS_KEY=seu_access_key
    export ALICLOUD_SECRET_KEY=seu_secret_key
    export ALICLOUD_REGION=sua_region
```

2. Certifique-se de que as variáveis de ambiente estejam configuradas corretamente antes de executar o projeto.
## Contribuição

Sinta-se à vontade para contribuir com novos projetos ou melhorias nos projetos existentes. Crie um fork deste repositório, faça suas alterações e envie um pull request. Suas contribuições são bem-vindas!

Caso tenha dúvidas ou precise de ajuda, não hesite em criar uma issue neste repositório.

Divirta-se explorando e provisionando infraestrutura com Terraform!

> Nota: Certifique-se de seguir as melhores práticas de segurança ao lidar com suas credenciais e informações sensíveis. Mantenha suas variáveis de ambiente seguras e evite incluir informações confidenciais diretamente no código. Utilize um gerenciador de segredos, como o AWS Secrets Manager ou o Azure Key Vault, sempre que possível.
