# Using R to Send Feedback to Students

Part of teaching is sending feedback to students.

Outlook doesn't make this easy - sending a different attachment to each student is hard.

The `blastula` package for R provides a handy and easy-to-use tool with which to send feedback documents to students.

Two use cases:
1) emailing a feedback document to each student
2) emailing individual feedback from a spreadsheet

## Emailing Individual Feedback Documents to Students

This is a stripped down example.

What we are doing is taking a folder with a feedback document for each student and using `R` to loop through a list of enrolments to send each student their own feedback file.

First we want to get our packages ready and set all our variables:

```r

library(blastula)
library(dplyr)
library(readr)

# Read the sending data and html email file
class_names <- readr::read_csv("class-data.csv")

# Prepare variables for email content
subject <- "Course Assessment Feedback"
from <- "your_email@heapsgoodeducation.edu"

# Get the appropriate filenames
feedback_files <- list.files("/path/to/feedback_files/", full.names = TRUE)

# Get a nicely formatted date/time string
current_date_time <- format(Sys.time(), "%a, %d %b at %H:%M")
```

Next we want to get our email text, with a placeholder for the recipient's name.

```r

# Generate the body text for the email message
email_text <-
  "
Dear StudentName,

**Assessment Feedback Attached**

I hope this email finds you well.

I'm writing with feedback for your assessment.

Be excellent to each other,

Alex
"
```

With all that setup, we can now bring `blastula` in to send our whole class their feedback in a few seconds. First we get our email login credentials sorted:

```r

# Create a credentials file
create_smtp_creds_file(
  user = "your_email@heapsgoodeducation.edu",
  host = "smtp.office365.com",
  port = 587,
  use_ssl = TRUE,
  file = ".email_creds"
)
```

And finally we loop through our class list, sending each student an email with their feedback files attached:

```r

# Loop through eligible recipients and send them an email using blastula package
for(i in 1:length(class_names$Surname)){
  name <- class_names$First_Name[i]
  recipient <- paste(class_names$studentID[i], "@student.heapsgoodeducation.edu", sep = "")

  # Find the files that match the Surname (having a filenaming protocol for
  # feedback files it vital! Something like Surname_studentID_Assessment.pdf is
  # both human and machine readable.
  files <- feedback_files[grepl(
    paste(class_names$Surname[i], "_", sep = ""),
    feedback_files)]

  #replace the name placeholder in the email message text
  msg <- gsub("StudentName", name, email_text)

  # Make the email object
  email_object <-
    compose_email(
      body = md(msg),
      header = "Cool Assessment Feedback",
      footer =
        md(c("Email made in and sent from `R`, using the `blastula` package, on ", curret_date_time))
    )

  # Attach feedback files to the email object
  for (f in files) {
    email_object <- add_attachment(email_object, f)
  }

  # Send the email
  smtp_send(
    email = email_object,
    from = from,
    to = recipient,
    subject = subject,
    credentials = ".email_creds"
  )

  # Tell yourself that you've sent each email.
  print(c(name, files))
}

```
