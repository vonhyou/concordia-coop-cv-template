#import "template.typ": *
#import "@preview/fontawesome:0.4.0": fa-icon

#show: cv.with(
  style-type: "classic",
  // style-type: "modern",
  name: "Jean Dupont",
phone-number: "(321) 456-7890",
  address: "Montreal QC, H3G 1M8",
  links: (
    (
      icon: fa-icon("envelope", solid: true), 
      text: "first.last@concordia.ca", 
      link: "mailto:first.last@concordia.ca"
    ), (
      icon: fa-icon("linkedin"),
      text: "linkedin.com/in/your-name",
      link: ""
    ), (
      icon: fa-icon("square-github"),
      text: "github.com/vonhyou",
      link: "https://github.com/vonhyou"
    )
  )
)

#section("Sommaire des Compétences et Qualifications")
#multi-lists(((
    title: "Systèmes d’exploitation",
    content: [Linux, Windows, macOS]
  ), (
    title: "Applications",
    content: [(Neo)Vim, VS Code; Blender, Unity3D; Office365]
  ), (
    title: "Programmation",
    content: [C/C++, GLSL; Java, Scala3; Bash Script]
  ),(
    title: "Frameworks",
    content: [OpenGL; React, Astro, Tailwind CSS; Apache Spark]
  ),(
    title: "Langues",
    content: [English(Working proficiency), French(Elementary), Mandarin(Native)]
  ),(
title: "Permis et agréments",
    content: lorem(8)
  )))

#section("Formation")
#institution(
  inst: [Université Concordia],
  major: [Baccalauréat en Informatique avec Co-op (120 Crédits)],
gpa: [4.30/4.30],
  date: [2023 - 2026 (Prévu)],
  location: [Montréal, QC],
  desc: [
    - #lorem(10),
    - #lorem(10)
  ]
)
#institution(
  inst: [Université Dalhousie],
  major: [Baccalauréat en Informatique avec Co-op (120 Crédits)],
  gpa: [4.30/4.30],
  date: [2020 - 2023 (Transféré)],
  location: [Halifax, QC],
  desc: [
    - #lorem(10),
    - #lorem(10)
  ]
)

#section("Projets")
#detailed-item(
  name: lorem(5), 
  date: [Mai 2024 - présent],
  associate: [Université Concordia, Montréal, QC],
  link: (type: "github", link: "", text: "vonhyou/concordia-cv-template"),
  desc: [
    - #lorem(10),
    - #lorem(10),
  ]
)
#detailed-item(
  name: lorem(5), 
  date: [Févr. 2022], 
  associate: [Université Concordia, Montréal, QC],
  link: (type: "website", link: "https://example.com", text: "https://example.com"),
  desc: [
    - #lorem(10),
    - #lorem(10),
    - #lorem(10),
    - #lorem(10),
    *Compétences fondamentales :* sens de la réflexion critique, aptitude pour l’évaluation et l’analyse des problèmes, adaptabilitéity
  ]
)

// jump to next page, delete this if you dont need it
#pagebreak() 

#section("Expérience Professionnelle")
#detailed-item(
  name: [Travail Sympa],
  date: [Mai 2022 - Août 2022],
  associate: [La Bonne Entreprise, Ville de Québec, QC],
  link: (type: "github", link: "", text: "username/repo-name"),
  desc: [
    - #lorem(30),
    - #lorem(22),
    - #lorem(32)
  ]
)

#section("Distinctions")
#single-line-item(lorem(7), [2023], bold: false)
#single-line-item(lorem(7), [2022], bold: false)
#single-line-item(lorem(7), [2021], bold: false)
#single-line-item(lorem(7), [2020], bold: false)

#section("Champs d'Intérêts Personnels")
#multi-lists(((
    title: "Expériences à l'Étranger",
    content: lorem(10)
  ), (
    title: "Lectures",
    content: lorem(10)
  ), (
    title: "Sports",
    content: lorem(10)
)))
