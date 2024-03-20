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

#let CvEntry(
  jobTitle: "Job Title",
  date: "Janvier 2020 - Décembre 2022",
  companyName: "MyCompany",
  location: "Metz",
  description: ""
) = block(
      breakable: false,
      [
          #grid(
              columns: (1fr, auto),
              row-gutter: 6pt,
              {text(size: 10pt, weight: "bold", jobTitle)},
              {align(right, text(weight: "medium", fill: themeColor, style: "oblique", date))},
              {text(size: 8pt, weight: "medium", fill: themeColor, companyName)},
              {align(right, text(size: 8pt, weight: "medium", fill: gray, style: "oblique", location))}
          )
          #description
          #v(8pt)
      ]
)
