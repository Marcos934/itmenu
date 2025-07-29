# ITMenu - Sistema de Cardápio Digital

Um sistema completo de cardápio digital para restaurantes e estabelecimentos alimentícios, desenvolvido em PHP com integração ao Mercado Pago e funcionalidades avançadas de delivery.

## 📋 Índice

- [Sobre o Projeto](#sobre-o-projeto)
- [Funcionalidades](#funcionalidades)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Instalação](#instalação)
- [Configuração](#configuração)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Uso](#uso)
- [API e Integrações](#api-e-integrações)
- [Contribuição](#contribuição)
- [Licença](#licença)

## 🍽️ Sobre o Projeto

O ITMenu é uma plataforma completa para gerenciamento de cardápios digitais, permitindo que restaurantes e estabelecimentos alimentícios criem e gerenciem seus menus online, processem pedidos e ofereçam serviços de delivery com cálculo automático de taxas.

## ✨ Funcionalidades

### 🏪 Gestão de Estabelecimentos
- **Multi-tenant**: Suporte a múltiplos estabelecimentos
- **Perfis personalizados**: Cada estabelecimento possui seu próprio link e configurações
- **Gestão de horários**: Controle de horários de funcionamento
- **Configuração de cores**: Personalização visual do cardápio

### 📱 Cardápio Digital
- **Interface responsiva**: Otimizada para dispositivos móveis e desktop
- **Categorização de produtos**: Organização por categorias
- **Imagens de produtos**: Upload e gerenciamento de imagens
- **Descrições detalhadas**: Informações completas dos produtos
- **Preços dinâmicos**: Gestão flexível de preços

### 🛒 Sistema de Pedidos
- **Carrinho de compras**: Funcionalidade completa de e-commerce
- **Observações personalizadas**: Clientes podem adicionar observações aos produtos
- **Controle de quantidade**: Gestão de quantidades por item
- **Validação de pedidos**: Sistema de validação antes da finalização

### 🚚 Sistema de Delivery
- **Cálculo automático de frete**: Baseado em bairros cadastrados
- **Gestão de áreas de entrega**: Configuração de zonas de delivery
- **Taxas personalizadas**: Diferentes valores por região
- **Integração com CEP**: Validação de endereços

### 💳 Pagamentos
- **Integração Mercado Pago**: Processamento seguro de pagamentos
- **Múltiplas formas de pagamento**: Cartão, PIX, boleto
- **Notificações automáticas**: Webhooks para confirmação de pagamentos
- **Gestão de transações**: Controle completo de vendas

### 👥 Gestão de Usuários
- **Sistema de login**: Autenticação segura
- **Perfis de acesso**: Diferentes níveis de permissão
- **Gestão de clientes**: Cadastro e histórico de pedidos
- **Painel administrativo**: Interface completa para gestão

### 📊 Relatórios e Analytics
- **Dashboard administrativo**: Visão geral das vendas
- **Relatórios de vendas**: Análise detalhada de performance
- **Controle de estoque**: Gestão de produtos
- **Histórico de pedidos**: Rastreamento completo

### 🔔 Notificações
- **WhatsApp**: Integração para notificações
- **Email**: Sistema de envio de emails
- **Notificações push**: Alertas em tempo real
- **Sons personalizados**: Alertas sonoros para novos pedidos

### 🎨 Personalização
- **Temas customizáveis**: Cores e layout personalizáveis
- **Banner promocional**: Sistema de banners
- **Landing page**: Página inicial personalizada
- **Logos e imagens**: Upload de identidade visual

## 🛠️ Tecnologias Utilizadas

### Backend
- **PHP 7.3+**: Linguagem principal
- **MySQL/MariaDB**: Banco de dados
- **PDO**: Abstração de banco de dados
- **PHPMailer**: Envio de emails
- **Mobile Detect**: Detecção de dispositivos móveis

### Frontend
- **HTML5/CSS3**: Estrutura e estilização
- **JavaScript/jQuery**: Interatividade
- **Bootstrap**: Framework CSS responsivo
- **Font Awesome**: Ícones
- **Owl Carousel**: Carrosséis de imagens
- **Select2**: Seletores avançados

### Integrações
- **Mercado Pago SDK**: Processamento de pagamentos
- **WhatsApp API**: Notificações
- **Service Worker**: Funcionalidades PWA

## 📦 Instalação

### Pré-requisitos
- PHP 7.3 ou superior
- MySQL 5.7 ou superior / MariaDB 10.2+
- Servidor web (Apache/Nginx)
- Composer (opcional)

### Passos de Instalação

1. **Clone o repositório**
```bash
git clone https://github.com/Marcos934/itmenu.git
cd itmenu
```

2. **Configure o banco de dados**
```sql
-- Importe o arquivo SQL
mysql -u root -p < itmenuco_itmenu_att.sql
```

3. **Configure as variáveis de ambiente**
```php
// Edite o arquivo _app/Config.inc.php
define('HOST', 'localhost');
define('USER', 'seu_usuario');
define('PASS', 'sua_senha');
define('DBSA', 'nome_do_banco');
define('HOME', 'https://seudominio.com/');
```

4. **Configure permissões**
```bash
chmod 755 uploads/
chmod 755 cache/
```

5. **Inicie o servidor**
```bash
# Para desenvolvimento
php -S localhost:8000

# Para produção, configure seu servidor web
```

## ⚙️ Configuração

### Configurações Básicas

1. **Banco de Dados** (`_app/Config.inc.php`)
```php
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DBSA', 'itmenuco_itmenu');
```

2. **URL Base**
```php
define('HOME', 'https://localhost/itmenu/');
```

3. **Configurações de Email**
```php
define("EMAIL_MSG", "seu@email.com");
```

4. **WhatsApp**
```php
define("PHONE_NUMBER", "5511999999999");
```

### Mercado Pago

1. Acesse o diretório `mercadopago/`
2. Configure suas credenciais no arquivo de configuração
3. Teste a integração com o ambiente sandbox

## 📁 Estrutura do Projeto

```
itmenu/
├── _app/                    # Core da aplicação
│   ├── Config.inc.php       # Configurações principais
│   ├── Conn/               # Classes de conexão com BD
│   ├── Helpers/            # Classes auxiliares
│   ├── Models/             # Modelos de dados
│   └── Library/            # Bibliotecas externas
├── admin/                  # Painel administrativo
├── assets/                 # Recursos estáticos
├── cache/                  # Cache de imagens
├── css/                    # Folhas de estilo
├── js/                     # Scripts JavaScript
├── uploads/                # Arquivos enviados
├── mercadopago/           # Integração Mercado Pago
├── includes/              # Arquivos de inclusão
├── login/                 # Sistema de autenticação
├── vendas/                # Módulo de vendas
└── index.php              # Arquivo principal
```

## 🚀 Uso

### Para Administradores

1. **Acesso ao Painel**
   - Acesse `/admin/`
   - Faça login com suas credenciais

2. **Cadastro de Produtos**
   - Navegue até "Produtos"
   - Adicione categorias
   - Cadastre produtos com imagens e preços

3. **Configuração de Delivery**
   - Acesse "Delivery"
   - Cadastre bairros e taxas
   - Configure áreas de entrega

### Para Clientes

1. **Acesso ao Cardápio**
   - Acesse `/{nome-do-estabelecimento}`
   - Navegue pelas categorias
   - Adicione produtos ao carrinho

2. **Finalização do Pedido**
   - Revise o carrinho
   - Informe dados de entrega
   - Escolha forma de pagamento
   - Confirme o pedido

## 🔌 API e Integrações

### Endpoints Principais

- `POST /addcarrinho.php` - Adicionar item ao carrinho
- `GET /vendas/` - Consultar vendas
- `POST /mercadopago/` - Processar pagamentos
- `GET /notificacao/` - Webhooks de pagamento

### Webhooks Mercado Pago

O sistema possui integração completa com webhooks do Mercado Pago para:
- Confirmação de pagamentos
- Atualizações de status
- Notificações automáticas

## 🤝 Contribuição

### Desenvolvedores

- **Marcos Vinicius Mulinari** - Desenvolvedor Principal
  - GitHub: [Marcos934](https://github.com/Marcos934)
  - Email: marcos.mulinari97@gmail.com

- **Patrick Miranda** - Desenvolvedor Participante
  - GitHub: [patricksouza](https://github.com/patricksouza)

### Como Contribuir

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## 📞 Suporte

Para suporte e dúvidas:
- Email: marcos.mulinari97@gmail.com

## 🔄 Atualizações

### Versão Atual
- Sistema de multi-tenant
- Integração completa com Mercado Pago
- PWA (Progressive Web App)
- Sistema de notificações em tempo real
- Interface responsiva otimizada

---

**Desenvolvido com ❤️ para facilitar a gestão de estabelecimentos alimentícios**