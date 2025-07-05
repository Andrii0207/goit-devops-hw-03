# Terraform AWS Infrastructure

## Модулі

### `s3-backend`
Створює S3-бакет для збереження стейтів Terraform і таблицю DynamoDB для блокування.

### `vpc`
Створює VPC з 3 публічними та 3 приватними підмережами, Internet Gateway та NAT Gateway.

### `ecr`
Створює ECR-репозиторій з автоматичним скануванням Docker-образів.

---

## Команди запуску

```bash
terraform init       # Ініціалізація середовища
terraform plan       # Перегляд плану
terraform apply      # Застосування змін
terraform destroy    # Видалення інфраструктури
