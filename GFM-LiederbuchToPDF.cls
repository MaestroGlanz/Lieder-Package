\ProvideClass{GFM-LiederbuchToPDF}
\RequirePackage{l3packages}

\loadLiederbuch{
\begin{document}

\end{document}
}


%command für notenzeile etc kopieren







%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Umgebungen für Liederbücher und Lieder
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NewEnviron{Liederbuch}[2][]{%
\changeCatCode{&}
\let&{\\}
\changeCatCode`\=}
\let={undo spaces :~}
{\Large #1}\\
\Metadaten :\\
\ifx#1\empty%
\keineMetadaten
\else%

\fi%
%Umgebungen für Lieder
\NewEnviron{Lied}{%
}
metadaten
\BODY
}