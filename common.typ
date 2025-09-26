#import "@preview/fontawesome:0.6.0": *
#import "@preview/modern-acad-cv:0.1.4": make-entry-apa, cv-cols, cv-cols-table

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

#let cv-table-teaching-fix(
  what, 
  multilingual,          
  lang: ""  
) = {
  // Initialize variables
  let overview = ()                  // Container to store event details for the table.
  let term = ()                      // Temporary variable for storing term information (summer/winter).
  let tabhelp = ()                   // Container for storing table headers and labels.
  let year = ""                     // Year extracted from the YAML data.
  let name = ""                     // Event name.
  let role = ""                     // Role in the event (e.g., lecturer, assistant).
  let study = ""                    // Study details for the event.
  let index1 = 0                    // Index for iterating through dictionary keys.
  let tab-year = ""                 // Header for the year column in the table.
  let tab-course = ""               // Header for the course column in the table.
  let tab-study = ""                // Header for the study column in the table.
  let tab-note = ""                 // Header for the note column in the table.
  let tab-role = ""                 // Header for the role column in the table.
  let index = 0                     // Index for iterating through dictionary entries.

  // Iterate over the keys (years) in the dictionary
  for key in what.keys() {
    // Extract the year from the dictionary
    year = what.keys().at(index)
 
    // Get the subset of events for the current year
    let subset = what.at(key) 

    // Iterate over each course in the subset
    for course in subset.keys() {
      let subset2 = subset.at(course)

      // Iterate over available languages in the multilingual data
      for language in multilingual.lang.keys() {
        if lang == language {
          // Determine the term (summer/winter) and corresponding header
          if "summer" in subset2.keys() {
            if subset2.summer == "T" {
              term = [#multilingual.lang.at(lang).table-summer #year]
            } else {
              term = [#multilingual.lang.at(lang).table-winter #year]
            }
          } else {
            [#year]
          }
          
          // Get the name and study details based on the selected language
          name = subset2.name.at(lang)
          study = subset2.study.at(lang)
          role = subset2.role.at(lang)  

          // Get headers for table columns
          tab-year = multilingual.lang.at(lang).tab-year
          tab-course = multilingual.lang.at(lang).tab-course
          tab-study = multilingual.lang.at(lang).tab-study
          tab-note = multilingual.lang.at(lang).tab-note
          tab-role = multilingual.lang.at(lang).tab-role

          // Exit the language loop as we found the matching language
          break
        } 
      }

      // Create a tuple with term, name, and study details for the event
      let help = (term, name, study, role)

      // Create a tuple with table headers and note
      tabhelp = (tab-year, tab-course, tab-study, tab-note, tab-role)

      // Add the event details to the overview
      overview.push(help)
    } 

    // Increment the index to process the next year
    index += 1
  }
  
  // Create a table using the collected event details
  cv-cols-table(
    "",
    table(
      columns: 4,                       // Define the number of columns
      stroke: none,                    // No border strokes
      table.header(
        [#tabhelp.at(0)],              // Year column header
        [#tabhelp.at(1)],              // Course column header
        [#tabhelp.at(2)],              // Study column header
        [#tabhelp.at(4)]               // Note column header
      ),
      table.hline(),                   // Horizontal line under the header
        ..for (k, x, v, r) in overview { // Populate table rows with event details
          (k, x, v, r)
        },
      table.hline(),                   // Horizontal line at the end of the table
      table.cell(
        colspan: 3,                  // Cell spanning all columns for the note
        tabhelp.at(3),                // Note text
      )
    )
  )
}