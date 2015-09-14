
# Copyright (C) 2015 Clevir Solutions
# http://www.ClevirSolutions.com
#

#
# Dockerfile for Clevir-Guacd server component
#

# Start from Guacamole guacd image
FROM glyptodon/guacd:0.9.7
MAINTAINER Dennis Oosterkamp <DOosterkamp@Clevir.nl>

ENV \
    GUAC_VERSION=0.9.7 \
    CLEVIR_VERSION=0.9.7.7251

# Start guacd, listening on port 0.0.0.0:4822
EXPOSE 4822
