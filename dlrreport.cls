%%
%% This is file `dlrreport.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% dlr.dtx  (with options: `report,package')
%% This is a generated file.
%% 
%% Copyright (c) DLR.  All rights reserved.
%% 
%% This file contains official style files for DLR letters,
%% faxes, memos, slides, protocols, and reports.
%% Written by Dr. Patrick van der Smagt <smagt@dlr.de>.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dlrreport}
        [2008/12/09 v7.1.0
Report/Bericht class]

\newif\ifdlrpdf\ifx\pdfoutput\undefined
\else\ifx\pdfoutput\relax\else\ifnum\pdfoutput<1\else\dlrpdftrue\fi\fi\fi
\RequirePackage{graphicx}
\input{dlrutils.def}
\def\CompanyName{DLR}
%\ifdlrpdf\def\DLRLogoExt{.pdf}\else\def\DLRLogoExt{.eps}\fi
\ifdlrpdf\def\DLRLogoExt{.eps}\else\def\DLRLogoExt{.eps}\fi  
\xdef\DLRLogo{dlrlogo\DLRLogoExt}
\xdef\DLRLogog{dlrlogog\DLRLogoExt}
\xdef\DLRLogoi{dlrlogoi\DLRLogoExt}
\xdef\DLRAdler{dlradler\DLRLogoExt}
\xdef\DLRAdlerg{dlradlerg\DLRLogoExt}
\xdef\DLRAdleri{dlradleri\DLRLogoExt}
\DeclareOption{texfonts}{\def\@headerfonts{texfonts}}
\DeclareOption{frutiger}{\def\@headerfonts{frutiger}}
\DeclareOption{postscript}{\def\@headerfonts{postscript}}
\DeclareOption{psfonts}{\def\@headerfonts{postscript}}
\ExecuteOptions{frutiger}
\def\@texfonts{texfonts}
\def\@postscript{postscript}
\def\@frutiger{frutiger}
\DeclareOption{english}{\def\use@english{yes}
        \let\use@german\undefined\let\use@french\undefined}
\DeclareOption{german} {\let\use@english\undefined
        \def\use@german{yes}\let\use@new@german\undefined\let\use@french\undefined}
\DeclareOption{ngerman} {\let\use@english\undefined
        \def\use@german{yes}\def\use@new@german{yes}\let\use@french\undefined}
\DeclareOption{ogerman} {\let\use@english\undefined
        \def\use@german{yes}\let\use@new@german\undefined\let\use@french\undefined}
\DeclareOption{french} {\let\use@english\undefined
        \let\use@german\undefined\def\use@french{yes}}
\DeclareOption{nohelmholtz}{\def\use@oldheader{yes}\def\helmholtz@param{yes}}
\DeclareOption{helmholtz}{\let\use@oldheader\undefined\def\helmholtz@param{yes}}
\DeclareOption{a4paper}
  {\setlength\paperheight{297mm} \setlength\paperwidth{210mm}}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}\ExecuteOptions{postscript}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\ExecuteOptions{ngerman,twoside}
\def\size@opt{12pt}
\DeclareOption{10pt}{\def\size@opt{10pt}}
\DeclareOption{11pt}{\def\size@opt{11pt}}
\DeclareOption{12pt}{\def\size@opt{12pt}}
\DeclareOption{oneside}{\@twosidefalse  \@mparswitchfalse}
\input{DLRInstOptions.clo}
\DeclareOption*{\ClassWarningNoLine{%
dlrreport}%
{Unknown option `\CurrentOption'}}
\ProcessOptions
\LoadClass[\size@opt]{report}
\usepackage{palatino}
\usepackage[a4paper]{geometry}
\if@twoside
\geometry{a4paper,twoside=true,left=28mm,top=10mm,right=22mm,bottom=30mm,headheight=2ex,headsep=2.5ex,footskip=4ex}
\else
\geometry{a4paper,twoside=false,left=28mm,top=10mm,right=22mm,bottom=30mm,headheight=2ex,headsep=2.5ex,footskip=4ex}
\fi
\def\he@derruleskip{0pt}
\parindent0pt
\parskip4pt
\addtolength\headsep{3mm}
\newcommand\zusammenfassungname{Zusammenfassung}
\newcommand\eabstractname{Abstract}
\ifx\use@english\undefined
  \ifx\use@german\undefined
  \else
    \ifx\use@new@german\undefined
      \RequirePackage{german}
    \else
      \RequirePackage{ngerman}
    \fi
    \input{DLRgerman.clo}
    \def\DLRHGFText{}
  \input{DLRInstDE.clo}
  \fi
  \ifx\use@french\undefined
  \else
    \RequirePackage{french}
    \input{DLRfrench.clo}
    \def\DLRHGFText{Membre de l'Association Helmholtz}
  \input{DLRInstFR.clo}
  \fi
\else
  %\def\refname{References}
  \input{DLRenglish.clo}
  \def\DLRHGFText{The German Aerospace Center is a Member of the Helmholtz

   Association.}
  \input{DLRInstEN.clo}
\fi
\ifx\selectinstitute\undefined
  \ClassError{%
dlrreport}%
{You did not define an institute.\MessageBreak Please correct
your input file\MessageBreak and run LaTeX again}{For this DLR class, you
have to define an institute such as\MessageBreak RM in the class options.
Please read the manual to see how\MessageBreak you can include your institute.
There's no use continuing\MessageBreak this LaTeX run now!
}
\fi
\expandafter\ifx\selectinstitute\undefined
  \typeout{}
  \ifx\use@english\undefined
    \typeout{The requested institute has not been defined in French.}
  \else
    \typeout{The requested institute has not been defined in English.}
  \fi
  \typeout{I will use the German version instead, sorry!}
  \typeout{}
  \input{DLRInstDE.clo}
\fi

\input{DLRStdo.clo}
\selectinstitute
\ifx\helmholtz@param\undefined
  \def\usen@helmholtz{an}
  \ifx\INSTbriefvorlage\usen@helmholtz
    \def\use@oldheader{yes}
\fi\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\let\op@unds\pounds
\def\pounds{\usefont{OT1}{cmr}{m}{ui}\selectfont\op@unds}
\def\@initializetypefacedependencies{
\ifx\declare@font\undefined \else \def\@headerfonts{postscript} \fi
\ifx\@headerfonts\@texfonts
\def\fifteenpt{\usefont{OT1}{cmss}{m}{n}\fontsize{15pt}{17pt}\selectfont}
\def\fifteenl{\usefont{OT1}{cmss}{m}{n}\fontsize{15pt}{17pt}\selectfont}
\def\fifteenb{\usefont{OT1}{cmss}{bx}{n}\fontsize{15pt}{17pt}\selectfont}
\def\fourteenb{\usefont{OT1}{cmss}{bx}{n}\fontsize{14pt}{16pt}\selectfont}
\def\fourteenpt{\usefont{OT1}{cmss}{m}{n}\fontsize{14pt}{16pt}\selectfont}
\def\thirteenpt{\usefont{OT1}{cmss}{m}{n}\fontsize{13pt}{15pt}\selectfont}
\def\twelvept{\usefont{OT1}{cmss}{m}{n}\fontsize{11pt}{14pt}\selectfont}
\def\elevenpt{\usefont{OT1}{cmss}{m}{n}\fontsize{11pt}{13pt}\selectfont}
\else
\ifx\@headerfonts\@frutiger
\def\fifteenpt{\usefont{OT1}{pfr}{sb}{n}\fontsize{15pt}{17pt}\selectfont}
\def\fifteenl{\usefont{OT1}{pfr}{m}{n}\fontsize{15pt}{17pt}\selectfont}
\def\fifteenb{\usefont{OT1}{pfr}{b}{n}\fontsize{15pt}{17pt}\selectfont}
\def\fourteenb{\usefont{OT1}{pfr}{b}{n}\fontsize{14pt}{16pt}\selectfont}
\def\fourteenpt{\usefont{OT1}{pfr}{sb}{n}\fontsize{14pt}{16pt}\selectfont}
\def\thirteenpt{\usefont{OT1}{pfr}{sb}{n}\fontsize{13pt}{15pt}\selectfont}
\def\twelvept{\usefont{OT1}{pfr}{sb}{n}\fontsize{11pt}{14pt}\selectfont}
\def\elevenpt{\usefont{OT1}{pfr}{sb}{n}\fontsize{11pt}{13pt}\selectfont}
\else
\def\fifteenpt{\usefont{OT1}{phv}{m}{n}\fontsize{15pt}{17pt}\selectfont}
\def\fifteenl{\usefont{OT1}{phv}{m}{n}\fontsize{15pt}{17pt}\selectfont}
\def\fifteenb{\usefont{OT1}{phv}{b}{n}\fontsize{15pt}{17pt}\selectfont}
\def\fourteenb{\usefont{OT1}{phv}{b}{n}\fontsize{14pt}{16pt}\selectfont}
\def\fourteenpt{\usefont{OT1}{phv}{m}{n}\fontsize{14pt}{16pt}\selectfont}
\def\thirteenpt{\usefont{OT1}{phv}{m}{n}\fontsize{13pt}{15pt}\selectfont}
\def\twelvept{\usefont{OT1}{phv}{m}{n}\fontsize{11pt}{14pt}\selectfont}
\def\elevenpt{\usefont{OT1}{phv}{m}{n}\fontsize{11pt}{13pt}\selectfont}
\fi
\fi
\def\@formvi{\@formsix}
\def\@formvii{\@formseven}
\def\@formix{\@formnine}
\def\@formx{\@formular}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\tr@number{}
\def\tr@name{Mitteilung}
\newcommand\trnumber[1]{\def\tr@number{#1}}
\newcommand\trname[1]{\def\tr@name{#1}}
\def\running@title{}
\newcommand\runningtitle[1]{\def\running@title{#1}}
\newif\ifno@abstract \no@abstracttrue
\newif\ifno@zusammenfassung \no@zusammenfassungtrue
\def\elevenpt{%
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xipt{13.6}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}%
\normalsize%
\renewcommand\small{%
   \@setfontsize\small\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}%
\renewcommand\footnotesize{%
   \@setfontsize\footnotesize\@ixpt{11}%
   \abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}%
\renewcommand\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}%
\renewcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}%
\renewcommand\large{\@setfontsize\large\@xiipt{14}}%
\renewcommand\Large{\@setfontsize\Large\@xivpt{18}}%
\renewcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}%
\renewcommand\huge{\@setfontsize\huge\@xxpt{25}}%
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}}
\newif\if@mainmatter \@mainmattertrue
  \def\ps@headings{%
      \def\@evenfoot{\if@mainmatter\elevenpt\tr@number\fi}
      \def\@oddfoot{\if@mainmatter\hfil\elevenpt\tr@number\fi}
      \def\@evenhead{\if@mainmatter\elevenpt\vbox{
                \setbox1=\hbox to \hsize{\thepage\hfil\slshape\running@title}
                \dp1=0pt\box1
                \vskip\he@derruleskip
                \vskip-1ex
                \hbox to \hsize{\hrulefill}}\fi}%
      \def\@oddhead{\if@mainmatter\elevenpt\vbox{
                \setbox1=\hbox to \hsize{{\slshape\rightmark}\hfil\thepage}
                \dp1=0pt\box1
                \vskip\he@derruleskip
                \vskip-1ex
                \hbox to \hsize{\hrulefill}}\fi}%
      \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markright {%
        \ifnum \c@secnumdepth >\m@ne
          \if@mainmatter
            \thechapter. \ %
          \fi
        \fi
        ##1}}}%
\newcommand\frontmatter{%
  \clearpage
  \@mainmatterfalse
  \pagenumbering{roman}}
\newcommand\mainmatter{%
  \clearpage
  \@mainmattertrue
  \pagenumbering{arabic}}
\newcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse}
\pagestyle{headings}
\AtEndDocument{\clearpage\addtocounter{page}{-1}%
  \ifnum\aux@pagecnt=\thepage \relax \else
  \typeout{^^JLaTeX Warning: Counters may have changed. Please rerun LaTeX.^^J}
\fi
\immediate\write\@auxout{\string\global\aux@pagecnt=\@arabic\c@page}
\immediate\write\@auxout{\string\global\string\aux@figurecnt=\@arabic\@figurecnt}
\immediate\write\@auxout{\string\global\string\aux@tablecnt=\@arabic\@tablecnt}
}%\immediate\write\@auxout{\string\restore@writefile}}
\newcount\aux@pagecnt\aux@pagecnt=0
\def\add@total@counter#1{\global\advance\csname @#1cnt\endcsname by 1}
\AtBeginDocument{
\let\add@total@caption\caption
\def\caption{\add@total@counter{\@captype} \add@total@caption}
}
\newcount\aux@figurecnt\aux@figurecnt=0
\newcount\@figurecnt\@figurecnt=0
\newcount\aux@tablecnt\aux@tablecnt=0
\newcount\@tablecnt\@tablecnt=0
\def\defineascaption#1{
  \expandafter\let\csname orig@\string#1\endcsname #1
  \expandafter\def\expandafter#1\expandafter{\add@total@counter{\@captype}\csname orig@\string#1\endcsname}
}
\def\defineasbibitem#1{
  \expandafter\let\csname orig@\string#1\endcsname #1
  \expandafter\def\expandafter#1\expandafter{\global\advance\@bibcnt by 1
  \protected@write\@auxout{}{\string\global\aux@bibcnt=\the\@bibcnt}
  \csname orig@\string#1\endcsname}
}
\newcount\@bibcnt\@bibcnt=0
\newcount\aux@bibcnt\aux@bibcnt=0
\let\bib@item\bibitem\def\bibitem{%
        \global\advance\@bibcnt by 1%
        \immediate\write\@auxout{\string\global\aux@bibcnt=\the\@bibcnt}%
        \bib@item}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\elevenpt #1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    \elevenpt #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\newlength{\chap@indent}
\def\@makechapterhead#1{%
  \if@mainmatter\else\mainmatter\fi
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \def\chap@num{\huge\bfseries\thechapter\quad}
    \settowidth{\chap@indent}{\chap@num}
    \ifnum \c@secnumdepth >\m@ne
        \chap@num%\huge\bfseries \thechapter\space\space\space\space\space
    \fi
    \interlinepenalty\@M
    \Huge \bfseries \hangindent \chap@indent \hangafter 1 #1\par\nobreak
    \vskip 40\p@
  }}
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\renewenvironment{titlepage}
    {%
      \cleardoublepage
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
     % \setcounter{page}\@ne
    }%
    {\if@restonecol\twocolumn \else \newpage \fi}
\renewcommand\maketitle{%
% \frontmatter
 \setcounter{page}{-1}
 \@initializetypefacedependencies
\begin{titlepage}%
  \unitlength1mm
  \begin{picture}(160,240)(25,40)
    \pretolerance10000
    \put(106,255){\let\@formten\fifteenl\fifteenpt\FirmaEINS}
    \put(106,249.5){\let\@formten\fifteenl\fifteenpt\FirmaZWEI}
    \put(-17.5,231.5){\special{ps:@beginspecial 0 @llx 0 @lly 61 @urx
        49 @ury 610 @rwi @setspecial newpath 0 0 moveto
        532 0 rlineto 22 22 rlineto -510 0 rlineto
        0 -22 rlineto closepath 0.5 setgray fill @endspecial}}
    \put(0,0){\special{ps:1 setgray}} % Set color to white
    \put(106,234){\fourteenb \tr@name~\tr@number}
    \put(0,0){\special{ps:0 setgray}} % Set color to black
    \put(106,219){\parbox[t]{85mm}{\raggedright\fourteenpt\@title}}
    \put(106,155){\parbox[t]{85mm}{\raggedright\fourteenpt\@author
        \par\vskip2ex\INSTfenstertext\\\INSTstandort}}
    \put(106,40){\includegraphics[width=72mm]{\DLRLogo}}
  \end{picture}
\end{titlepage}%
\cleardoublepage
\begin{titlepage}%
  \unitlength1mm
  \begin{picture}(160,240)(25,40)
  \pretolerance10000\fourteenpt
        \put(106,219){\parbox[t]{85mm}{\raggedright\fourteenpt\@title}}
        \put(106,155){\parbox[t]{85mm}{\raggedright\fourteenpt\@author
            \par\vskip2ex\INSTfenstertext\\\INSTstandort}}
        \put(106,100){\parbox[t]{10cm}{\begin{tabular}{rl}
            \the\aux@pagecnt &
                \ifnum\aux@pagecnt=1 Seite\else Seiten\fi\\
            \the\aux@figurecnt &
                \ifnum\aux@figurecnt=1 Bild\else Bilder\fi\\
            \the\aux@tablecnt &
                \ifnum\aux@tablecnt=1 Tabelle\else Tabellen\fi\\
            \the\aux@bibcnt &
                \ifnum\aux@bibcnt=1 Literaturstelle\else Literaturstellen\fi
                        \end{tabular}}}
  \end{picture}
\end{titlepage}%
\cleardoublepage
\begin{titlepage}%
  \unitlength1mm
  \begin{picture}(160,240)(25,0)
        \put(55,200){\parbox[t]{108mm}{\Large\textbf{\@title}}}
        \put(55,120){\let\@formten\relax\FirmaEINS}
        \put(55,115){\let\@formten\relax\FirmaZWEI}
  \end{picture}
\end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\renewenvironment{abstract}{%
      \ifno@zusammenfassung\else
                \@latex@error{Your document should first give
                        the English abstract,^^J  and then the
                        German Zusammenfassung.  Not the other
                        way around!}\fi
      % Make sure we skip only one page, when titlepage is called.
      \let\cleardoublepage\clearpage\titlepage
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \bfseries \eabstractname
        \@endparpenalty\@M
      \end{center}}%
     {\par\endtitlepage\global\no@abstractfalse}
\newenvironment{zusammenfassung}{%
     \cleardoublepage
     \titlepage
     \@beginparpenalty\@lowpenalty
     \begin{center}%
       \bfseries \zusammenfassungname
       \@endparpenalty\@M
      \end{center}}%
     {\par\endtitlepage\global\no@zusammenfassungfalse}
\@openrighttrue
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\endinput
%%
%% End of file `dlrreport.cls'.