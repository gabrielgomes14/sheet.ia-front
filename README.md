# Trabalho Final – Fundamentos de DevOps

<p>
  <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAb4AAABxCAMAAACdmjYOAAAA1VBMVEX///80mkYAAADKICcdHR67u7sTki8aGhsrlz92t4F9uIX8/Pzw8PD5/PomljsvmULl8OYNDQ5krnB6enrO5dJXp2OizakUFBXBwcGrz7AdlDVMolrF3cjf7uLS5NTs7Oyrq6vPz88kJCXk5OSZmZlJSUmRkZJWVlY6OjtgYGHIyMizs7NxcXGGhocxMTLa2trHAAChoaJqamrIABFOTk5AQEHyzs/JFB3dgIONwpX44uPmpqjPOj/NLTPilJa42L3uv8H45ebVXGDSSE3PNTvbeXzsubpnmYa8AAANdUlEQVR4nO2de2ObNhfGqQIhLaSLyhZI1pW7uUNw7LRdt7e7f/+P9J4jcfUlcRonNpueP2o4ErKkH5KOLk4lSUhISEhISEhISEhISEhISEhISEhISEhISEhISEjouPTz3d3dz4fOhNC36csvt7c3N7e//k9rDF+vRvqKtoux7erDATMs1Ovnv25PuG5P7pjl8vTtSKeXYPzxesV4cdhsCzHd3X486XTzG5pen70a6ewNGE/HtlfXovkdgX6/ORnqFkdAgW8y+uPjCN/HPySBbzq6Gzc+6D7vBL7p6NPHFXwfPwl809EvJ6v4/hT4pqPVxndy8qvANx2t4zsR+Kajv9boic5zQvpbuC5T1m9i4jBp/bkybYe+U+Cbju7Eotmk9WXI7+YfNAl8E9I/3ZbD7cffmOXy+myk689g/G5sOzv96aC5Fmr1+6eTm9vb25uTTzo3nH9+PdLnczD+NLa9vjponoUG0u6+fPlypz0cUUhIaI86H2uT8bAZFLpHr8dHWK7RyfxwNj7Wcia8lCPVxep84BTa2pu3Y9vbN4fOptBmbcS3cd4ndIS6uBb4JiyBb9IS+CYtgW/SEvgmLYFv0hL4Ji2Bb9IS+CYtgW/SEvgmLYFv0tq84yDwTUWr+32vwfb96n7f94fOpdA2/TQWs52PbWK7XUhISGhFF1eXQ12xv9byfmS7fI+283HEy/H5F0tRUvxMFUWxepvPLjRlZhRZBVeu0ivTJSlTlIpF7KVJNvxr8yTgyh2HZ03iaW0YszbaIBeN4KbqbiAXWsaurKqL64+CldVgSdKzPh+YWCZt0fvD/YWb81djL+X6FRivHv9neWJCQvyMCIjz0zxCWJEzMFFKiJpJORnIlTT4dyZJy6HVliwWxgRX85VwZq+bJEk+AlgOY826G4CpdzcGf6VYrrgcCKbtTdAlVrPYzU3RfvMG/XA4z273sy73/8YhNM0IPxNTls2YmbRYZfgUospY2ypgNfBChigtPhnrazm0Ij65xSerNIfEh+FozomqYoWrMpX9QS5iVVYH+GSZ9vjY4xSfU1hcpQt2INhTIZia8HjSF0lWVa85uwyJbcX37oD4dp6274xPlfkr3OKLTZkGlmKUQDWbzWaFJ5sL/PRbfDXembKZwOdMX8fHwqlszvFTYnWpUkOx6hKM5eBweKyqywATmfFYZoHXRcXwYfJGDI9yfoDPNFhcl+Ezo1kRUch800lWRPWWKkn53X8Gn1rCG44/lmjwNYjgomknmqfSorlsw2AoIl3FreFD2WDkzQZQqE0ELTJlbDytYtXsGg+r8Q4t4OMRHUSPZsBHupYL+Cgid4lM59wUEDOvSfv1j8en+ZW/yb5X7R8fqalMccgY4HOGUfWt+JpoG/H5PT4ggCNmYzUXfdJr+PTuS7vkZ80V4us8lRafBK1w0aZFMp+opt49ta0ON+HTDeyYzdm2Z/akZ8DnFrxiWnymqqrpsGRPxQcddNduYIDqGe3S+iTbVFlWN7Y+ibYpVBBsS6XadAmPxFdR1al8t1C2PbMnPQM+R4M6WPZjH45UJHK7qE/GB71zN+DN6KANIb55d4PfGyWguTbEJy2hf5cYPh68kHp8SKlmsQqKBTIoL9Zj8XmeviHi/vUc+FjvlnX4pISgWxe1r/oe8JnLFl/dx5WY52l27j96niaIlmN8ODxr3PPEYJPwPKllCLMfmcY8aVVFji5rg9Jj8TmDPFWFR2iBiZp2bZLYkhyPeJgX3dQCSkoslS1zd2oJ1C1wtONgt1/rPQs+cDaxhmKz6XkC5uJ3nsez4gNnn9c8w8dYylvxdZMMnDioJkx66II3m7TpWj2VP/Y4fNHAHXYSJc3Y/JEsozRNSL600gLLYpMwsVIDK8luZ8jodwdpGhirSW7W8+BLmXMRtfgkPVAp9KC8l9tH5xm31ROs4StBXoOPplVVufi1A3xh13lSpcJwqZ33gR8UNinlkN/McbJl48o8Dp88XzHM8GGyxG9S8W2SwgSZsSqbkx4fuOxGvO17Nuh58EkJDEl2jw9ynUP5ObQn44tMlbaLLcm666KhpK2ui65ucV0MO+1GPojE2yZ++NKj8a02HoXhY2mXrEB51DFzobADfM7YT79fz4QPPG6aGwN84DGozav9IL60I6VTlRp9eIMv6KeIMAXsO9LdJg7BPROHgqgcKfo1vGc15XYgfQQ+b9D67CAsZfYwz3TJPFyOL+VZU4b4IIN0tuuM8ZnwQUXIqsdcF7+po0UT42F8NlWbqE5vHODzMW0OxqDyYJVyl4kDA6NLmycOWtn0ldDAy4AJulpPesLYV5HIqmzeebL834uPzTJ1p9y1BT4XPg26Hb4AZZHIcW1/1pF6EB92vTSHZ2qYMrYNaIBPgo7YLDPfdhNcQhm46Kv4qGKhbIaPFqnlRKRdFsOxz2HBfj9xsHj3ibGbVl/zRorZZ5Gt9ancJs+zm+jOS56KtAnfaudZqE1hArJb+9v/knUDIQPHrsHHfXnZbPL2MD4buiy2mqyqXfc7xKeFTd9mgr/ROy7r+GQyXLKmzRN8eOs9T2cwbZ9T9LCw1Vvd92Ju+8TWG+E6Ps0z2+qPWGsON+PrXBeNZyr2upe1knbRxfV3YyG+zytG9md53p6tRBzhWxLC8pmQbnaMOzoZjmSE4uyLyE2OdKjHDh/t8dG+x6jK5pl+8MTw7kabAwgWoRzSww2jIT7KxfHxS9ItIChdsIOuSpMnG+5LqG3aNWqYDHpanxjdBR90maRIXcVIoR05vpsM8Hnse/IF4vMMtyq4r0eUKo1KWZdmgQsPyDv+lZavP4yFW7Pnb8a213jY5cO7sfFylMzMMNhbFRh502+4uWHkWFV+PV+Ei7zrdDSwNyC03Gjtdt49ibKMCJ7J+kJg+ACVHyRhGBXDxThQYRj9SKhABpjwOZ3fBP0Gr9sFp7hE2ebJgu9xjKY0KLjJfSlrYxv5WhVuWvPUipgSL4Q3tpCJV+s4fnqsQUcsh0XOxj6Y0pcZrwmI5lQwbVeWJvHm9nqSQs+jLRtGus5fPm3b+pmNHX8XqNn9lfgDSS+ob93vs0fjttCBdEh8Vz+Ohf9b2Pm7se2dOOh5n74dX/pwpPt1cbqr5ym0Td+KT6uePMaJP8vzdE3irIvQNv078ClGMi/SHfoDa/kyW9EvpY343KedU6qCh+NIe8TneyQq8pIMyeibDyZn5r9rUroRH/GelGZAdhoX94XPJjF73UbvXLbYHPlfpk34MpXutmq5RfqOS9Z7wpeTvkVpluOw1bIotNgvG1LHYS6y60qVk0m+Am+WpUuK4zSZtJyMPa7oGhjtNhGLNWW/efpotQlfGOR8dQ1K6KdYDj9teVauLul2d/DVZ6XUXJd92hAGMV8Wn94uQmN2iJcs4F6LPC+JHFyXjiK2uG7kDonnkoKoy1m5TEq2iqvHNFniCr+mBl6YeDgd0mV4lj0UkEVComNeRtq4ZO1bbBzRSWXgjz5SQkrCtiGqknhkVsxxU4aVim02LIinstX7ZKbg7zrqF+083eEM1NVwgwsQ5Ul3b+EKQyEvsWVZGLZk+wcJxX9wv3wGRi1mEMMYbtGm65iygm/Ec593fYo24JuVzea67oU5Ln760LHoywR3hBdwNcezSwrfvGA7Do6vaTVu8uXLuIL4zgvjW+npfczKvN+9YYUp+CYkx8f2uhR4Rfnelgal0Ep2yMCBYhXtfnXE0pht3eo+Am3Y72OlZSeTvLA3O54GJcY60Ffx8St4Uw1eR4fE51p1McRXWXXACsQPUTF8scEvdehDapCD3W0Z8KwDfirX7IcSXuRA4Jwc8VxjHR8w0jUXq0A3ncZWuekM3snCZHfhKj7ddS3El3PcL4uvajenWd7LxDB6fK4nR0bRvY8tvoJf4tGqRQha1MCqwydpgUpyHUwxhi4Wk8K34PvyBeLjkyeHwKi+jAFfyWOM8fkLsozmDF97yucl8Wmk28X02Qjcd54a/sBy0J2s4cu6jnGID6So8CZ6xzzqca3h80mGB0gLQNDgYw1LqrH18fngGJ9WJvh6HgwfdNlt75kR7p60+Crm1fjb8fn9GZYxPnDXdCkZjB1HqjV8M47IhoI1+LjFKNEnYWMCZfg0FsuBOmITrW/At6cla10mOEuzfahzdBVLxFfgyRsdvUY92Y5PmuMMV6v0IT4X34GAIP0ZFMQ+5o3NVXya2ax4JVGLL8AipwQ6T+a0wL2BRavZsR0HEAb4Y8XH4zt/dT3Wj2D8ejq2nX59OCF7QWhc4kwtIWFImC/jEzkMwGtcLogTO/j2sah83mfwSwQckTLG43hNuRFfDmMBnxVmRIV010+YHI9Wf9uutH4WdEE6d0xsj0ZxmakaQvQiL0mw+AYUkhZljT55uCB1DOWdP8p1kc7fj8V2Zj+Mbbv9T33gXypsxTqtFZ1N9iQ9w3WVysl8qQJkPm9DNsbiS7o6X+KuspqtsHCjjb2t25hw/aVWjrnxSRcru9lVl9vU590IKwQ4dyxAVxyXjX1YM04lsR/hdnVU8UHIPu6Fpv+6Fjv+hEjoKCXwTVrhMQ/mQg8psx6OIyQkJCQkJCQkJCQkJCQkJCQkJHS//g+KWKRaLqJmnwAAAABJRU5ErkJggg==" alt="Logo Instituição" width="100" />
  <strong>Aluno:</strong> Gabriel Gomes Galikosky
  <br/>
  <strong>Turma:</strong> BSI5
</p>

---

## 1. Introdução

Este projeto tem como objetivo desenvolver uma aplicação full stack para correção automatizada de dados de hodômetro de veículos, utilizando técnicas de Machine Learning, banco de dados PostgreSQL, backend em FastAPI e frontend em Vue 3. O projeto também inclui a infraestrutura como código e orquestração do ambiente com Kubernetes, deploy automatizado via GitOps usando ArgoCD, e provisionamento com Ansible.

As principais tecnologias utilizadas foram:
- Python (FastAPI, Pandas, scikit-learn)
- Vue 3 (frontend)
- PostgreSQL (banco de dados)
- Docker e Docker Compose para containerização local
- Kubernetes (kind) para orquestração de containers
- ArgoCD para deploy GitOps
- Ansible para provisionamento do ambiente

---

## 2. Escolha do Ambiente

### Tipo de ambiente utilizado

- Kubernetes local utilizando kind para simular um cluster.
- Containerização dos serviços com Docker.
- Provisionamento automatizado com Ansible.
- Deploy e sincronização automatizada com ArgoCD.

### Justificativa

A escolha do Kubernetes com kind permite testar e validar a infraestrutura e deploy em ambiente de cluster real, porém local, facilitando desenvolvimento e testes sem custos de nuvem. O uso de Docker garante isolamento e portabilidade dos serviços. ArgoCD foi escolhido para demonstrar práticas de GitOps, com deploy automático a partir do repositório Git.

### Descrição das máquinas/instâncias

O ambiente foi provisionado em máquina local Fedora 40, com os serviços containerizados e orquestrados em cluster Kubernetes local (kind). Foram criados os seguintes pods:

- Backend FastAPI
- Frontend Vue 3
- Banco de dados PostgreSQL

---

## 3. Provisionamento

### Ferramentas utilizadas

- Ansible para instalação e configuração do cluster kind, Docker, Kubernetes e ArgoCD.
- Scripts Ansible para instalação das dependências e deploy inicial.

### Scripts criados

- Playbooks Ansible para instalação do Docker, kind, ArgoCD e configuração do ambiente.
- Manifests Kubernetes em YAML para deploy dos serviços.
- Dockerfiles para backend e frontend.

### Desafios e soluções

- Ajustes de rede para permitir acesso aos serviços via port-forward.
- Configuração correta dos manifests para comunicação entre backend, frontend e banco.
- Solução de conflitos de portas em ambiente local.

---

## 4. Cluster Kubernetes

### Ferramenta usada para instalar o cluster

- Kind (Kubernetes in Docker), que permite rodar um cluster Kubernetes local dentro de containers Docker.

### Configuração dos nós

- Cluster simples com um nó único, suficiente para desenvolvimento.
- Todos os serviços rodando como deployments dentro do namespace `machine-learning-ecar`.

### Testes de funcionamento

- Comandos `kubectl get pods` e `kubectl get svc` confirmaram pods em estado `Running`.
- Port-forward configurado para acesso local aos serviços.
- Deploy automático via ArgoCD sincronizando o estado do cluster com o repositório Git.

---

## 5. GitOps com ArgoCD

### Instalação do ArgoCD

- ArgoCD instalado via manifest oficial.
- Configurado para monitorar o repositório Git contendo os manifests do Kubernetes.

### Configuração do repositório Git

- O repositório contém pastas base e overlays para o Kustomize.
- Configuração para deploy do backend, frontend e banco.

### Deploy da aplicação

- ArgoCD sincroniza automaticamente e mantém o estado desejado.
- Tela web do ArgoCD disponível na porta 8080 após port-forward.

### Screenshots do ArgoCD funcionando
![ArgoCD funcionando](imgs/argocd2.png)
![ArgoCD funcionando](imgs/argocd.png)

---

## 6. Aplicação

### Descrição da aplicação

- Backend desenvolvido em FastAPI, responsável por receber planilhas .xlsx, processar os dados, aplicar modelo de Machine Learning para correção dos valores de hodômetro, armazenar no banco e retornar os dados corrigidos via API REST.
- Banco PostgreSQL para armazenamento dos dados históricos e novos.
- Frontend em Vue 3 que consome a API, permite upload das planilhas e exibe os dados corrigidos.
- Uso das bibliotecas Python: Pandas, NumPy, scikit-learn, SQLAlchemy, psycopg2, joblib, entre outras.

### Como acessar a aplicação no cluster

- Para verificar a persistência dos dados e testar as queries durante o desenvolvimento, foi utilizado o DBeaver, uma ferramenta gráfica para acesso e manipulação de bancos de dados. Com o DBeaver, foi possível visualizar as tabelas, executar comandos SQL e validar a estrutura do banco PostgreSQL exposto via port-forward (porta 5432).

Como acessar a aplicação no cluster

    Backend: exposto na porta 8000 via port-forward, acessível em http://localhost:8000/docs.

    Frontend: exposto na porta 3000 via port-forward, acessível em http://localhost:3000.

    Banco de dados PostgreSQL: exposto na porta 5432 via port-forward, utilizado localmente com o DBeaver para visualização dos dados.

    ![frontend funcionando](imgs/frontend.png)    

Exemplo de acesso:

    Frontend: http://localhost:3000

    Backend (Swagger Docs): http://localhost:8000/docs
    
---

## 7. Conclusão

### Lições aprendidas

- Experiência prática com provisionamento automatizado usando Ansible.
- Compreensão aprofundada do funcionamento de clusters Kubernetes locais com kind.
- Aplicação de práticas GitOps reais utilizando ArgoCD para deploy automático.
- Desenvolvimento de aplicação full stack com integração entre backend, frontend e banco.
- Aprendizado sobre como versionar, automatizar e orquestrar ambientes complexos.

### Dificuldades encontradas

- Configuração de rede e portas para comunicação entre serviços no cluster.
- Resolução de erros de portas em uso no ambiente local.
- Ajustes finos na estrutura dos manifests e Dockerfiles para compatibilidade.
- Manter a consistência do banco de dados durante deploys.
- Foi necessário adaptar a aplicação (que estava no SQLite) e o ambiente para utilizar PostgreSQL, que é mais robusto e adequado para produção, o que envolveu ajustes na configuração, scripts de inicialização, conexões e no gerenciamento de dados.

### O que faria diferente

- Utilizaria um ambiente Kubernetes em nuvem para testes em produção.
- Automatizaria mais ainda a pipeline CI/CD, com testes automatizados integrados.
- Adotaria Helm para gerenciar os charts Kubernetes.
- Melhoraria a interface do frontend para melhor usabilidade e estética.

---

## 8. Links dos Repositórios

- Front-end: [sheet.ia-front](https://github.com/gabrielgomes14/sheet.ia-front)
- Back-end: [sheet.ia-back](https://github.com/gabrielgomes14/sheet.ia-back)
- Infraestrutura: [sheet.ia-infra](https://github.com/gabrielgomes14/sheet.ia-infra)
- Provisionamento: [sheet.ia-provisioner](https://github.com/gabrielgomes14/sheet.ia-provisioner)

---

## Bibliotecas e Tecnologias Utilizadas

- **FastAPI:** Utilizado para desenvolver o backend da aplicação, fornecendo uma API REST rápida e eficiente para receber as planilhas Excel, processar os dados de hodômetro, aplicar o modelo de Machine Learning e retornar os dados corrigidos.
- **Pandas e NumPy:** Utilizados para manipulação, limpeza e análise dos dados extraídos das planilhas Excel. Pandas facilitou o trabalho com DataFrames para tratamento das tabelas, enquanto NumPy auxiliou em operações matemáticas e vetoriais necessárias para o processamento.
- **scikit-learn:** Empregado para treinar e aplicar modelos de Machine Learning que corrigem os valores de hodômetro com base nos dados históricos, melhorando a precisão das leituras antes de armazenar e retornar.
- **SQLAlchemy e psycopg2:**  SQLAlchemy foi usado como ORM para facilitar a interação entre o backend FastAPI e o banco de dados PostgreSQL, abstraindo comandos SQL. Psycopg2 é o driver Python que faz a conexão direta com o banco PostgreSQL.
- **joblib:** Utilizado para serializar (salvar) e desserializar (carregar) os modelos treinados de Machine Learning, permitindo que o backend possa reutilizar os modelos sem precisar treiná-los a cada execução.
- **Unidecode:**  Aplicado para normalização e tratamento de strings textuais, garantindo consistência na manipulação de textos que possam conter caracteres especiais ou acentuações, especialmente ao lidar com dados de entrada.
- **Docker:** Usado para containerizar os serviços do backend, frontend e banco de dados, garantindo que todos os componentes rodem isoladamente com suas dependências específicas, facilitando a portabilidade e implantação
- **Kubernetes/Kind:** Kind (Kubernetes in Docker) foi usado para criar um cluster Kubernetes local que orquestra os containers Docker, simulando um ambiente de produção para validar o deploy, escalabilidade e comunicação entre os serviços.
- **ArgoCD:** Ferramenta GitOps que automatiza o deploy da aplicação dentro do cluster Kubernetes. ArgoCD monitora o repositório Git com os manifests e sincroniza o estado do cluster, garantindo deploy contínuo e consistente.
- **Ansible:** Utilizado para automatizar o provisionamento do ambiente de desenvolvimento, instalando e configurando Docker, Kubernetes, Kind, ArgoCD e demais dependências, garantindo que o ambiente local pudesse ser reproduzido de forma fácil e consistente.

---
