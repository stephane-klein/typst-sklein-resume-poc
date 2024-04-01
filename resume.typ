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
            #pad(
                y: -20pt,
                [
                    #set text(
                        size: 6pt,
                        fill: rgb("#aaa")
                    )
                    #align(
                        right,
                        [
                            Ce document date du 26 mars 2024\
                            Dernière version disponible sur\
                            https://cv.sklein.xyz\
                        ]
                    )
                ]
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
            #align(
                right,
                counter(page).display("1 sur 1", both:true)
            )
        ]
    )
)
#show footnote.entry: it => {
    set par(hanging-indent: 0.7em)
    set text(fill: rgb("#aaa"))
    let loc = it.note.location()
    numbering(
       "1: ",
       ..counter(footnote).at(loc),
    )
    it.note.body
}

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
                Software Craftsman avec plus de 20 ans d'expérience pouvant être Individual Contributor ou Manager
        ]
        )
    ]
)
#v(16pt)

#Section(
    title: ("Qui", " suis-je ?"),
    content: ([
        Je suis un artisan développeur de plus de 20 ans d'expérience.

        De 2019 à 2023, j'ai occupé le poste de CTO dans une startup parisienne, que j'ai rejoint juste après son financement initial.
        Avec mes collègues, nous avons élargi l'équipe tech de 1 à 16 personnes au cours de deux levées de fonds
        successives d'environ 5 M€ et 20 M€.

        Depuis septembre 2023, je travaille sur le développement d'une application SaaS que j'ai lancé avec trois co-fondateurs.
    ],)
)

#Section(
    title: ("Mes", " objectifs professionnels"),
    content: ([
        Depuis avril 2024, je suis à la recherche de missions freelance de 4 à 8 jours par mois.\
        À partir de septembre 2024, il est possible que je sois à la recherche de mission de 16 jours par mois, en freelance ou en tant que salarié.
    ],)
)

#Section(
    title: ("Pro", "jets susceptibles de m'intéresser"),
    content: ([
        Je suis ouvert aux missions de Contributeur Individuel#footnote[Individual Contributor : https://www.urbandictionary.com/define.php?term=Individual+Contributor] comme de management, au sein de toutes petites structures ou des ETI.

        **
    ],)
)

#Section(
    title: ("Typ", "es de projets qui ne m'intéressent pas"),
    content: ([

        Actuellement, les secteurs tels que les DeFi, l'AdTech et les jeux vidéos ne m'intéressent pas.\
        Les projets d'applications mobiles natives ne sont pas non plus dans mes recherches actuelles, bien que ce soit un domaine qui m'intéresse, je n'ai pas encore développé de compétences spécifiques dans ce secteur.

        Je ne souhaite pas manager une équipe non francophone. Le management demande de la finesse et de la subtilité en
        communication, en raison de mon niveau d'anglais oral, je ne me sens pas en mesure de gérer efficacement une équipe non francophone.
    ],)
)

// Section 3 : Areas of Expertise
#Section(
    title: ("Dom", "aine d'expertise"),
    content: ([
        #balanced-columns(
            count: 2,
            [
                #lorem(80)
            ]
        )
    ],)
)

#v(1cm)

#Section(
    title: ("Exp", "érience professionnelle"),
    content: yaml("resume.yaml").experiences.map(element => [
        #CvEntry(
                jobTitle: element.jobTitle,
                date: element.date,
                companyName: element.companyName,
                location: element.location,
                description: [
                  - #lorem(40)
                  - #lorem(30)
                ]
            )
        ]
    )
)
