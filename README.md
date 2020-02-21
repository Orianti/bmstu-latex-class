# Шаблон для отчетов по лабораторным работам

pdfLaTeX-шаблон в соответствии с усредненными требованиями к оформлению отчетов на кафедре ИУ7 МГТУ им. Баумана. Шапка титульного листа актуальна на момент коммита.

## Создание директории сборки в TeXstudio (Linux)

Открыть **Options -> Configure TeXstudio...** и установить флажок **Show Advanced Options**.  

**Commands -> PdfLaTeX**: `pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build %.tex`  
**Commands -> BibTeX**: `bibtex build/%.aux`  

> При использовании других команд следует помнить, что файлы сборки располагаются в директории **build**.

**Build -> Meta Commands -> Precompile**: `txs:///mkbuilddir`  
**Build -> User Commands -> Add**: `mkbuilddir:` `mkdir -p build`  
**Build -> Build Options -> Additional Search Paths -> Log File**: `build`, **PDF File:** `build`
