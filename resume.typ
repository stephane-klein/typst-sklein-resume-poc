#let headerFont = ("Roboto")
#import "@preview/fontawesome:0.1.0": *

// Configuration
#let firstName = "Stéphane"
#let lastName = "Klein"

#let personalInfo = (
  email: "contact@stephane-klein.info",
  phone: "+33 6 61 48 76 04",
  github: "stephane-klein",
  linkedin: "stephanekleinfrommetz",
  homepage: "sklein.xyz",
  location: "Paris"
)

#let colors = (
    subtlegray: rgb("#ededee"),
    lightgray: rgb("#343a40"),
    darkgray: rgb("#212529"),
)
#let awesomeColors = (
    skyblue: rgb("#0395DE"),
    red: rgb("#DC3522"),
    nephritis: rgb("#27AE60"),
    concrete: rgb("#95A5A6"),
    darknight: rgb("#131A28"),
)
#let themeColor = awesomeColors.red

// Layout
#let fontList = ("Source Sans Pro", "Font Awesome 6 Brands", "Font Awesome 6 Free")
#set text(
     font: fontList,
     weight: "regular",
     size: 9pt,
)
#set align(left)
#set page(
    paper: "a4",
    margin: (
        left: 1.4cm,
        right: 1.4cm,
        top: .8cm,
        bottom: .4cm,
    )
)

// Helper utility
#let hBar() = [
  #h(5pt) | #h(5pt)
]

// Section 1 : Header

#table(
    columns: 1fr,
    inset: 0pt,
    stroke: none,
    row-gutter: 6mm,
    align: center,
    // Section 1.1 : Firstname Lastname
    [
        #text(
            font: headerFont,
            size: 32pt,
            weight: "light",
            fill: colors.darkgray,
            firstName
        )
        #h(5pt)
        #text(
            font: headerFont,
            size: 32pt,
            weight: "bold",
            lastName
        )
    ],
    // Section 1.2 : header info
    [
        #text(
            size: 10pt,
            fill: themeColor,
            box({
                // Email
                fa-envelope()
                h(5pt)
                link("mailto:" + personalInfo.email)[#personalInfo.email]
                hBar()

                // Phone
                fa-phone()
                h(5pt)
                [#personalInfo.phone]
                hBar()

                // Homepage
                fa-home()
                h(5pt)
                [#personalInfo.homepage]
                hBar()

                // Location
                fa-location-dot()
                h(5pt)
                [#personalInfo.location]
            })
        )
    ],
    // Section 1.3 : quote
    [
        #text(
            size: 10pt,
            weight: "medium",
            style: "italic",
            fill: themeColor,
            lorem(16)
        )
    ]
)
#v(16pt)

// Section 2 : Profile
    // Section title
    #v(1pt)
    #box({
        text(
            size: 16pt,
            weight: "bold",
            fill: themeColor,
            "Pro"
        )
        text(
            size: 16pt,
            weight: "bold",
            fill: black,
            "file"
        )
    })
    #h(2pt)
    #box(width: 1fr, line(stroke: 0.9pt, length: 100%))

    // Section content
    #lorem(80)

// Section 3 : Areas of Expertise
    // Section title
    #v(1pt)
    #box({
        text(
            size: 16pt,
            weight: "bold",
            fill: themeColor,
            "Dom"
        )
        text(
            size: 16pt,
            weight: "bold",
            fill: black,
            "aine d'expertise"
        )
    })
    #h(2pt)
    #box(width: 1fr, line(stroke: 0.9pt, length: 100%))

    // Section content
    #lorem(80)

// Section 4 : Professional Experience
    // Section title
    #v(1pt)
    #box({
        text(
            size: 16pt,
            weight: "bold",
            fill: themeColor,
            "Exp"
        )
        text(
            size: 16pt,
            weight: "bold",
            fill: black,
            "érience professionnelle"
        )
    })
    #h(2pt)
    #box(width: 1fr, line(stroke: 0.9pt, length: 100%))

    // Section content
    // CV Entry 4.1
    #block(
        breakable: false,
        [
            #grid(
                columns: (1fr, auto),
                row-gutter: 6pt,
                {text(size: 10pt, weight: "bold", "CTO")},
                {align(right, text(weight: "medium", fill: themeColor, style: "oblique", "Avril 2019 - Juin 2023"))},
                {text(size: 8pt, weight: "medium", fill: themeColor, "Spacefill")},
                {align(right, text(size: 8pt, weight: "medium", fill: gray, style: "oblique", "Paris"))}
            )
            - #lorem(40)
            - #lorem(30)
            #v(8pt)
        ]
    )

    // CV Entry 4.2
    #block(
        breakable: false,
        [
            #grid(
                columns: (1fr, auto),
                row-gutter: 6pt,
                {text(size: 10pt, weight: "bold", "Devops Engineer, Product Owner")},
                {align(right, text(weight: "medium", fill: themeColor, style: "oblique", "Janvier 2018 - Avril 2023"))},
                {text(size: 8pt, weight: "medium", fill: themeColor, "Scaleway")},
                {align(right, text(size: 8pt, weight: "medium", fill: gray, style: "oblique", "Paris"))}
            )
            - #lorem(40)
            - #lorem(30)
            #v(8pt)
        ]
    )

    // CV Entry 4.3
    #block(
        breakable: false,
        [
            #grid(
                columns: (1fr, auto),
                row-gutter: 6pt,
                {text(size: 10pt, weight: "bold", "Devops Engineer")},
                {align(right, text(weight: "medium", fill: themeColor, style: "oblique", "Janvier 2016 - Décembre 2017"))},
                {text(size: 8pt, weight: "medium", fill: themeColor, "Tech-Angels")},
                {align(right, text(size: 8pt, weight: "medium", fill: gray, style: "oblique", "France, full-remote"))}
            )
            - #lorem(40)
            - #lorem(30)
            #v(8pt)
        ]
    )

    // CV Entry 4.4
    #block(
        breakable: false,
        [
            #grid(
                columns: (1fr, auto),
                row-gutter: 6pt,
                {text(size: 10pt, weight: "bold", "Fullstack Developer")},
                {align(right, text(weight: "medium", fill: themeColor, style: "oblique", "Janvier 2016 - Décembre 2017"))},
                {text(size: 8pt, weight: "medium", fill: themeColor, "Gemnasium")},
                {align(right, text(size: 8pt, weight: "medium", fill: gray, style: "oblique", "France, full-remote"))}
            )
            - #lorem(40)
            - #lorem(30)
            #v(8pt)
        ]
    )

    // CV Entry 4.5
    #block(
        breakable: false,
        [
            #grid(
                columns: (1fr, auto),
                row-gutter: 6pt,
                {text(size: 10pt, weight: "bold", "R&D Developer")},
                {align(right, text(weight: "medium", fill: themeColor, style: "oblique", "Août 2012 - Janvier 2016"))},
                {text(size: 8pt, weight: "medium", fill: themeColor, "Bearstech")},
                {align(right, text(size: 8pt, weight: "medium", fill: gray, style: "oblique", "France, full-remote"))}
            )
            - #lorem(40)
            - #lorem(30)
            #v(8pt)
        ]
    )


    // CV Entry 4.6
    #block(
        breakable: false,
        [
            #grid(
                columns: (1fr, auto),
                row-gutter: 6pt,
                {text(size: 10pt, weight: "bold", "Product Management, Lead Developer, Devops")},
                {align(right, text(weight: "medium", fill: themeColor, style: "oblique", "Janvier 2006 - Juillet 2012"))},
                {text(size: 8pt, weight: "medium", fill: themeColor, "IS-Webdesign")},
                {align(right, text(size: 8pt, weight: "medium", fill: gray, style: "oblique", "Metz"))}
            )
            - #lorem(40)
            - #lorem(30)
            #v(8pt)
        ]
    )


    // CV Entry 4.7
    #block(
        breakable: false,
        [
            #grid(
                columns: (1fr, auto),
                row-gutter: 6pt,
                {text(size: 10pt, weight: "bold", "Développeur sénior")},
                {align(right, text(weight: "medium", fill: themeColor, style: "oblique", "Septembre 2005 - Décembre 2005"))},
                {text(size: 8pt, weight: "medium", fill: themeColor, "Linbox")},
                {align(right, text(size: 8pt, weight: "medium", fill: gray, style: "oblique", "Metz"))}
            )
            - #lorem(40)
            - #lorem(30)
            #v(8pt)
        ]
    )

