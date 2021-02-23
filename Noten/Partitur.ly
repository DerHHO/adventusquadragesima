\version "2.18.2"

#(set-global-staff-size 18)

\header {
  tagline = ##f
}

\include "Score.ly"

\paper {  
    
    ragged-right = ##f
    ragged-last-bottom = ##f
    left-margin = 1\cm
right-margin = 1\cm
page-count = 1
print-all-headers = ##t
scoreTitleMarkup = \scoreTitleNoOpusMarkupQR
#(include-special-characters)

	
}