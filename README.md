# API Consumo

Consumo de uma API utilizando a linguagem Dart. Desenvolvido como desafio da Academia do Flutter. 


## API:
Url para acesso ao JSON: <https://gist.github.com/rodrigorahman/97705da4adbead0c33bdfc104f8c2a94>

## Package:
- Dartion <https://pub.dev/packages/dartion>
- HTTP <https://pub.dev/packages/http>

## Utilização

É necessário configurar o Dartion, para isso rode o seguinte comando.

    dart pub global activate dartion
    
Talves seja necessário adicionar a variavel de ambiente.

    export PATH="$PATH":"$HOME/.pub-cache/bin"
    
Depois abra a pasta backend do projeto no terminal e digite o seguinte comando

    dartion serve
    
Dentro da raiz do projeto em bin/consumption_api.dart estão os métodos da API

     MoviesController().findAll();
     MoviesController().insert();
     MoviesController().update();
     MoviesController().findById('dfbbae90-0784-11ed-af03-adca64deb1c9');
     MoviesController().findById('63464');


