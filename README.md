# Docker image for node

After looking at various node docker images I found none with a
minimal set of packages (really I want just node) and correctly
tagged node builds.

The strategy here is very simple:

  - download a x86 node binary to node
  - add it to the docker image under `/opt/node`
  - add `/opt/node/bin/` to the path


## Branches

There are two automated docker (hub) branches here:

  `master` -> `latest : contains the release stable version of node
  `unstable` -> `unstable: contains the development version of node

The branches must be manually updated to point to the most recent
versions of node currently.

## LICENSE

The MIT License (MIT)

Copyright (c) 2014 Sahaja James Lal

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
