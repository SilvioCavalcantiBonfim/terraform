# Repositório de Projetos Terraform para Infraestrutura em Nuvem

![terraform](https://img.shields.io/badge/-terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)
![amazonaws](https://img.shields.io/badge/-Amazon_AWS-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)
![microsoftazure](https://img.shields.io/badge/-Microsoft_Azure-white?style=for-the-badge&logo=microsoftazure&color=0078D7&logoColor=white)
![googlecloud](https://img.shields.io/badge/-Google_Cloud_Platform-white?style=for-the-badge&logo=googlecloud&color=0078D7&logoColor=white)
![alibabacloud](https://img.shields.io/badge/-Alibaba_Cloud-white?style=for-the-badge&logo=alibabacloud&color=FF6A00&logoColor=white)

## Bem-vindo ao Repositório de Projetos Terraform

Bem-vindo ao repositório de projetos Terraform! Este repositório é uma coleção de projetos criados como parte do curso **Terraform - Do Básico ao Avançado**, disponível na plataforma **Udemy**. Cada projeto foca em aspectos específicos da infraestrutura como código usando a ferramenta Terraform, abordando cenários de armazenamento (Storage), máquinas virtuais (VM) e redes virtuais (VPC) nas principais plataformas de nuvem.

## Estrutura do Repositório

Aqui estão os projetos disponíveis no repositório, organizados por recursos e plataformas de nuvem:

### Armazenamento (Storage)
1.**Create** - Cria um estrutura de armazenamento na cloud para armazenar e gerenciar objetos.

[![amazonaws](https://img.shields.io/badge/-AWS-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)](./Storage/Create/AWS/readme.md)
[![microsoftazure](https://img.shields.io/badge/-Azure-white?style=for-the-badge&logo=microsoftazure&color=0078D7&logoColor=white)](./Storage/Create/Azure/readme.md)
[![alibabacloud](https://img.shields.io/badge/-Alibaba-white?style=for-the-badge&logo=alibabacloud&color=FF6A00&logoColor=white)](./Storage/Create/Alibaba/readme.md)
[![googlecloud](https://img.shields.io/badge/-GCP-white?style=for-the-badge&logo=googlecloud&color=0078D7&logoColor=white)](./Storage/Create/GCP/readme.md)

2.**Enabled Versioning** - Cria um estrutura de armazenamento na cloud para armazenar e gerenciar objetos com versionamento habilitado para depois ser usado com `Remote State`.

[![amazonaws](https://img.shields.io/badge/-AWS-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)](./Storage/Enabled_Versioning/AWS/readme.md)
[![microsoftazure](https://img.shields.io/badge/-Azure-white?style=for-the-badge&logo=microsoftazure&color=0078D7&logoColor=white)](./Storage/Enabled_Versioning/Azure/readme.md)
[![alibabacloud](https://img.shields.io/badge/-Alibaba-white?style=for-the-badge&logo=alibabacloud&color=FF6A00&logoColor=white)](./Storage/Enabled_Versioning/Alibaba/readme.md)
[![googlecloud](https://img.shields.io/badge/-GCP-white?style=for-the-badge&logo=googlecloud&color=0078D7&logoColor=white)](./Storage/Enabled_Versioning/GCP/readme.md)

### Nuvem privada virtual (VPC/VNET)

Cria um estrutura de nuvem privada virtual (VPC/VNET) com uma subnet com as devidas configurações de segurança.

[![amazonaws](https://img.shields.io/badge/-AWS-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)](./VPC/AWS/readme.md)
[![microsoftazure](https://img.shields.io/badge/-Azure-white?style=for-the-badge&logo=microsoftazure&color=0078D7&logoColor=white)](./VPC/Azure/readme.md)
[![alibabacloud](https://img.shields.io/badge/-Alibaba-white?style=for-the-badge&logo=alibabacloud&color=FF6A00&logoColor=white)](./VPC/Alibaba/readme.md)
[![googlecloud](https://img.shields.io/badge/-GCP-white?style=for-the-badge&logo=googlecloud&color=0078D7&logoColor=white)](./VPC/GCP/readme.md)


### Maquina virtual (VM)

> Antes de executar estes projetos deve-se executar o Storage/Enabled_Versioning e depois VPC da cloud escolhida.

1. **Remote State** - Cria um maquina virtual (VM) com o sistema operacional linux na estrutura de nuvem privada virtual (VPC/VNET) criada anteriormente com remote state salvo na bucket da cloud tambem criada anteriormente com o acesso via SSH.

[![amazonaws](https://img.shields.io/badge/-AWS-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)](./VM/Remote%20State/AWS/readme.md)
[![microsoftazure](https://img.shields.io/badge/-Azure-white?style=for-the-badge&logo=microsoftazure&color=0078D7&logoColor=white)](./VM/Remote%20State/Azure/readme.md)
[![alibabacloud](https://img.shields.io/badge/-Alibaba-white?style=for-the-badge&logo=alibabacloud&color=FF6A00&logoColor=white)](./VM/Remote%20State/Alibaba/readme.md)
[![googlecloud](https://img.shields.io/badge/-GCP-white?style=for-the-badge&logo=googlecloud&color=0078D7&logoColor=white)](./VM/Remote%20State/GCP/readme.md)

2. **Provisioners** - Cria um maquina virtual (VM) com o sistema operacional linux na estrutura de nuvem privada virtual (VPC/VNET) criada anteriormente com remote state salvo na bucket da cloud tambem criada anteriormente com o acesso via SSH e adiciona arquivos de teste na pasta `/tmp` do sistema e na pasta do projeto.

[![amazonaws](https://img.shields.io/badge/-AWS-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)](./VM/Provisioners/AWS/readme.md)
[![microsoftazure](https://img.shields.io/badge/-Azure-white?style=for-the-badge&logo=microsoftazure&color=0078D7&logoColor=white)](./VM/Provisioners/Azure/readme.md)
[![alibabacloud](https://img.shields.io/badge/-Alibaba-white?style=for-the-badge&logo=alibabacloud&color=FF6A00&logoColor=white)](./VM/Provisioners/Alibaba/readme.md)
[![googlecloud](https://img.shields.io/badge/-GCP-white?style=for-the-badge&logo=googlecloud&color=0078D7&logoColor=white)](./VM/Provisioners/GCP/readme.md)


### Modulos no terraform

1. **Local** - Cria um maquina virtual (VM) com o sistema operacional linux na estrutura de nuvem privada virtual (VPC) provida como modulo.

[![amazonaws](https://img.shields.io/badge/-AWS-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)](./Module/Local/readme.md)

2. **Remote** - Cria um maquina virtual (VM) com o sistema operacional linux em uma VNET criada com um modulo remoto.

[![microsoftazure](https://img.shields.io/badge/-Azure-white?style=for-the-badge&logo=microsoftazure&color=0078D7&logoColor=white)](./Module/Remote/readme.md)


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
