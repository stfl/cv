#import "@preview/letter-pro:3.0.0": letter-generic, header-simple, recipient-box
#let metadata = toml("./metadata.toml")

#import "letter-content.typ"
#let content-fields = dictionary(letter-content)

#let recipient = content-fields.recipient
#let subject = content-fields.subject
#let language = content-fields.at("language", default: "en")

#let personal = metadata.personal
#let info = personal.info
#let address = personal.letter.address
#let sender-name = personal.first_name + " " + personal.last_name

#set text(lang: language)
#set text(font: metadata.layout.fonts.regular_fonts, hyphenate: false)
#set document(title: subject, author: sender-name)

#show: letter-generic.with(
  format: "DIN-5008-B",
  header: pad(
    left: 25mm, right: 20mm, top: 20mm, bottom: 5mm,
    align(bottom + right, header-simple(
      sender-name,
      address.join(linebreak()),
      extra: [#info.phone \ #info.email],
    )),
  ),
  address-box: recipient-box(recipient),
)

#v(-6em)
#align(right, datetime.today().display("[day]. [month repr:long] [year]"))
#v(0.65em)
#strong(subject)
#v(0.65em)

#include "letter-content.typ"

#v(2em)

#text(weight: "bold", size: 1.2em, sender-name)
