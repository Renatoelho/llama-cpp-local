# IA: Configurando e Executando o Llama C++ Localmente de Forma Simples 

Llama.cpp é uma biblioteca desenvolvida em **C++** para a implementação eficiente de grandes modelos de linguagem, como o **LLaMA da Meta**. Otimizada para rodar em diversas plataformas, incluindo dispositivos com **recursos limitados**, oferece performance, velocidade de inferência e uso eficiente da memória, essenciais para a execução de modelos de grande porte. Além disso, sua portabilidade permite que desenvolvedores e pesquisadores a utilizem em diferentes sistemas operacionais e hardwares, sendo ideal para quem deseja implementar e **experimentar modelos** de linguagem em suas próprias infraestruturas, sem depender de serviços em nuvem. Isso possibilita **maior controle** sobre dados e modelos. Llama.cpp pode ser utilizada por várias outras linguagens, como **Python**, Java, Rust, Go e outras, permitindo experimentações e ajustes em um ambiente controlado, com maior segurança e personalização nas soluções baseadas em **IA**.

<!-- https://www.youtube.com/@renato-coelho
# Apresentação em vídeo

<p align="center">
  <a href="https://youtu.be/xxxxx" target="_blank"><img src="thumbnail/xxxxxxx.png" alt="Vídeo de apresentação"></a>
</p>
 -->

### Requisitos

+ ![Git](https://img.shields.io/badge/Git-2.25.1%2B-E3E3E3)

+ ![Ubuntu](https://img.shields.io/badge/Ubuntu-20.04%2B-E3E3E3)

+ ![Python](https://img.shields.io/badge/Python-3.8%2B-E3E3E3)


## Deploy da aplicação


### Clonando o repositório

```bash
git clone https://github.com/Renatoelho/llama-cpp-local.git llama-cpp-local
```


### Preparando o ambiente

+ Instalando as dependências do sistema operacional
```bash
sudo apt install wget python3-pip python3-dev python3-venv gcc g++ make jq -y
```

+ Acessando o diretório clonado
```bash
cd llama-cpp-local/
```

+ Criando o ambiente virtual
```bash
python3 -m venv .venv
```

+ Ativando o ambiente virtual
```bash
source .venv/bin/activate
```

+ Instalando as dependências da aplicação
```bash
pip install -U pip setuptools wheel && pip install -r requirements.txt --no-cache-dir --verbose --force-reinstall
```


### Baixando o modelo

```bash
sh scripts/download_model.sh
```

>> ***Obs.:*** talvez seja necessário adicionar as permissões de execução aos scripts com o comando: ```chmod +x scripts/download_model.sh``` e/ou ```chmod +x scripts/up_model.sh```.

### Ativando aplicação

+ Acessando como root

```bash
sudo su
```

>> ***Obs.:*** talvez seja necessário reativar o ambiente virtual para usuário ```root```, use o comando: ```source .venv/bin/activate```.

```bash
sh scripts/up_model.sh
```

>> ***Obs.:*** pode ocorrer um erro de limitação de memória, para resolver isso utilize de forma temporária o comando: ```ulimit -l unlimited``` no terminal.

>> ***Obs 2.:*** esse script vai bloquear o terminal, então utilize outro para fazer as requests ao endpoint do modelo.


### Documentação do endpoint

Utilize o endpoint [http://localhost:8000/docs](http://localhost:8000/docs) para entender os recursos disponíveis pelo modelo.


### Testando aplicação

+ Perguntando ao modelo (abra outro terminal)

```bash
cd ../../llama-cpp-local/
```

```bash
source .venv/bin/activate
```

```bash
python3 ./question_model.py
```


# Referências

Georgi Gerganov, **Github.** Disponível em: <https://github.com/ggerganov/llama.cpp>. Acesso em: 17 mai. 2024.

Andrei abetlen, **Github.** Disponível em: <https://github.com/abetlen/llama-cpp-python>. Acesso em: 17 mai. 2024.

llama-cpp-python 0.2.75, **pypi.org.** Disponível em: <https://pypi.org/project/llama-cpp-python/>. Acesso em: 17 mai. 2024.

Tom Jobbins, **huggingface.co.** Disponível em: <https://huggingface.co/TheBloke>. Acesso em: 19 mai. 2024.
