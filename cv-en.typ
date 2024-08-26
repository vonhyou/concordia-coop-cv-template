#import "template.typ": *
#import "@preview/fontawesome:0.4.0": *

#show: cv.with(
  style-type: "modern",
  // style-type: "classic",
  name: "John Smith",
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

#section("Summary of Skills and Qualifications")
#multi-lists(((
    title: "Operating System",
    content: [Linux, Windows, macOS]
  ), (
    title: "Applications",
    content: [(Neo)Vim, VS Code; Blender, Unity3D; Office365]
  ), (
    title: "Programming",
    content: [C/C++, GLSL; Java, Scala3; Bash Script]
  ),(
    title: "Frameworks",
    content: [OpenGL; React, Astro, Tailwind CSS; Apache Spark]
  ),(
    title: "Languages",
    content: [English(Working proficiency), French(Elementary), Mandarin(Native)]
  ),(
    title: "Certifications",
    content: lorem(8)
  )))

#section("Education")
#institution(
  inst: [Concordia University],
  major: [Bachelor of Computer Science Honors with Co-op (120 Credits)],
  gpa: [4.30/4.30],
  date: [2023 - 2026 (Expected)],
  location: [Montreal, QC],
  desc: [
    - #lorem(10),
    - #lorem(10)
  ]
)
#institution(
  inst: [Dalhousie University],
  major: [Bachelor of Computer Science with Co-op (120 Credits)],
  gpa: [4.30/4.30],
  date: [2020 - 2023 (Transferred)],
  location: [Halifax, NS],
  desc: [
    - #lorem(10),
    - #lorem(10)
  ]
)

#section("Projects")
#detailed-item(
  name: lorem(5), 
  date: [May. 2024 - Aug. 2024], 
  associate: [Concordia University, Montreal QC],
  link: (type: "github", link: "", text: "vonhyou/concordia-cv-template"),
  desc: [
    - #lorem(10),
    - #lorem(10),
  ]
)
#detailed-item(
  name: lorem(5), 
  date: [Feb. 2022], 
  associate: [Concordia University, Montreal QC],
  link: (type: "website", link: "https://example.com", text: "https://example.com"),
  desc: [
    - #lorem(10),
    - #lorem(10),
    - #lorem(10),
    - #lorem(10),
    *Core Competencies:* critical thinking, problem assessment and analysis, adaptability
  ]
)

// jump to next page, delete this if you dont need it
#pagebreak() 

#section("Work Experience")
#detailed-item(
  name: [Cool Job],
  date: [May. 2022 - Aug. 2022],
  associate: [Cool Company, Toronto ON],
  link: (type: "github", link: "", text: "username/repo-name"),
  desc: [
    - #lorem(30),
    - #lorem(22),
    - #lorem(32)
  ]
)

#section("Awards")
#single-line-item(lorem(7), [2023], bold: false)
#single-line-item(lorem(7), [2022], bold: false)
#single-line-item(lorem(7), [2021], bold: false)
#single-line-item(lorem(7), [2020], bold: false)

#section("Interests")
#multi-lists(((
    title: "Experience Abroad",
    content: lorem(10)
  ), (
    title: "Reading",
    content: lorem(10)
  ), (
    title: "Sports",
    content: lorem(10)
)))
