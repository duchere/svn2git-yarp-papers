% bmvc.cls - based heavily on Adrian Clark's BMVC Proceedings style v1.01 (19-Jun-1997)}
%

% ------------ identification --------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bmvc}[2003/04/09 BMVA BMVC]

\DeclareOption{twoside}{\PassOptionsToPackage{twoside}{article}}
\DeclareOption{draft}{\PassOptionsToPackage{draft}{article}}

\ProcessOptions

\LoadClass[10pt,a4paper]{article}

\RequirePackage{fancyheadings}
\RequirePackage{ifthen}
\RequirePackage{rotating}
\RequirePackage{mathptmx}       % If you have an old LaTeX implmentation then comment-out this line
%\RequirePackage{mathptm}       % ...and un-comment this line or, better still, update your LaTeX.
%\RequirePackage{times}         % Or, use this if you need bold maths font - apparently the lack of
                                % of bold maths is a well "feature" of mathptm

% ----------------------------------------------------------------------
% Page sizes, etc
% ----------------------------------------------------------------------

\textheight=200mm
\textwidth=125mm
\topmargin=-0.2in
\headsep=0.8in
\oddsidemargin=0.7in


% Headings -- only conference name, outside page boundaries

\lhead{}
\chead{}
\rhead{}
\lfoot{}
\cfoot{}
\rfoot{}
\headrulewidth=0pt
\pagestyle{empty}


% ----------------------------------------------------------------------
% Define substitutes for NFSS macros that are missing in the old font
% selection scheme
% ----------------------------------------------------------------------

\ifx\undefined\reset@font
  \@warning{`bmvc.sty' is untested with the old font selection scheme.}
  \def\reset@font{\normalsize}
\fi


% ----------------------------------------------------------------------
% Likewise, a pair of macros for producing verbatim listings of files:
% \listing (with numbered lines) and \verbatimfile (unnumbered lines),
% with the listings produced in \verbatimfont.
% ----------------------------------------------------------------------

% Note that the precise layout of line breaks in the following is vital!

\def\verbatimfont{\tt}

\def\verbatimfile#1{\begingroup \@verbatim \frenchspacing \@vobeyspaces
   \verbatimfont \input#1 \endgroup}

\newcounter{lineno}

\def\listing#1{\setcounter{lineno}{0}%
   \begingroup \@verbatim \frenchspacing \@vobeyspaces \parindent=20pt
   \everypar{\stepcounter{lineno}\llap{\thelineno:\ \ }}%
   \verbatimfont \input#1
   \endgroup}


% ----------------------------------------------------------------------
% Modifications to section headings, etc
% ----------------------------------------------------------------------

% Set section headings ragged-right

\def\section{\@startsection {section}{1}{\z@}{-3.5ex plus-1ex minus
    -.2ex}{2.3ex plus.2ex}{\reset@font\Large\bf\raggedright}}
\def\subsection{\@startsection{subsection}{2}{\z@}{-3.25ex plus-1ex
     minus-.2ex}{1.5ex plus.2ex}{\reset@font\large\bf\raggedright}}
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{-3.25ex plus
     -1ex minus-.2ex}{1.5ex plus.2ex}{\reset@font\normalsize\bf\raggedright}}


% ----------------------------------------------------------------------
% Modifications to article title, etc
% ----------------------------------------------------------------------

\def\@maketitle{\newpage
 \begin{center}%
  {\LARGE\bf \@title \par}%
  \vskip 1.5em
  {\large \lineskip .5em
   \begin{tabular}[t]{c}\@author
   \end{tabular}\par}%
 \end{center}%
 \par
 \vskip 1.5em}

\def\abstract{
\thispagestyle{empty}
\begin{center}\small
{\bf \abstractname}
\end{center}%
\begin{quotation}\noindent\ignorespaces}

\def\endabstract{\end{quotation}}

\endinput


REVISION HISTORY

1.00  29-Mar-1994  Original version
1.01  20-Mar-1997  Added page number to top right-hand corner, to aid
                   the editor's collation task
1.02  19-Jun-1997  Removed the code to make the underscore character active
2.00  09-Mar-2003  Converted to a Class file.  Updated to use mathptmx
% ----------------------------------------------------------------------
% End of bmvc.cls
% ----------------------------------------------------------------------
