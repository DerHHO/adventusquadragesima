%LY{
%\GesB{1}
%\Nr{312}
%\U{9}
%\Titel{Osterhalleluja}
%\Ly{
\version "2.18.2"
\include "../../../modernGregorian.ily"
adventusquadragesimaKyrie = \transpose c c' {
  %\set Staff.instrumentName = "V/A"
  \key f\ionian
  \time 1/4
  \hide Stem
  \hide TupletNumber
  \hide TupletBracket
  \omit Staff.BarLine
  \omit Staff.TimeSignature
  \set Score.Timing = ##f
  \repeat volta 2 {
    f4 |
    \melisma { \lst g f g } |
    a
    \melisma { \lst c' b a g }
    \melisma { \lst a f e } |
    \melisma { g a g } |
    g f
    \undo \omit Staff.BarLine
  }
  \repeat volta 2 {
    c'4 \omit Staff.BarLine c'
    \melisma { a b c' }
    \melisma { \lst c' b a g }
    \melisma { \lst a f e } |
    \melisma { g a g } |
    g f
    \undo \omit Staff.BarLine
  }
  
    f4 \omit Staff.BarLine
    \melisma { a c' }
    c'4 
    \melisma { c' d' \tli b c' }
    \melisma { \lst c' b a g }
    \melisma { \lst a f e } |
    \melisma { g a g } |
    g f
    \undo \omit Staff.BarLine
    \bar "|"
    f4 \omit Staff.BarLine
    \melisma { a c' }
    c'4 
    \melisma { c' d' \tli b c' } 
    \undo \omit Staff.BarLine 
    \bar "'"
    \melisma { f a c' } \omit Staff.BarLine
    \melisma { c' d' \tli b c' } 
    \melisma { \lst c' b a g }
    \melisma { \lst a f e } |
    \melisma { g a g } |
    g f
    \undo \omit Staff.BarLine
    \bar "||"
  
  %\bar ""
  %{\melisma { \lst g f } |
  \melisma { f f } |
  \melisma { g a } |
  \melisma { f f g } |
  \melisma { f \lst b \sli g } |
  a4 |
  \melisma { \lst g g \tli f }%}
  \undo \omit Staff.BarLine
  %\bar "||"
}
\addlyrics {
  \set stanza = "V/A" 
  Ky -- ri -- e, e -- _ le -- i -- son.
  \set stanza = "V/A" 
  Chri -- ste, _ e -- _ le-- i -- son.
  \set stanza = "V" 
  Ky -- ri -- e, _ e -- _ le -- i -- son.
  \set stanza = "A" 
  Ky -- ri -- e, _ _ _ e -- _ le -- i -- son.
  %Ha -- le -- _ _ _ lu -- _ ja. __ _ _ _ _ _ _ _ _ _
}

\include "dynamicparams.ly"

\score {
  \header {
    title = "Missa Adventus et Quadragesima"
    composer = "VI Vat. XVII"
    piece = \markup { \larger \larger \larger Kyrie }
    archivnummer = \archivNummerMissaAEQ
    qrcode = \partiturQRMissaAEQ
  }
  \adventusquadragesimaKyrie
  \layout {
    ragged-right = ##f
    indent = 0\cm
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
