# README

* Ruby version 3.0.1

* Rails version 6.1.3

* postgresql

### Configurações

Para instalar todas as dependências do rails:

```
bundle

```

### Criar o banco de dados

```
rails db:create
```

### Configurar o banco de dados

```
rails db:migrate
```

### Preenchimento do banco utilizando o seed

```
rails db:seed
```
#### Para rodar o rspec 

```
rspec
```

#### Para rodar o projeto 

```
rails s
```

#### Exemplo de request 

```
http://localhost:3000/addresses/22471003?email=greice@teste.com.br&password=123455
```

```
{
  "data": {
    "cep": "22471003",
    "uf": "RJ",
    "cidade": "Rio de Janeiro",
    "bairro": "Lagoa",
    "logradouro": "Avenida Epitácio Pessoa - de 2358 a 3630 - lado par"
  }
}
```


