name             "webserver-dev-chef"
maintainer       "National Theatre"
maintainer_email "jdrawneek@nationaltheatre.org.uk"
license          "All rights reserved"
description      "Installs/Configures webserver-dev-chef"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.3.0"
depends          "webserver-chef", ">= 0.0.1"
depends          "php",            ">= 0.0.1"
depends          "mysql",          "< 5.0.0"
depends          "database",       "< 2.1.0"
