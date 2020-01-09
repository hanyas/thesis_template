% phdthesis
%
% Built by Hany Abdulsamad (hany@robot-learning.de), 2020
%
% This version Copyright (c) 2020 Hany Abdulsamad
%
% Broad permissions are granted to use, modify, and distribute this software
% as specified in the MIT License included in this distribution's LICENSE file.

%-------------------------- identification ---------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iasthesis}[2020/01/07 TUDa IAS thesis class]
%-------------------------- initial code -----------------------

\LoadClass[a4paper,twoside,12pt,numbers=noenddot]{scrreport}

\usepackage{scrhack}

\usepackage[ngerman,main=english]{babel}

\usepackage{datetime}

\usepackage{xcolor}
\usepackage{graphicx} 

\usepackage{setspace}
\onehalfspacing

\usepackage[pdfpagelabels]{hyperref}	% show roman page numbering in pdf viewer


% TU Darmstadt crest
\def\crest{{\includegraphics[scale=1.75]{tuda_logo.pdf}}}


% Define margines
\usepackage[top=34mm, headsep=10mm, headheight=20mm, inner=27mm, outer=27mm, bottom=29mm]{geometry}


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
			{Erstgutahter: Prof. Jan Peters, Ph.D. \par}
			{Zweitgutachter: Prof. \par}  \vspace*{30mm}
			Darmstadt, \selectlanguage{ngerman} \today
		\end{center}
	}
}%


% Penalize hyphenation
\pretolerance=10000
\tolerance=2000 
\emergencystretch=0pt


% Define headers
\usepackage[headsepline,footsepline,automark,plainfootsepline]{scrlayer-scrpage}
\clearpairofpagestyles
\renewcommand{\chaptermark}[1]{\markboth{\scshape Chapter \thechapter: #1}{\scshape Chapter \thechapter: #1}}
\renewcommand{\sectionmark}[1]{{\markright{\scshape Section \thesection: #1}}}
%\lohead{\leftmark} \rehead{\rightmark}
%\lofoot{\pagemark} \refoot{\pagemark}
\ofoot*{\pagemark}
\ohead{\headmark}
\addtokomafont{pageheadfoot}{\upshape}


% Redefine dedication
\renewenvironment{dedication}%
{	\begin{@empty} \clearpage \thispagestyle{empty}\vspace*{\fill} \begin{center}}
		{\end{center} \vspace*{\fill}\vspace*{\fill} \clearpage \end{@empty}}


% Define acknowledgements
\newenvironment{acknowledgements}%
{   \begin{@empty}
		\clearpage

		\RedeclareSectionCommand[beforeskip=0pt, afterskip=0pt, afterindent=false]{chapter}
		\renewcommand{\raggedchapter}{\raggedleft}
		\renewcommand*{\chapterformat}{\thechapter}
		
		\chapter*{Acknowledgements}
		\thispagestyle{scrheadings}
		\setlength{\parskip}{\baselineskip}%
		\setlength{\parindent}{0pt}
	}
	{\end{@empty}}


% Redefine abstract
\renewenvironment{abstract}%
{   \begin{@empty}
		\clearpage

		\RedeclareSectionCommand[beforeskip=0pt, afterskip=0pt, afterindent=false]{chapter}
		\renewcommand{\raggedchapter}{\raggedleft}
		\renewcommand*{\chapterformat}{\thechapter}

		\chapter*{Abstract}
		\thispagestyle{scrheadings}
		\setlength{\parskip}{\baselineskip}%
		\setlength{\parindent}{0pt}		
	}
	{\clearpage \end{@empty}}


% Define german abstract
\newenvironment{kurzfassung}%
{   \begin{@empty}
	\clearpage
	
	\RedeclareSectionCommand[beforeskip=0pt, afterskip=0pt, afterindent=false]{chapter}
	\renewcommand{\raggedchapter}{\raggedleft}
	\renewcommand*{\chapterformat}{\thechapter}
	
	\chapter*{Kurzfassung}
	\thispagestyle{scrheadings}
	\setlength{\parskip}{\baselineskip}%
	\setlength{\parindent}{0pt}
	}
	{\clearpage \end{@empty}}


% Chapter numbering color
\definecolor{indianred}{rgb}{0.8,0.36,0.36}

