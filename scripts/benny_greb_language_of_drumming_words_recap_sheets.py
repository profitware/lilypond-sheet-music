#!/usr/bin/env python3

radio1 = r"""
    \stemUp
    { <cymr bd>8 cymr16 <cymr bd>16 }
    { <cymr snare>8 <cymr bd>16 cymr16 }
    { cymr16 bd16 cymr16 cymr16 }
    { <cymr snare bd>8 cymr16 <cymr bd>16 }
"""


radio1r = r"""
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
"""


radio2 = r"""
    \stemUp
    { cymr16 bd16 cymr16 cymr16 }
    { <cymr snare bd>8 cymr16 <cymr bd>16 }
    { cymr8 <cymr bd>16 cymr16 }
    { <cymr snare>16 bd16 cymr16 cymr16 }
"""


radio2r = r"""
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
"""


radio3 = r"""
    \stemUp
    { cymr8 <cymr bd>16 cymr16 }
    { <cymr snare>16 bd16 cymr16 cymr16 }
    { <cymr bd>8 cymr16 <cymr bd>16 }
    { <cymr snare>8 <cymr bd>16 cymr16 }
"""


radio3r = r"""
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
"""


university1 = r"""
    \stemUp
    { <cymr bd>8 <cymr bd>16 cymr16 }
    { <cymr snare>16 bd16 cymr16 <cymr bd>16 }
    { cymr8 <cymr bd>16 cymr16 }
    { <cymr snare bd>8 cymr16 <cymr bd>16 }
"""


university1r = r"""
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
"""


university2 = r"""
    \stemUp
    { cymr16 bd16 cymr16 <cymr bd>16 }
    { <cymr snare>8 <cymr bd>16 cymr16 }
    { <cymr bd>8 cymr16 <cymr bd>16 }
    { <cymr snare>16 bd16 cymr16 cymr16 }
"""


university2r = r"""
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
"""


listentotheradio1 = r"""
    \stemUp
    { <cymr bd>8 <cymr bd>16 cymr16 }
    { <cymr bd snare>8 cymr16 <cymr bd>16 }
    { cymr16 bd16 cymr16 <cymr bd>16 }
    { <cymr snare>8 <cymr bd>16 cymr16 }
"""


listentotheradio1r = r"""
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
"""


listentotheradio2 = r"""
    \stemUp
    { cymr16 bd16 cymr16 <cymr bd>16 }
    { <cymr snare>16 bd16 cymr16 cymr16 }
    { <cymr bd>8 <cymr bd>16 cymr16 }
    { <cymr bd snare>8 cymr16 <cymr bd>16 }
"""


listentotheradio2r = r"""
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
"""


def get_header(num):
    header = r"""
    \version "2.23.3"

    \header {
    title = "The Language of Drumming"
    composer = "Benny Greb"
    subtitle = "Words Recap Sheet """ + num + "\"" + r"""
    }

    \paper {
    #(set-paper-size "a4" 'landscape)
    top-margin = 20
    line-width=24\cm
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
    """
    return header


def get_line(string):
    return r"""
\drums {
""" + string + \
r"""
}
"""


words_recap_sheet1 = \
    get_line(f"{radio1} | {radio1} | {radio1} | {radio2r}") + \
    get_line(f"{radio3} | {radio3} | {radio3} | {university1r}") + \
    get_line(f"{university2} | {university2} | {university2} | {listentotheradio1r}") + \
    get_line(f"{listentotheradio2} | {listentotheradio2} | {listentotheradio2} | {radio1r}") + \
    get_line(f"{radio2} | {radio2} | {radio2} | {radio3r}")


words_recap_sheet2 = \
    get_line(f"{university1} | {university2} | {radio1} | {listentotheradio1r}") + \
    get_line(f"{listentotheradio2} | {radio2} | {university1} | {radio1r}") + \
    get_line(f"{listentotheradio1} | {university2} | {radio1} | {university1r}") + \
    get_line(f"{radio3} | {university1} | {radio2} | {university2r}") + \
    get_line(f"{radio1} | {listentotheradio2} | {university2} | {university2r}") + \
    get_line(f"{listentotheradio1} | {listentotheradio2} | {radio1} | {radio2r}") + \
    get_line(f"{radio3} | {university1} | {radio3} | {university2r}") + \
    get_line(f"{university1} | {listentotheradio2} | {university2} | {listentotheradio1r}")


words_recap_sheet3 = \
    get_line(f"{radio3} | {radio1} | {university2} | {listentotheradio1r}") + \
    get_line(f"{listentotheradio2} | {university2} | {radio1} | {radio3r}") + \
    get_line(f"{radio1} | {radio3} | {radio2} | {listentotheradio1r}") + \
    get_line(f"{listentotheradio2} | {university2} | {university1} | {radio3r}") + \
    get_line(f"{radio2} | {university2} | {radio2} | {listentotheradio1r}") + \
    get_line(f"{radio3} | {university1} | {listentotheradio1} | {listentotheradio2r}") + \
    get_line(f"{university2} | {listentotheradio1} | {university2} | {radio3r}") + \
    get_line(f"{listentotheradio2} | {listentotheradio1} | {university2} | {university1r}") + \
    get_line(f"{radio2} | {radio1} | {university2} | {listentotheradio2r}")


if __name__ == '__main__':
    import sys

    if len(sys.argv) < 2:
        sys.exit(1)

    num = sys.argv[1]

    print(get_header(num))
    print({
        "1": words_recap_sheet1,
        "2": words_recap_sheet2,
        "3": words_recap_sheet3
    }[num])
