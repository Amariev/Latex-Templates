\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Amariev}[Amariev's Assignment template]
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Importing Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[spanish]{babel}
\RequirePackage{hyperref}
\RequirePackage{amssymb}
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage[most]{tcolorbox}
\RequirePackage{xcolor}

\usepackage{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathpazo}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{listings}
\RequirePackage{enumerate}
\RequirePackage{lipsum}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Defining new commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\university}[1]{\newcommand{\universityloc}{#1}}
\newcommand{\courseid}[1]{\newcommand{\courseidloc}{#1}}
\newcommand{\course}[1]{\newcommand{\courseloc}{#1}}
\newcommand{\professor}[1]{\newcommand{\professorloc}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Geometry
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\geometry{left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hyperref
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=cyan,
    pdftitle={Laboratorio 01b},
    pdfpagemode=FullScreen,
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom Headers and Footers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\fancyhead{}
\fancyfoot{}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0.4pt} % we want rules
\renewcommand{\footrulewidth}{0.4pt}
\fancyhead[RO]{\footnotesize\thepage}
\fancyhead[LO]{
    \footnotesize{
        \ifx\classlocal\undefined{}\else\itshape\classlocal{} --{} \fi
    }
    \makeatletter\@title\makeatother
}
\fancyfoot[RO]{\footnotesize\itshape\makeatletter\@author\makeatother}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom Problem Environment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newsavebox{\problembox}
\newenvironment{problem}[2]{\noindent\textbf{Problema #1}:\, #2 \vspace{7pt}\newline\begin{lrbox}{\problembox}\begin{minipage}{.98\textwidth}}{\vskip 6pt\end{minipage}\end{lrbox}\fbox{\usebox{\problembox}}\newline}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom Title Style
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{
    \thispagestyle{plain}
    \begin{center}
    {\scshape \universityloc}\\[10pt]
    \hrule
    \vspace{10pt}
    {\LARGE \bfseries \@title}\\[5pt]
    Estudiante: {\itshape \@author}
    \vspace{8pt}
    \hrule
    \vspace{10pt}
    \raggedright
    {Curso: {\itshape \courseloc \ (\courseidloc)}}
    \hfill
    {Profesor: {\itshape\professorloc}} \\
    \raggedright
    {Fecha de entrega: {\itshape\@date}}
    \vspace{20pt}
    \end{center}
}

\endinput
