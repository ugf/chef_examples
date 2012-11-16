maintainer       "Cloud Infrastructure"
maintainer_email "csf@ultimatesoftware.com"
license          "our license"
description      "Examples of specific Chef features in windows"
long_description ""
version          "0.0.1"

supports "windows"

depends "opscode-windows"

recipe "windows::execute_batch", "executes a batch file"

