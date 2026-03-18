\ProvidesClass{clean_cv}[2021/07/28 v1.0.0 'CleanCV' Class]

\LoadClass[11pt]{article}

\RequirePackage[margin=0.5in]{geometry}
\RequirePackage{microtype}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{array}
\RequirePackage{xcolor}
\RequirePackage{xpatch}
\RequirePackage{enumitem}

\RequirePackage[fixed]{fontawesome5}
\RequirePackage[scaled=.96,osf]{XCharter}
\linespread{1.04}

\RequirePackage[hidelinks]{hyperref}

\definecolor{dateline}{gray}{0.5}
\definecolor{datecolor}{gray}{0.4}
\newcolumntype{R}{>{\raggedleft\arraybackslash}p{4em}}
\newcommand{\daterule}{\color{dateline}\vrule width 1pt}
\newcommand{\dateentry}[2]{{\leavevmode\color{datecolor}{#1}} & #2 \\ \noalign{\medskip}}
\newenvironment{datetabular}[1]{%
    \begin{tabular}{@{}>{\raggedleft\arraybackslash}p{#1}!{\daterule}p{\dimexpr(\linewidth - #1 - 1em)\relax}}%
}{%
    \end{tabular}%
}

\newcommand{\faCenter}[1]{\raisebox{-2pt}{\faIcon{#1}}}
\newcommand{\faCenterStyle}[2]{\raisebox{-2pt}{\faIcon[#1]{#2}}}

\titleformat{\section}[display]{\large\bfseries}{}{0pt}{}[\vspace{-10pt}\rule{\linewidth}{1pt}]
\titlespacing*{\section}{0pt}{0em}{0.4em}

\setlength\parindent{0pt}
\setlength\parskip{0pt}

\setlist{noitemsep,topsep=0pt,parsep=0pt,partopsep=0pt}
\newcommand{\eatvspace}{\vspace*{-1.5em}\,}

\newcommand*{\headlineposition}[1]{\def\@headlineposition{#1}}

\let\@author\@empty
\let\@headlineposition\@empty

\renewcommand{\maketitle}{%
\begin{center}
    \ifx\@author\@empty\else{ \Huge \@author} \\\fi \ifx\@headlineposition\@empty\else\vspace{4pt} {\itshape \@headlineposition}\fi
\end{center}%
\vspace{-17.2pt}
\rule{\linewidth}{1pt}
}
