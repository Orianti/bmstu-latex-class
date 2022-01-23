# LaTeX-класс `bmstu`

![Version shield](https://img.shields.io/ctan/v/bmstu)
![License shield](https://img.shields.io/ctan/l/bmstu)
![Last commit shield](https://img.shields.io/github/last-commit/Orianti/bmstu-latex-class/master)
![TestVKR build shield](https://img.shields.io/badge/TestVKR%20build-203-blue)

Класс `bmstu` определяет команды и окружения для создания отчетов и расчетно-пояснительных записок в МГТУ им. Н. Э. Баумана.

Сгенерированные файлы соответствуют [требованиям МГТУ им. Н. Э. Баумана](https://mf.bmstu.ru/info/uu/ot/norm_docs/docs/polozhenie_normcontrol_pril1.pdf) и [ГОСТ 7.32-2017](https://docs.cntd.ru/document/1200157208). Расчетно-пояснительные записки к выпускным квалификационным работам успешно проходят проверку [TestVKR](https://vkr.bmstu.ru/) (сборка 203).

## Документация

[Краткая справка по LaTeX](docs/introduction-to-latex.md)

[Примеры использования команд и окружений](docs/documentation.md)

Шаблоны для создания:
* [отчетов](templates/report/)
* [расчетно-пояснительных записок к курсовым работам](templates/coursework/)
* [отчетов по научно-исследовательским работам](templates/research/)
* [расчетно-пояснительных записок к выпускным квалификационным работам](templates/thesis/)

## Установка

В классе используются следующие пакеты: ```afterpage, amsmath, amssymb, appendix, babel, blatex, booktabs, csquotes, enumitem, etoolbox, extreport, float, fontenc, geometry, graphicx, hyperref, indentfirst, inputenc, lastpage, listings, listingsutf8, lscape, microtype, pgfplots, setspace, stackengine, tabularx, tikzscale, titlesec, ulem, wrapfig, xifthen```. Во избежание проблем после установки класса, убедитесь, что все необходимые пакеты установлены.

### Linux

```bash
cp -R bmstu $(kpsewhich -var-value=TEXMFHOME)/tex/latex/
```

Рекомендуется установить подсказки для редактора, которые определены в файле `bmstu.cwl`. Например, для установки подсказок в TeXstudio необходимо выполнить следующую команду:
```bash
cp bmstu.cwl ~/.config/texstudio/completion/user/
```

### Windows

Скопировать директорию `bmstu` в директорию, полученную выполнением команды `kpsewhich -var-value=TEXMFHOME`.

## Лицензия

Файлы, перечисленные в `manifest.txt`, распространяются по лицензии [The LaTeX Project Public License](https://www.latex-project.org/lppl/).

Файл `bmstu-logo.pdf` является гербом МГТУ им. Н. Э. Баумана и защищен авторским правом. Распространяется по принципам свободного использования произведений (ст. 1274 ГК РФ).

---

Copyright © Новиков М. Р., 2020–2022<br>