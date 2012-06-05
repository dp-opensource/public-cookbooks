maintainer        "Digital Pioneers N.V."
maintainer_email  "f.holzhauer@digitalpioneers.de"
license           "Apache 2.0"
description       "Installs and sets up mongodb"
version           "0.1.0"
recipe            "mongodb", "Installs mongodb"
recipe            "mongodb::php", "Installs php driver for mongodb"

supports "ubuntu"
