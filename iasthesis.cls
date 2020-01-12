% phdthesis
%
% Built by Hany Abdulsamad (hany@robot-learning.de), 2020
%
% This version Copyright (c) 2020 Hany Abdulsamad
%
% Broad permissions are granted to use, modify, and distribute this software
% as specified in the MIT License included in this distribution's LICENSE file.

% !TeX root = thesis.tex

%-------------------------- identification ---------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iasthesis}[2020/01/07 TUDa IAS thesis class]
%-------------------------- initial code -----------------------

\LoadClass[a4paper,twoside,12pt,numbers=noenddot,chapterprefix=true,openright]{scrreport}

\usepackage{scrhack}

\usepackage[ngerman,main=english]{babel}

\usepackage[no-math]{fontspec} % luatex
\setmainfont{Crimson-Text}[Ligatures=TeX,
							ItalicFont = {Crimson-Italic},
							BoldFont = {Crimson-Semibold},
							BoldItalicFont = {Crimson-SemiboldItalic}]

\usepackage{datetime}

\usepackage{setspace}
\onehalfspacing

% fixes citation on line breaks
\usepackage{cite}

% multiple bibliographies
\usepackage{multibbl}

% control spaceing in bib
\usepackage{bibspacing}

%% fix url in biblio
%\usepackage{url}
%\Urlmuskip=0mu plus 1mu\relax

% show roman page numbering in pdf viewer
\usepackage[breaklinks=true,pdfpagelabels]{hyperref}

\usepackage{xcolor}
\usepackage{graphicx}


% TU Darmstadt crest
\def\crest{{\includegraphics[scale=1.75]{figures/tuda_logo.pdf}}}


% Define margines
\usepackage[top=39mm, headsep=10mm, headheight=20mm, inner=27mm, outer=27mm, bottom=35mm]{geometry}


% Define title page
\renewcommand{\maketitle}{%
	\renewcommand{\footnotesize}{\small}
	\renewcommand{\footnoterule}{\relax}
	\thispagestyle{empty}
	{
		\setlength{\parskip}{0pt}%
		\setlength{\parindent}{0pt}
		\begin{center}
			{\large {\crest \par} \vspace*{25mm}}
			{\LARGE {\bfseries {\@title}} \par} \vspace*{10mm}
			{Dem Fachbereich Informatik an der \\ TECHNISCHEN UNIVERSITÄT DARSMTADT \par} \vspace*{5mm}
			{zur Erlangung des akademischen Grades eines \\ Doktor-Ingenieurs (Dr.-Ing.)
				 \\ vorgelegte Dissertation \par} \vspace*{10mm}
			{von \par} \vspace*{3mm}
			{{\Large \@author} \par} \vspace*{20mm}
			{Erstgutachter: Prof. Jan Peters, Ph.D. \par}
			{Zweitgutachter: Prof. \par}  \vspace*{30mm}
			Darmstadt, \selectlanguage{ngerman} \today
		\end{center}
	}
}%


% Penalize hyphenation
\pretolerance=10000
\tolerance=1
\emergencystretch=\maxdimen
\hbadness=10000
\hyphenpenalty=10000


% Define headers
\usepackage[headsepline,footsepline,automark,plainfootsepline]{scrlayer-scrpage}

\clearpairofpagestyles
\renewcommand{\chaptermark}[1]{\markboth{\scshape Chapter \thechapter: #1}{\scshape Chapter \thechapter: #1}}
\renewcommand{\sectionmark}[1]{{\markright{\scshape Section \thesection: #1}}}
\ofoot*{\pagemark}
\ohead{\headmark}
\addtokomafont{pageheadfoot}{\upshape}


% Redefine dedication
\renewenvironment{dedication}%
{	\begin{@empty} \clearpage \thispagestyle{empty}\vspace*{\fill} \begin{center}}
		{\end{center} \vspace*{\fill}\vspace*{\fill} \clearpage \end{@empty}}


% Define tudprints page
\newenvironment{tudprints}%
{	\begin{@empty}
	\clearpage
	\thispagestyle{empty}
	}
	{\clearpage \end{@empty}}


% Define env for abstract and acknowledgement
\newenvironment{meta}[1]%
{   \begin{@empty}
	\clearpage

	\RedeclareSectionCommand[beforeskip=0pt, afterskip=0pt, afterindent=false]{chapter}
	\renewcommand{\raggedchapter}{\raggedleft}
	\renewcommand*{\chapterformat}{\thechapter}

	\chapter*{#1}
	\setlength{\parskip}{\baselineskip}%
	\setlength{\parindent}{0pt}
	}
	{\clearpage \end{@empty}}


%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Redefine section style
%%%%%%%%%%%%%%%%%%%%%%%%%%

% Change spacing before and after sction titles
\RedeclareSectionCommand[beforeskip=0pt,runin=false,afterskip=-0.5\parskip]{section}
\addtokomafont{section}{\textcolor{crimson}}

\RedeclareSectionCommand[beforeskip=0pt,runin=false,afterskip=-0.5\parskip]{subsection}
\addtokomafont{subsection}{\textcolor{crimson}}

\RedeclareSectionCommand[beforeskip=0pt,afterskip=-0.5\parskip]{paragraph}


%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Redefine chapter style
%%%%%%%%%%%%%%%%%%%%%%%%%%

% Chapter numbering color
\definecolor{indianred}{rgb}{0.8,0.36,0.36}
\definecolor{bostonred}{rgb}{0.8,0.0,0.0}
\definecolor{crimson}{rgb}{0.6471, 0.1098, 0.1882}

\RedeclareSectionCommand[beforeskip=0pt,innerskip=-20pt,afterskip=0pt,afterindent=false]{chapter}
\renewcommand*{\raggedchapter}{\raggedleft}

\addtokomafont{disposition}{\Huge \rmfamily}
\addtokomafont{chapterprefix}{\Huge \textcolor{gray!50}}
\addtokomafont{chapter}{\fontsize{35}{35} \selectfont \bfseries \textcolor{crimson}}
\addtokomafont{chapterentry}{\Large \textcolor{crimson}}

\setlength{\parskip}{\baselineskip}%
\setlength{\parindent}{0pt}


%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Redefine appendix style
%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\YUGE{\fontsize{30}{30}\selectfont}


% fix algorithm boxes
\usepackage[ruled]{algorithm2e}

\makeatletter
\renewcommand{\algocf@caption@boxruled}{%
	\hrule
	\hbox to \hsize{%
		\vrule\hskip-0.4pt
		\vbox{   
			\vskip\interspacetitleboxruled%
			\unhbox\algocf@capbox\hfill
			\vskip\interspacetitleboxruled
		}%
		\hskip-0.4pt\vrule%
	}\nointerlineskip%
}%
\makeatother


% mini toc 
\usepackage[nohints]{minitoc} 
\setcounter{minitocdepth}{1} 
\mtcsetrules{*}{off}

% removes chapter numbers from minitoc
\newcommand{\filterminitoc}[1]{#1}
\renewcommand{\thesection}{\csname filterminitoc \endcsname{\arabic{chapter}.}\arabic{section}}
\newcommand{\minitocsection}{\begingroup\renewcommand{\filterminitoc}[1]{}\minitoc\endgroup}


% in combination with myapalike.bst this highlights name in publications
\def\FormatName#1{%
	\def\myname{Hany Abdulsamad}%
	\edef\name{#1}%
	\ifx\name\myname
	\textbf{#1}%
	\else
	#1%
	\fi
}
