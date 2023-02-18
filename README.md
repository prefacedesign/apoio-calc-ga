Projeto inicial criado

Os PDFs gerados **não** devem ser comitados. Por conveniência os arquivos que estão na pasta ```exports``` são ignorados pelo Git, recomenda-se fazer os exports nesta pasta.

Leonardo pode trabalhar na pasta ```src/leo```, e a Preface na pasta ```src/proj``` por enquanto para evitar conflitos, depois vamos juntar e trabalhar de forma mais integrada.

## Compilando o projeto

Para compilar o projeto usando uma instalação padronizada do Texlive já com todas as fontes, só rodar o script, ou no linux ou no WSL2 (Windows Subsystem For Linux), o docker estar instalado é um pré-requisito:

```$ ./scripts/install-build-enviroment.sh```

E em seguida dois comandos estarão disponíveis, que podem ser usados para compilar o documento, exemplos de como compilar.

**Versão do estudante**
```
$ cd /path/to/repository/src/proj
$ compila-apostilas-arara -v estudante.tex
```

**Versão do tutor**
```
$ cd /path/to/repository/src/proj
$ compila-apostilas-arara -v tutor.tex
```

O arara é um utilitário que permite que o próprio arquivo informe como precisa ser compilado, por exemplo, no arquivo `estudante.tex` temos o seguinte preâmbulo: 
```
% arara: xelatex
% arara: xelatex
```

Com estas informações o arara sabe que é preciso rodar o comando xelatex duas vezes para compilar direito o arquivo.


### Compilando no windows

É possível compilar também nativamente no windows, mas é mais difícil produzir uma linha de comando específica para tal, por isto, procure usar o texlive 2022 (talvez versões mais novas funcionam). É preciso instalar todas as seguintes fontes:

https://github.com/google/fonts/raw/main/ofl/archivoblack/ArchivoBlack-Regular.ttf 
https://fonts.google.com/download?family=Archivo
https://fonts.google.com/download?family=BioRhyme+Expanded
https://fonts.google.com/download?family=Spectral

São as fontes "ArchivoBlack-Regular", "Archivo", "BioRhyme+Expanded" e "Spectral" do Google Fonts, é possível que daqui alguns anos estes links estejam fora do ar (hoje estamos em 2023). Então procure os links atuais. Importante instalar todas as fontes, e no caso da Archivo sempre usar a versão estática (e não a versão variável).

E mande compilar o arquivo estudante.tex usando o comando ``xelatex`` duas vezes. 