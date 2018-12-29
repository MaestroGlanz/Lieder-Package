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
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/60)
  }
  #(define after-title-space (* 2 cm))
%  #(layout-set-staff-size systemhoehe)
  
  }

  \new Staff <<
    \new Voice{
      \relative c'{ \partial 4 c8 e | g4 g g8[ a] f d c4 e e r8 e d4. e8 f4. g8 f4 e r g g4. e8 c'4. b8 b4 a a a g4. a8 g[ e] f d d4 c r e4 d g g b b8([ a c)] b a4 d, d a' \bar"" \break a c c8([ b d]) c b([ a g)] \override BreathingSign.text = \markup { \musicglyph #"scripts.rvarcomma" } \breathe f8 \repeat volta 2 {g4. e8 c'4. b8 b a a4 r a g4. a8[ g] e f d d4 c r <<{s} \\ { r8 f}>>
      }

    }>>
}