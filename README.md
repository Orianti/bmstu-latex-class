# Шаблоны для отчетов и расчетно-пояснительных записок

pdfLaTeX-шаблоны в соответствии с усредненными требованиями к оформлению [отчетов](report/) и [расчетно-пояснительных записок](paper/) на кафедре ИУ7 МГТУ им. Н. Э. Баумана. Шапка титульных листов актуальна на момент коммита.

Пример скомпилированного шаблона отчета представлен [здесь](report/build/report.pdf).

Пример скомпилированного шаблона расчетно-пояснительной записки представлен [здесь](paper/build/note.pdf).

## Особенности

Основные особенности шаблонов в сравнении со стандартным классом `extreport`:
* левое поле — 30 мм; правое, верхнее и нижнее — 20 мм;
* полуторный интервал;
* абзацный отступ — 12.5 мм;
* изменен стиль глав и разделов;
* изменены некоторые заголовки глав.

Добавлена поддержка кириллицы в листингах.

## Новые команды

```latex
% Изображение заданной ширины
% \imgwc{<position>}{<width>}{<label>}{<caption>}
\imgwc{h}{0.95\textwidth}{erd}{ER-диаграмма}

% Изображение заданной высоты
% \imghc{<position>}{<height>}{<label>}{<caption>}
\imghc{h}{0.95\textheight}{uml}{UML-диаграмма классов}

% Изображение с масштабированием
% \imgsc{<position>}{<scale>}{<label>}{<caption>}
\imgsc{h}{0.5}{uml}{UML-диаграмма классов}

% Моноширинный текст (укороченный \texttt)
\code{main.c}

% Горизонтальные линии заданной ширины
% \vhrulefill{<widht>}
\vhrulefill{1mm}
```

## Создание директории сборки в TeXstudio (Linux)

Открыть **Options -> Configure TeXstudio...** и установить флажок **Show Advanced Options**.  

**Commands -> PdfLaTeX**: `pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build %.tex`  
**Commands -> BibTeX**: `bibtex build/%.aux`  

> При использовании других команд следует помнить, что файлы сборки располагаются в директории **build**.

**Build -> Meta Commands -> Precompile**: `txs:///mkbuilddir`  
**Build -> User Commands -> Add**: `mkbuilddir:` `mkdir -p build`  
**Build -> Build Options -> Additional Search Paths -> Log File**: `build`, **PDF File:** `build`
