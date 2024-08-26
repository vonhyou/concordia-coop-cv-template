/**
 * @author Shuo Feng
 * @e-mail shuo.feng@ray.works
 * @last-modify Aug. 26, 2024
 */

#import "@preview/fontawesome:0.4.0": *

// all colors below are extracted using color picker
// from the official pdf template since I cannot find
// any design guide from Concordia Co-op insitute
#let color-primary = rgb(49, 182, 253)
#let color-heading = rgb(0, 0, 0)

#let section(title) = {
  text(13pt, fill: color-heading, weight: "bold")[
    #v(10pt)
    #upper(title)
    #v(-8pt)
    #line(length: 100%, stroke: color-primary)
    #v(-5pt)
  ]
}

#let single-line-list(title, content) = {
  text(11pt, weight: "bold")[#title: ]
  text(11pt)[#content\ ]
}

#let multi-lists(lists) = {
  lists.map(list => {
    single-line-list(list.title, list.content)
  }).join()
}

#let single-line-item(left, right, bold: true) = {
  text(11pt, weight: if bold {"bold"} else { "regular" }, left)
  h(1fr)
  text(11pt, style: "italic", right)
  linebreak()
}

// a helper function to display an institution item
#let institution(inst: "", major: "", gpa: "", date: "", location: "", desc: "") = {
  single-line-item(major, date)
  text(11pt)[#inst, #location #h(1fr) #gpa\ #desc]
}

#let link-w-icon(content) = {
  let icon = fa-icon(
    if content.type == "github" { "square-github" } else { "globe" }
  )

  text(11pt)[#icon #link(content.link, content.text)]
}

// a helper function to display a project, work experience etc.
#let detailed-item(name: "", associate: "", date: "", link: "", desc: "") = {
  single-line-item(name, date)
  text(11pt)[#associate #h(1fr) #link-w-icon(link)  \ #desc]
}

// a helper function to display contact information
#let display(contacts) = {
  contacts.map(contact => {
    let text = if "icon" in contact {contact.icon} + " " + contact.text
    if "link" in contact {
      link(contact.link)[#text]
    } else {
      text
    }
  }).join(h(8pt))
}

// template begins
#let cv(
  style-type: "classic",
  name: "John Smith",
  phone-number: "(000) 000-0000",
  address: "Montreal QC, H3G 1M8",
  links: (),
  main-content
) = {
  set text(
    font: if style-type == "classic" {"Times New Roman"} else {"Noto Sans"}
  )

  set page(
    paper: "us-letter",
    background: image("concordia-logo.png")
  )

  // heading
  pad(top: 40pt, text(22pt, weight: "bold")[#align(center, name)])
  align(center)[
    #display(((
        icon: fa-icon("phone"),
        text: phone-number
      ), (
        icon: fa-icon("home"),
        text: address
      )
    ))
  ]
  align(center)[#display(links)]

  main-content
}
