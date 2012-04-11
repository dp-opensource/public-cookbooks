maintainer        "Digital Pioneers N.V."
maintainer_email  "f.holzhauer@digitalpioneers.de"
license           "Apache 2.0"
description       "Installs and sets ups symfony"
version           "0.1.0"
recipe            "symfony", "Installs symfony"

supports "ubuntu"

depends "apt"
depends "php::pear"