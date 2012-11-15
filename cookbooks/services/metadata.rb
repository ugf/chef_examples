maintainer       "Cloud Infrastructure"
maintainer_email "csf@ultimatesoftware.com"
license          "our license"
description      "Examples of services in Chef"
long_description ""
version          "0.0.1"

supports "windows"

recipe "services::restart", "Restarts a windows service"

attribute "services/name",
  :display_name => "name",
  :required => "required",
  :recipes => ["services::restart"]

