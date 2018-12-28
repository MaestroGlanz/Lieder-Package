\NeedsTeXFormat {LaTeX2e}
\ProvidesClass{Liederheft}

%Argumente der Klasse
%\PassOptionsToClass{#1}{scrbook}
%\PassOptionsToClass{#2}{scrbook}
\ProcessOptions\relax

\LoadClass[a5paper,11pt,twosided]{scrbook}


%usepackages
\RequirePackage{graphicx}
\RequirePackage{etoolbox}
\RequirePackage{environ}
\RequirePackage{GFM-FillPages}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\raggedbottom

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%verschiedene Einfügetypen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcounter{GFM@LH@songPrinted}[page]


\newcommand{\LHsong}[3][n]{
\ifnum\value{GFM@LH@songPrinted}=0

\else
\
\newpage
\fi
\LBsong[#1]{#2}{#3}
}

%\AtBeginDocument{
%}

%\AtEndDocument{
%}


\newcommand{\LHuseStyle}[1][default]{
\input{LHuseStyle-#1.sty}
}

%Darstellungsstandard für Lieder
\newcommand{\LHliederStandard}{nt}
\newcommand{\LHsetLiederStandard}[1]{\renewcommand{\LHliederStandard}{#1}}


