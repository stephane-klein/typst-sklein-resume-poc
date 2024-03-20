#let headerFont = ("Roboto")
#import "@preview/fontawesome:0.1.0": *

#let regularColors = (
    subtlegray: rgb("#ededee"),
    lightgray: rgb("#343a40"),
    darkgray: rgb("#212529"),
)

#let hBar() = [
  #h(5pt) | #h(5pt)
]

#let headerFirstNameStyle(str) = {text(
    font: headerFont,
    size: 32pt,
    weight: "light",
    fill: regularColors.darkgray,
    str
)}

#let headerLastNameStyle(str) = {text(
    font: headerFont,
    size: 32pt,
    weight: "bold",
    str
)}

#let makeHeaderNameSection(firstName, lastName) = table(
    columns: 1fr,
    inset: 0pt,
    stroke: none,
    row-gutter: 6mm,
    align: center,
    [#headerFirstNameStyle(firstName) #h(5pt) #headerLastNameStyle(lastName)],
)

#let makeHeaderInfo(personalInfo) = {
    let personalInfoIcons = (
        phone: fa-phone(),
        email: fa-envelope(),
        linkedin: fa-linkedin(),
        homepage: fa-pager(),
        github: fa-square-github(),
        gitlab: fa-gitlab(),
        orcid: fa-orcid(),
        researchgate: fa-researchgate(),
        location: fa-location-dot(),
        extraInfo: "",
    )
    let n = 1
    for (k, v) in personalInfo {
        // A dirty trick to add linebreaks with "linebreak" as key in personalInfo
        if k == "linebreak" {
            n = 0
            linebreak()
            continue
        }
        if k.contains("custom") {
            // example value (icon: fa-graduation-cap(), text: "PhD", link: "https://www.example.com")
            let icon = v.at("icon", default: "")
            let text = v.at("text", default: "")
            let link_value = v.at("link", default: "")
            box({
                icon
                h(5pt)
                link(link_value)[#text]
            })
            continue
        }
        if v != "" {box({

            // Adds icons
            personalInfoIcons.at(k) + h(5pt)
            // Adds hyperlinks
            if k == "email" {
               link("mailto:" + v)[#v]
            } else if k == "linkedin" {
                link("https://www.linkedin.com/in/" + v)[#v]
            } else if k == "github" {
                link("https://github.com/" + v)[#v]
            } else if k == "gitlab" {
                link("https://gitlab.com/" + v)[#v]
            } else if k == "homepage" {
                link("https://" + v)[#v]
            } else if k == "orcid" {
                link("https://orcid.org/" + v)[#v]
            } else if k == "researchgate" {
                link("https://www.researchgate.net/profile/" + v)[#v]
            } else {
                v
            }
        })}
        // Adds hBar
        if n != personalInfo.len() {
            hBar()
        }
        n = n + 1
    }
}
