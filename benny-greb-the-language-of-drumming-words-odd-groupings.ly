\version "2.23.3"

\header {
  title = "The Language of Drumming"
  composer = "Benny Greb"
  subtitle = "Words // Odd Groupings: 3, 5, 7"
}

\paper {
  top-margin = 30
  line-width=16\cm
  ragged-right=##f
  system-count=1
  indent=0\cm
  \stemUp
}

\layout{
    \context {
        \time 4/4
        \override SpacingSpanner spacing-increment = 4
        \stemUp
    }
}

\markup {
    \vspace #5
}

% 3 = Radio

\drums {
    \mark \markup \tiny "3 = Radio // 1st Position"

    \stemUp
    { <cymr bd>8 cymr16 <cymr bd>16 }
    { <cymr snare>8 <cymr bd>16 cymr16 }
    { cymr16 bd16 cymr16 cymr16 }
    { <cymr snare bd>8 cymr16 <cymr bd>16 }

    |

    << {
        { cymr8.[ 16] }
        { r8 cymr8 }
        { r16 cymr8. }
        { cymr8.[ 16] }
    } \\
    {
        { bd4 }
        { snare8. bd16 }
        { bd4 }
        { snare8. bd16 }
    } >>
}

\drums {
    \mark \markup \tiny "3 = Radio // 2nd Position"

    \stemUp
    { cymr16 bd16 cymr16 cymr16 }
    { <cymr snare bd>8 cymr16 <cymr bd>16 }
    { cymr8 <cymr bd>16 cymr16 }
    { <cymr snare>16 bd16 cymr16 cymr16 }

    |

    << {
        { r16 cymr8. }
        { cymr8. cymr16 }
        { r8 cymr8 }
        { r16 cymr8. }
    } \\
    {
        { bd4 }
        { snare8. bd16 }
        { bd4 }
        { snare8. bd16 }
    } >>
}

\drums {
    \mark \markup \tiny "3 = Radio // 3rd Position"

    \stemUp
    { cymr8 <cymr bd>16 cymr16 }
    { <cymr snare>16 bd16 cymr16 cymr16 }
    { <cymr bd>8 cymr16 <cymr bd>16 }
    { <cymr snare>8 <cymr bd>16 cymr16 }

    |

    << {
        { r8 cymr8 }
        { r16 cymr8. }
        { cymr8.[ 16] }
        { r8 cymr8 }
    } \\
    {
        { bd4 }
        { snare8. bd16 }
        { bd4 }
        { snare8. bd16 }
    } >>
}

% 5 = University

\drums {
    \mark \markup \tiny "5 = University // 1st Position"

    \stemUp
    { <cymr bd>8 <cymr bd>16 cymr16 }
    { <cymr snare>16 bd16 cymr16 <cymr bd>16 }
    { cymr8 <cymr bd>16 cymr16 }
    { <cymr snare bd>8 cymr16 <cymr bd>16 }

    |

    << {
        { cymr8[ 8] }
        { r16 cymr8[ 16] }
        { r8 cymr8 }
        { cymr8.[ 16] }
    } \\
    {
        { bd4 }
        { snare8. bd16 }
        { bd4 }
        { snare8. bd16 }
    } >>
}

\drums {
    \mark \markup \tiny "5 = University // 2nd Position"

    \stemUp
    { cymr16 bd16 cymr16 <cymr bd>16 }
    { <cymr snare>8 <cymr bd>16 cymr16 }
    { <cymr bd>8 cymr16 <cymr bd>16 }
    { <cymr snare>16 bd16 cymr16 cymr16 }

    |

    << {
        { r16 cymr8[ 16] }
        { r8 cymr8 }
        { cymr8.[ 16] }
        { r16 cymr8. }
    } \\
    {
        { bd4 }
        { snare8. bd16 }
        { bd4 }
        { snare8. bd16 }
    } >>
}

% 7 = Listen to the Radio

\drums {
    \mark \markup \tiny "7 = Listen to the Radio // 1st Position"

    \stemUp
    { <cymr bd>8 <cymr bd>16 cymr16 }
    { <cymr bd snare>8 cymr16 <cymr bd>16 }
    { cymr16 bd16 cymr16 <cymr bd>16 }
    { <cymr snare>8 <cymr bd>16 cymr16 }

    |

    << {
        { cymr8[ 8] }
        { cymr8.[ 16] }
        { r16 cymr8[ 16]  }
        { r8 cymr8 }
    } \\
    {
        { bd4 }
        { snare8. bd16 }
        { bd4 }
        { snare8. bd16 }
    } >>
}

\drums {
    \mark \markup \tiny "7 = Listen to the Radio // 2nd Position"

    \stemUp
    { cymr16 bd16 cymr16 <cymr bd>16 }
    { <cymr snare>16 bd16 cymr16 cymr16 }
    { <cymr bd>8 <cymr bd>16 cymr16 }
    { <cymr bd snare>8 cymr16 <cymr bd>16 }

    |

    << {
        { r16 cymr8[ 16] }
        { r16 cymr8. }
        { cymr8 cymr8 }
        { cymr8.[ 16] }
    } \\
    {
        { bd4 }
        { snare8. bd16 }
        { bd4 }
        { snare8. bd16 }
    } >>
}
