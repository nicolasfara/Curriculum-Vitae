#import "@preview/fontawesome:0.5.0": *
#import "@preview/modern-acad-cv:0.1.3": make-entry-apa, cv-cols

#let cv-refs-fix(
  what,
  multilingual,  
  entries: (), 
  tag: none,
  me: none,
  lang: "en"
) = {
  // Set paragraph formatting options:
  // - `hanging-indent`: Indentation for the second and subsequent lines of each paragraph.
  // - `justify`: Whether the text should be justified.
  // - `linebreaks`: Automatic line breaks to fit the content within the width of the page.
  set par(
    hanging-indent: 2em,
    justify: true,
    linebreaks: auto,
  )
  
  // Set spacing above each block of text.
  set block(above: 0.65em)
  
  // create object
  // If `entries` is empty, populate it with all keys from the YAML file.
  if entries.len() == 0 {
    entries = what.keys()
  }

  // Initialize counters for different types of publications.
  let articles = 0
  let incollections = 0
  let books = 0
  let others = 0
  let planned = 0

  // // Loop through each entry in the YAML file to count the types of publications.
  // for (entry, field) in what {
  //   if field.tags == "planned" {
  //     planned += 1
  //   } else if field.type == "article" {
  //     articles += 1 
  //   } else if field.type == "chapter" {
  //     incollections += 1
  //   } else if field.type == "book" {
  //     books += 1
  //   } else if field.tags == "other" {
  //     others += 1
  //   } 
  // }
  // 
  // v(0.75em)

  // Loop through each entry in the YAML file to generate the reference list.
  for (entry, fields) in what {
    let article-type = entry.match(regex("^DBLP:(.*?)\/.+$")).captures.at(0)
    if not article-type == tag {
      // If the entry does not match the expected format, skip it.
      continue
    }
    
    // // Skip entries not specified in entries if entries are specified.
    // if entry not in entries {
    //   continue
    // }
 
    // // If a tag is provided, skip entries that don't have the specified tag.
    // if not tag == none {
    //   if "tags" not in fields or tag not in fields.tags {
    //     continue
    //   }
    // }

    // // If entry is in one of the categories, the total number will be subtracted by one to show decreasing numbers aside the publications per section
    // if fields.tags == "planned" {
    //   [\[#planned\] ]
    //   planned -= 1
    // } else if fields.type == "article" {
    //   [\[#articles\] ]
    //   articles -= 1
    // } else if fields.type == "chapter" {
    //   [\[#incollections\] ]
    //   incollections -= 1
    // } else if fields.type == "book" {
    //   [\[#books\] ]
    //   books -= 1
    // } else if fields.tags == "other" {
    //   [\[#others\] ]
    //   others -= 1
    // }
    

    // Generate the reference entry using a custom function `make-entry-apa`.
    // This function formats the reference according to APA style.
    // Parameters passed are the `fields` (details of the entry), `multilingual` (multilingual object), `me` (author name), and `lang` (language).
    cv-cols(
      text[#fields.date],
      make-entry-apa(fields, multilingual, me: me, lang: lang)
    )
  }
}