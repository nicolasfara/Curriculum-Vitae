// CV structure
#import "common.typ": *
#import "data-it.typ": *

#set page(numbering: "1 of 1")
#set text(font: "Open Sans", size: 0.85em)
#set par(leading: line-spacing)

#show-header("Nicolas Farabegoli", contact-entries, "none")
#entries-section("Current Position", current-position-entries)
#entries-section("Education", education-entries)
#entries-section("Publications", pubblications)
#entries-section("Professional Experiences", work-experience-entries)

// Skills and languages
#pill-section("Skills", programming-languages)
// #pill-section("Languages", languages)

#entries-section("Extra Curricular Activities", extra-curricular-activities-entries)
#entries-section("Project Contributions", projects-contributions-entries)