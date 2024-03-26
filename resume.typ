#let headerFont = ("Roboto")
#import "@preview/fontawesome:0.1.0": *
#import "template.typ": *

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
    ),
    header: context {
        if counter(page).get().first() == 1 [
            #set text(
                size: 6pt,
                fill: rgb("#aaa")
            )
            #align(
                right,
                "Dernière mise à jour le 20 mars 2024"
            )
        ]
    },
    footer: pad(
        y: -10pt,
        [
            #set text(
                size: 8pt,
                fill: rgb("#aaa")
            )
            #grid(
                columns: (auto, 1fr),
                [
                    Dernière version du document disponible sur https://cv.sklein.xyz
                    #h(10pt)
                ],
                {
                    align(
                        right,
                        counter(page).display("1 sur 1", both:true)
                    )
                }
            )
        ]
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
            [
                Software Craftsman #footnote[Artisan développeur, voir https://fr.wikipedia.org/wiki/Software_craftsmanship] avec plus de 20 ans d'expérience pouvant être contributeur individuel ou manager
        ]
        )
    ]
)
#v(16pt)

// Section 2 : Profile
// #Section(
//     title: ("Pro", "file"),
//     content: [
//         #balanced-columns(
//             count: 2,
//             [
//                 Je suis un *artisan développeur* avec plus de 20 ans d'expérience.
//                 Durant ces années, j'ai exercée souvent un rôle de *contributeur individuel* et quelque fois un rôle *manager*.
//                 J'ai évolué dans de petites structures telles qu'une *agence web* comptant moins de 10 employés, ou dans des entreprises
//                 de plus grande envergure, comme un *cloud provider* employant plus de 300 collaborateurs.
//             ]
//         )
//     ]
// )
#Section(
    title: ("Pro", "file"),
    content: [
        Je suis un *artisan développeur* avec plus de 20 ans d'expérience.
        Durant ces années, j'ai exercée souvent un rôle de *contributeur individuel* et quelque fois un rôle *manager*.
        J'ai évolué dans de petites structures telles qu'une *agence web* comptant moins de 10 employés, ou dans des entreprises
        de plus grande envergure, comme un *cloud provider* employant plus de 300 collaborateurs.
    ]
)


// Section 3 : Areas of Expertise
#Section(
    title: ("Dom", "aine d'expertise"),
    content: [
        #balanced-columns(
            count: 2,
            [
                #lorem(80)
            ]
        )
    ]
)



// Section 4 : Professional Experience
#Section(
    title: ("Exp", "érience professionnelle"),
    content: [
        // Section content
        #{
            for (jobTitle, date, companyName, location) in yaml("resume.yaml").experiences {
                [
                    #CvEntry(
                        jobTitle: jobTitle,
                        date: date,
                        companyName: companyName,
                        location: location,
                        description: [
                          - #lorem(40)
                          - #lorem(30)
                        ]
                    )
                ]
            }
        }
    ]
)


