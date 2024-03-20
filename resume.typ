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
    #CvEntry(
        jobTitle: "CTO",
        date: "Avril 2019 - Juin 2023",
        companyName: "Spacefill",
        location: "Paris",
        description: [
          - #lorem(40)
          - #lorem(30)
        ]
    )

    #CvEntry(
        jobTitle: "Devops Engineer, Product Owner",
        date: "Janvier 2018 - Avril 2023",
        companyName: "Scaleway",
        location: "Paris",
        description: [
          - #lorem(40)
          - #lorem(30)
        ]
    )

    #CvEntry(
        jobTitle: "Devops Engineer",
        date: "Janvier 2016 - Décembre 2017",
        companyName: "Tech-Angels",
        location: "France, full-remote",
        description: [
          - #lorem(40)
          - #lorem(30)
        ]
    )

    #CvEntry(
        jobTitle: "Fullstack Developer",
        date: "Janvier 2016 - Décembre 2017",
        companyName: "Gemnasium",
        location: "France, full-remote",
        description: [
          - #lorem(40)
          - #lorem(30)
        ]
    )

    #CvEntry(
        jobTitle: "R&D Developer",
        date: "Août 2012 - Janvier 2016",
        companyName: "Bearstech",
        location: "France, full-remote",
        description: [
          - #lorem(40)
          - #lorem(30)
        ]
    )

    #CvEntry(
        jobTitle: "Product Management, Lead Developer, Devops",
        date: "Janvier 2006 - Juillet 2012",
        companyName: "IS-Webdesign",
        location: "Metz",
        description: [
          - #lorem(40)
          - #lorem(30)
        ]
    )

    #CvEntry(
        jobTitle: "Développeur sénior",
        date: "Septembre 2005 - Décembre 2005",
        companyName: "Linbox",
        location: "Metz",
        description: [
          - #lorem(40)
          - #lorem(30)
        ]
    )

    #CvEntry(
        jobTitle: "Développeur sénior",
        date: "Septembre 2005 - Décembre 2005",
        companyName: "Linbox FAS",
        location: "Metz",
        description: [
          - #lorem(40)
          - #lorem(30)
        ]
    )

    #CvEntry(
        jobTitle: "Développeur site web",
        date: "Janvier 2005 - Décembre 2005",
        companyName: "Freelance",
        location: "Metz",
        description: [
          - #lorem(40)
          - #lorem(30)
        ]
    )

    #CvEntry(
        jobTitle: "Développeur sénior",
        date: "Janvier 2005 - Décembre 2005",
        companyName: "Linbox FAS",
        location: "Metz",
        description: [
          - #lorem(40)
          - #lorem(30)
        ]
    )

    #CvEntry(
        jobTitle: "Développeur web, Administrateur système, Responsable technique",
        date: "Novembre 2001 - Aoùt 2003",
        companyName: "KTP Concept",
        location: "Metz",
        description: [
          - #lorem(40)
          - #lorem(30)
        ]
    )


