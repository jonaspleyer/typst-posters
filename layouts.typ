#let _default_layout = (
    "spacing": 1.2em,
)

#let layout_a0 = _default_layout + (
    "body_size":        33pt,
    "heading_size":     50pt,
    "title_size":       75pt,
    "subtitle_size":    60pt,
    "authors_size":     50pt,
    "keywords_size":    40pt,
)

#let layout_a1 = _default_layout + (
    "body_size":        27pt,
    "heading_size":     41pt,
    "title_size":       61pt,
    "subtitle_size":    49pt,
    "authors_size":     41pt,
    "keywords_size":    33pt,
)

#let layout_a2 = _default_layout + (
    "body_size":        20pt,
    "heading_size":     31pt,
    "title_size":       47pt,
    "subtitle_size":    38pt,
    "authors_size":     31pt,
    "keywords_size":    25pt,
)


#let layout_a3 = _default_layout + (
    "body_size":        14pt,
    "heading_size":     22pt,
    "title_size":       32pt,
    "subtitle_size":    26pt,
    "authors_size":     22pt,
    "keywords_size":    18pt,
)


#let layout_a4 = _default_layout + (
    "body_size":        8pt,
    "heading_size":     12pt,
    "title_size":       18pt,
    "subtitle_size":    15pt,
    "authors_size":     12pt,
    "keywords_size":    10pt,
)

/// The default layout is for an a0 poster
#let _state_poster_layout = state("poster_layout", layout_a0)

#let update_layout(..args) = {
    for (arg, val) in args.named() {
        _state_poster_layout.update(pt => {
            pt.insert(arg, val)
            pt
        })
    }
}

#let set_layout(layout) = {
    _state_poster_layout.update(pt => {
        pt=layout
        pt
    })
}
