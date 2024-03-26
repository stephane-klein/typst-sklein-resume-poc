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
    title: ("Int", "roduction"),
    content: [
        #text(
            weight: "light",
            size: 0.8em,
            [
                Dans cette introduction, je souhaite vous présenter les contextes dans lesquels j'ai évolué. Vous n'y trouverais
                pas de liste de langages de programmations, de briques logiciels…
            ]
        )

        Je suis un *artisan développeur*
        #footnote[Software Craftsman en anglais, voir : https://fr.wikipedia.org/wiki/Software_craftsmanship]
        avec plus de 20 ans d'expérience, qui apprécie aussi bien le rôle de
        *contributeur individuel* #footnote[Individual Contributor : https://www.urbandictionary.com/define.php?term=Individual+Contributor]
        que celui de *manager*.


        Je peux résumer mon parcours en deux périodes.

        *Une première période de 10 ans en agence web*, pendant lesquels j'ai travaillé sur des projets de sites ou d'applications web vendus
        généralement sous la forme de contrats au forfait #footnote[Par opposition aux contrats en régie :
        https://fr.wikipedia.org/wiki/Forfait#Commercial].\
        Je m'occupais très souvent de tout le cycle de vie de ces projets : l'analyse, le chiffrage financier, la
        rédaction de l'offre au client, le développement informatique, le suivi du projet avec le client, le déploiement
        et la maintenance. En simplifiant, je peux dire que pendant toute cette période, j'étais _Product Manager_, _DevOps_, et _Customer
        Care_…\
        Cette grande autonomie dans mon travail dans de toutes petites équipes — souvent moins de 10 personnes — a été
        une chance pour moi, cela m'a permis d'étudier, d'expérimenter et de faire évoluer rapidement mes méthodes de programmation et
        de gestion de projets.\
        Cela a été aussi une source de difficulté car ma responsabilité était importante : si mon
        chiffrage de projet était mauvais, alors j'étais directement impacté dans mon quotidien, l'agence web ne pouvait pas
        facturer à temps, ce qui générait des difficultés de trésorerie et de versement de salaire, de plus, cela
        dégradait ma relation avec le client. Travaillant seul sur mes projets, je ne pouvais attribuer mes erreurs qu'à
        moi-même, ce qui me motivait à chercher constamment à perfectionner ma pratique.\
        Concernant la gestion de projet, j’ai commencé par essayer de pousser plus loin la qualité des spécifications des
        projets — le cycle en V — avant de découvrir petit à petit le paradigme du développement agile, les notions de cycles
        d’itérations courtes…\
        Toujours pour réaliser mes projets le plus rapidement possible, je me suis orienté vers des frameworks Rails like tels que Django…
        Mais cela n'a pas été sans difficulté, pour cela je vous invite à lire mon article
        #link("https://sklein.xyz/fr/garden/020-keep-it-simple-stupid-le-plus-longtemps-possible/")["Keep it simple, stupid le
        plus longtemps possible"] #footnote[https://sklein.xyz/fr/garden/020-keep-it-simple-stupid-le-plus-longtemps-possible/].
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


