# LaTeX-класс bmstu

Класс `bmstu` определяет команды и окружения для создания отчетов и расчетно-пояснительных записок в соответствии с требованиями МГТУ им. Н. Э. Баумана. Основан на классе `extreport`.

Приведены [**примеры использования команд**](docs/examples.md).

Приведены шаблоны для создания:
* [**отчетов**](templates/report/);
* [**расчетно-пояснительных записок к курсовым работам**](templates/coursework/);
* [**отчетов по научно-исследовательским работам**](templates/research/);
* [**расчетно-пояснительных записок к выпускным квалификационным работам**](templates/thesis/).

Сгенерированные файлы соответствуют ГОСТ 7.32-2017. Расчетно-пояснительные записки к выпускным квалификационным работам успешно проходят проверку TestVKR (сборка 203).

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

### Windows 10

Скопировать директорию `bmstu` в `C:\Users\<user>\Appdata\Local\MikTex\<number>\tex\latex\local\`.
