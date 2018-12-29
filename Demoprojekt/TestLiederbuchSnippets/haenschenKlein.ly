\version "2.18.2"

systemhoehe = 10
customvar = 40
customratio = 2
seitenhoehe = #(* systemhoehe customratio)
\header{
%  title = tets
%  opus = test
%  piece = test
}

 %#(* systemhoehe 1\pt))

\paper{
  annotate-spacing = ##f
  indent=0\mm
  short-indent = 0\mm
  paper-width = 150\mm
  %line-width=120\mm
  oddFooterMarkup=##f
  evenFooterMarkup=##f
  oddHeaderMarkup=##f
  evenHeaderMarkup = ##f
  bookTitleMarkup = ##f
  scoreTitleMarkup = ##f
  print-page-number = ##f
  
%  Bar_number_engraver.
  
  
  left-margin = 0
  right-margin = 0
  top-margin = -5\pt
  bottom-margin = 0
  paper-height = 50\pt %#(* seitenhoehe 1\pt)
%  head-separation = 0pt
  %#(define after-title-space (* 2 cm))
  
  %system-system-spacing = -3
  top-system-spacing.basic-distance = 15\pt
  markup-system-spacing.basic-distance = 0\pt
  top-markup-spacing.basic-distance = 0\pt
%  markup-system-spacing.basic-distance = 5\pt
 % score-markup-spacing = #20
%  score-system-spacing = #20
  system-system-spacing.basic-distance = 200\pt
%  markup-markup-spacing = 0pt
%  last-bottom-spacing = 0pt
  
}

\score{
  \layout {
%  #(define page-top-space (15 pt))
  %
  \context {
    \Score
    \remove "Bar_number_engraver"
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/50)
  }
  #(define after-title-space (* 2 cm))
%  #(layout-set-staff-size systemhoehe)
  
  }

  \new Staff <<
    \new Voice{
      %\overrideProperty NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 5\pt))
%      \overrideProperty s
      s1 s1 s1
    }
    \new Voice{
  
      \relative c''{ g4 e4 e2 | f4 d4 d2 | c4 d4 e4 f4 | g4 g4 g2 |
               g4 e4 e2 | f4 d4 d2 | c4 e4 g4 g4 | c,1 |
               d4 d4 d4 d4 | d4 e4 f2 | e4 e4 e4 e4 | e4 f4 g2 |
                g4 e4 e2| f4 d4 d2| c4 e4 g4 g4 | c,1 \bar "|."
      }

    }>>
}