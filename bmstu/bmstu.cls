\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{bmstu}[2021/11/01 v1.0 BMSTU class]

% Установка базового класса
\LoadClass[14pt]{extreport}

% Настройка кодировки и языков
\RequirePackage[T1,T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english,main=russian]{babel}
\RequirePackage{fix-cm}

% Настройка полей
\RequirePackage[
	left=30mm,
	right=10mm, % Является требованием МГТУ, не соответствует ГОСТ 7.32-2017
	top=20mm,
	bottom=20mm,
]{geometry}

% Настройка переносов
\RequirePackage{microtype}
\sloppy

% Настройка межстрочного интервала
\RequirePackage{setspace}
\onehalfspacing

% Настройка абзацного отступа
\RequirePackage{indentfirst}
\setlength{\parindent}{12.5mm}

% Настройка заголовков
\makeatletter
\renewcommand\LARGE{\@setfontsize\LARGE{22pt}{20}}
\renewcommand\Large{\@setfontsize\Large{20pt}{20}}
\renewcommand\large{\@setfontsize\large{16pt}{20}}
\makeatother
\RequirePackage{titlesec}
\titleformat{\chapter}{\large\bfseries}{\thechapter}{0.5em}{\large\bfseries\raggedright}
\titleformat{name=\chapter,numberless}{}{}{0pt}{\large\bfseries\centering\raggedright}
\titleformat{\section}{\large\bfseries}{\thesection}{0.5em}{\large\bfseries\raggedright}
\titleformat{\subsection}{\large\bfseries}{\thesubsection}{0.5em}{\large\bfseries\raggedright}
\titlespacing{\chapter}{12.5mm}{-22pt}{10pt}
\titlespacing{\section}{12.5mm}{10pt}{10pt}
\titlespacing{\subsection}{12.5mm}{10pt}{10pt}

% Подключения пакетов для фигур
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{wrapfig}
\RequirePackage{tikzscale}

% Создание рисунков
\newcommand{\imgw}[4]
{
	\begin{figure}[#2]
		\center{\includegraphics[width=#3]{inc/img/#1}}
		\caption{#4}
		\label{img:#1}
	\end{figure}
}
\newcommand{\imgh}[4]
{
	\begin{figure}[#2]
		\center{\includegraphics[height=#3]{inc/img/#1}}
		\caption{#4}
		\label{img:#1}
	\end{figure}
}
\newcommand{\imgs}[4]
{
	\begin{figure}[#2]
		\center{\includegraphics[scale=#3]{inc/img/#1}}
		\caption{#4}
		\label{img:#1}
	\end{figure}
}

% Подключение пакетов таблиц
\RequirePackage{tabularx}
\RequirePackage{booktabs}

% Настройка графиков
\RequirePackage{pgfplots}
\pgfplotsset{compat=newest}

% Настройка листингов
\RequirePackage{listings}
\RequirePackage{listingsutf8}
\lstset{
	basicstyle=\small\ttfamily,
	frame=single,
	numbers=none,
	breaklines=true,
	inputencoding=utf8/koi8-r,
}

% Создание листинга
\newcommand{\listingfile}[4]{
	\lstinputlisting[
		float=h!,
		abovecaptionskip=-5pt,
		caption={#3},
		label={lst:#1},
		language={#2},
		#4,
	]{inc/lst/#1}
}

% Настройка подписей
\RequirePackage[
	labelsep=endash,
	figurename=Рисунок,
	singlelinecheck=false,
]{caption}
\captionsetup[figure]{justification=centering}

% Подключение пакетов для альбомной ориентации
\RequirePackage{lscape}
\RequirePackage{afterpage}

% Подключение математических пакетов
\RequirePackage{amsmath}
\RequirePackage{amssymb}

% Настройка библиографии
\RequirePackage[
	style=gost-numeric,
	language=auto,
	autolang=other,
	sorting=none,
]{biblatex}
\RequirePackage{csquotes}
\DeclareFieldFormat{urldate}{(дата обращения:\addspace\thefield{urlday}\adddot \thefield{urlmonth}\adddot\thefield{urlyear})}

% Подключение пакета для гиперссылок
\RequirePackage[unicode,hidelinks]{hyperref}

% Подключение пакета для управляющих конструкций
\RequirePackage{xifthen}

\RequirePackage{bmstu_title}
\RequirePackage{bmstu_essay}
\RequirePackage{bmstu_toc}
\RequirePackage{bmstu_defabbr}
\RequirePackage{bmstu_biblio}
\RequirePackage{bmstu_appendix}