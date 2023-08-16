// CV structure
#import "common.typ": *
#import "data-it.typ": *

#set page(numbering: "1 of 1")
#set text(font: "Source Sans Pro", size: 0.95em)
#set par(leading: line-spacing)

#show-header("Nicolas Farabegoli", contact-entries, "none")
#entries-section("Current Position", current-position-entries)
#entries-section("Education", education-entries)
#entries-section("Professional Experiences", work-experience-entries)

// Skills and languages
#pill-section("Skills", programming-languages)
// #pill-section("Languages", languages)

#entries-section("Extra Curricular Activities", extra-curricular-activities-entries)
#entries-section("Project Contributions", projects-contributions-entries)