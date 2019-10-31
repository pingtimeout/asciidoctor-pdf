Docker image containing utility to work around <https://github.com/asciidoctor/asciidoctor/issues/3431>.

Usage
=====

    docker run -it -v $PWD:/documents pingtimeoutfr/docker-asciidoctor-pdf apdf /documents/README.adoc

It will download all images of the provided `README.adoc` file in a `.images/` directory. The images will be named after their alt text. Then, a PDF document will be generated using the local images as replacement for remote images.

The downloaded images will not be removed from the `.images/` directory, for inspection purposes.

Limitations
===========

The `apdf` tool can only work against asciidoc files that use **inline** images only. Asciidoc files MUST NOT contain any image block.

Local images are supported if the local path starts with a dot.

Alt texts MUST NOT contain any space.

Misc
====

The utility script contained in this image relies on GNU Parallel. O. Tange (2011): GNU Parallel - The Command-Line Power Tool, ;login: The USENIX Magazine, February 2011:42-47.
