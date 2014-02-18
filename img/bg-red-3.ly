\version "2.18.0"

\header {
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key c \major
  \numericTimeSignature
  \time 2/1
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.

  e2 c d1  |
  b\breve~  |
  b\breve  |
}

altoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  
  a4 g g1 fis2  |
  g\breve~  |
  g\breve  |
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
  c4 b g2 a1  |
  g\breve~  |
  g\breve  |
}

bassVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  
  e1 d  |
  g\breve~  |
  g\breve  |
  \bar "||"
}

\score {
  <<
    \new Staff { \sopranoVoice }
    \new Staff { \altoVoice }
    \new Staff { \clef "treble_8" \tenorVoice }
    \new Staff { \clef bass \bassVoice }
  >>
  \layout { }
}
