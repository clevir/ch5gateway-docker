# Clevir / Guacd
================

The Clevir-Guacamole deamon provides the backend for the RDP to HTML5 proxy for the Clevir Workspace portal.

What is guacd?
==============

[guacd](https://github.com/glyptodon/guacamole-server/) is the native
server-side proxy used by the [Clevir Workspace portal](http://www.clevirsolutions.com/).
If you wish to deploy the Clevir Workspace portal with HTML5 RDP integration, you will need a
copy of this guacd image running.

How to use this image
=====================

Running guacd for use by the [Clevir-Workspace Docker image](https://registry.hub.docker.com/u/clevir/workspace/)
-----------------------------------------------------

    docker run --name clevir-guacd -d -p 4822:4822 clevir/guacd

guacd will be listening on port 4822, and Docker will expose this port on the
same server hosting Docker. Other services, such as an instance of Tomcat
running outside of Docker, will be able to connect to guacd.

Beware of the security ramifications of doing this. There is no authentication
within guacd, so allowing access from untrusted applications is dangerous. If
you need to expose guacd, ensure that you only expose it as absolutely
necessary, and that only specific trusted applications have access. 
