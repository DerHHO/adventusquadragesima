\version "2.18.2"

%\include "gregorian.ly"
\include "../../../modernGregorian.ily"

\score {
  \header {
    piece = \markup { \larger \larger \larger Sanctus }
  }
  \relative a \transpose c c' {
    \override BreathingSign.text = \markup { ' }
    \key d\ionian
    \time 1/4
    \hide Stem
    \hide TupletNumber
    \hide TupletBracket
    \omit Staff.BarLine
    \omit Staff.TimeSignature
    \set Score.timing = ##f
    a4
    \melisma { \lst a \tli f }
    \melisma { \lst f e }
    d4
    \set Score.timing = ##t
    \divisioMinima
    \melisma { d4 f a }
    \melisma { a b } a
    \divisioMinima
    a4
    \melisma { \lst a \tli f }
    \melisma { \lst f e }
    d4
    \set Score.timing = ##t
    \divisioMinima
    f d f a \melisma { a b } a
    %\override NoteHead.style = #'vaticana.quilisma a
    %\quilisma
    
    \melisma { a b c' d' b a } 
    \melisma { \lst b a }
    a
    \divisioMaxima
    a4 g \melisma { f g a }
    \melisma { \lst a g e }
    fis
    \melisma { e f }
    \melisma { d e d }
    d4
    \divisioMinima
    \bar ""
    d4 \noBreak \melisma { \lst f e }
    \noBreak \melisma { e \lst a }
    \melisma { a b a } a 
    \divisioMaxima
    
    \melisma { a b c' d' b a } 
    %\melisma { \lst b a }
    %a
    \melisma { \lst b a }
    \melisma { f g a }
    \melisma { \lst a g e }
    f \melisma { e f }
    \melisma { d e d }
    d
    \divisioMaxima
    d \melisma { f e }
    \melisma { e \lst a } a
    a 
    \bar ""
    \melisma { a b } \noBreak
    a \divisioMinima
    d 
    \melisma { \lst f e }
    \melisma { e \lst a }
    a
    \melisma { a b }
    a a
    \divisioMaxima
    \melisma { a b c' d' b a } 
    %\melisma { \lst b a }
    %a
    \melisma { \lst b a }
    \melisma { f g a }
    \melisma { \lst a g e }
    f \melisma { e f }
    \melisma { d e d } \noBreak
    d
    \finalis
  }
  \addlyrics {
    San -- _ _ ctus,
    San -- _ ctus,
    San -- _ _ ctus 
    Do -- mi -- nus De -- _ us Sa -- ba -- oth.
    Ple -- ni sunt cæ -- li et ter -- ra glo -- ri -- a tu -- a.
    
    Ho -- san -- na _ in ex -- cel -- sis.
    Be -- ne -- di -- ctus qui ve -- nit in 
    no -- mi -- ne Do -- mi --  ni.
    Ho -- san -- na _ in ex -- cel -- sis.
  }
  \layout {
    indent = 0\cm
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
