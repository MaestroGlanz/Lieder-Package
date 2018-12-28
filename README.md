# Lieder-Package
This is a LaTeX package for creating easy-to-use songbooks and including these songs in songbooklets for i.e. weddings. It is intended for songs, but it can include any content you want to reuse once in a while.

The current version is the Public V0.1 Alpha licensed under CC BY SA NC ND. The license will be changed later to the common LaTeX-License or similar.

The basic concept is to have one database, the Liederbuch (songbook) and a document fetching the songs from there.

A songbook looks like that:
________
\ProvidesPackage{testSongbook}  
\RequirePackage{GFM-Liederbuch}  
  
\begin{Liederbuch}{testSongbook-1}[publisher=me & date = today]  
\begin{Lied}[meta data=this is just a test & otherData = it really is a test]{var1}{144000}  
   No notes and text yet.  
\end{Lied}  
\begin{Lied}{var2}{144000}  
   Same song, but different variant (var2)  
\end{Lied}  
\begin{Lied}{versionA}{001}  
   Another song with song number 001 in versionA. The version parameter exists, that song numbers can be overloaded.  
\end{Lied}  
\end{Liederbuch}  
  
\begin{Liederbuch}{testSongbook-2}  
\begin{Lied}[meta data= some other values]{aSong}{1}  
   Another song in another songbook  
\end{Lied}  
\end{Liederbuch}  
________

To call a song, you just write

\LBsong[var1]{testSongbook}{144000}

and it automatically adds the previous defined song to your document.


This is useful, if you reuse text segments, songs or graphics very often (you can store anything within \begin{Lied}...\end{Lied}).

