maintainer       "Cloud Infrastructure"
maintainer_email "csf@ultimatesoftware.com"
license          "our license"
description      "Examples of specific Chef features in windows"
long_description ""
version          "0.0.1"

supports "windows"

depends "windows"

recipe "windows_examples::execute_batch", "executes a batch file"
recipe "windows_examples::use_library", "uses library"

attribute "windows_examples/administrator_password",
  :display_name => "administrator password",
  :required => "required",
  :recipes => ["windows_examples::execute_batch"]

