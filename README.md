# LaTeX-класс bmstu

Класс `bmstu.cls` определяет команды и окружения для создания отчетов и расчетно-пояснительных записок в соответствии с требованиями МГТУ им. Н. Э. Баумана.

Сгенерированные файлы соответствуют ГОСТ 7.32-2017, расчетно-пояснительные записки к выпускным квалификационным работам успешно проходят проверку TestVKR.exe (сборка 203).

В файле [docs/docs.pdf](docs/docs.pdf) представлены примеры использования команд и окружений класса. В директории [templates/report/](templates/report/) представлен шаблон проекта для отчета, в [templates/coursework/](templates/coursework/) — для расчетно-пояснительной записки к курсовой работе, в [templates/thesis/](templates/thesis/) — для расчетно-пояснительной записки к выпускной квалификационной работе.

## Установка

В классе используются следующие пакеты: ```afterpage, amsmath, amssymb, appendix, babel, blatex, booktabs, csquotes, enumitem, etoolbox, extreport, float, fontenc, geometry, graphicx, hyperref, indentfirst, inputenc, lastpage, listings, listingsutf8, lscape, microtype, pgfplots, setspace, stackengine, tabularx, tikzscale, titlesec, ulem, wrapfig, xifthen```. Во избежание проблем после установки класса, убедитесь, что все необходимые пакеты установлены.

### Linux

```bash
cp -R bmstu ~/texmf/tex/latex/
```

Рекомендуется установить подсказки для редактора, которые определены в файле `bmstu.cwl`. Например, для установки подсказок в TeXstudio необходимо выполнить следующую команду:
```bash
cp bmstu.cwl ~/.config/texstudio/completion/user/
```

### Windows 10

Скопировать директорию `bmstu` в `C:\Users\<user>\Appdata\Local\MikTex\<number>\tex\latex\local\`.
