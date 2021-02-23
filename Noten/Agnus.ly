\version "2.18.2"

%\include "gregorian.ly"
\include "../../../modernGregorian.ily"

quiTollis = {
  \melisma { d f } 
    a \melisma { a b } 
    a
    \melisma { b d' }
    \melisma { \lst d' c' }
    \melisma { b a }
    b a 
    \bar ""
    \divisioMaior
    a fis d \melisma { e f }
    \melisma { d e d } 
    d
    \bar ""
    \finalis
}
\score {
  \header {
    piece = \markup { \larger \larger \larger { Agnus Dei } }
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
    \melisma { a a }
    fis
    \melisma  { d e d } 
    d \divisioMinima
    \quiTollis
    
    \finalis 
    \melisma { a, b, } d
    \melisma { d e d } d \divisioMinima
    \quiTollis
    \melisma { a a }
    fis
    \melisma  { d e d } 
    d \divisioMinima
    \quiTollis
    
  }
  \addlyrics {
    A -- gnus De -- i,
    qui tol -- _ lis pec -- ca -- ta mun -- di:
    mi -- se -- re -- re no -- bis.
    A -- gnus De -- i,
    qui tol -- _ lis pec -- ca -- ta mun -- di:
    mi -- se -- re -- re no -- bis.
    A -- gnus De -- i,
    qui tol -- _ lis pec -- ca -- ta mun -- di:
    do -- na no -- bis pa -- cem.
  }
  \layout {
    indent = 0\cm
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
