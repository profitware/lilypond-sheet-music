\version "2.16.2"

% The tenor sax is pitched in the key of Bb

\header {
  title = "Lady Madonna"
  composer = "Words & Music by John Lennon & Paul McCartney"
  subtitle = "The Beatles"
}

\relative c'' {
  \time 4/4
  \tempo "Moderate" 4 = 216
  \key b \minor
  
  % Verse 2
  r1 | r | r | r | 
  r | r | r | r |
  
  b4 b d, dis | e e gis b |
  r b b dis, | e e gis b |
  b b d, dis | e e fis fis |
  g g a a | b1 |

  r2 e4 b8 a ( | a4 ) e g a |
  b8[ a] b[ a] cis16 d e8 r8 cis ( | cis ) a fis2. |

  r2 r8 d fis[ g] ( | g[ ) fis] d[ g] ( g[ ) fis] d[ a'] ( | 
  a[ ) fis] d[ b] ( b2 ) |  b8[ cis] cis[ d] d[ e] r4 | 

  r r e8[ fis] g[ a] | b4 g8[ fis] e4 b'8 g | 
  e4 a a4. g8 | a cis r2. |
  r1 | r | r | r \bar "||"

  % Verse 3
  r1 | r | r | r |
  r | r | r | r |

  b4 b d, dis | e e gis b |
  r b b dis, | e e gis b |
  b b d, dis | e e fis fis |
  g g a a | b1 |

  r1 | r | r | r |
  r | r | r | r |
  r | r | r | r |
  r | r | r | r \bar "|."

}
