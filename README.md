backbone-composite-keys [![Build Status](https://secure.travis-ci.org/caseywebdev/backbone-composite-keys.png)](http://travis-ci.org/caseywebdev/backbone-composite-keys)
=============

Composite key support for Backbone. Just set your `idAttribute` to an array of attributes and you're all set.

Install
-------

```bash
npm install backbone-composite-keys
```

Use
---

This plugin extends the Backbone core, so you'll need to pass in your instance of Backbone.

```coffee
Backbone = require 'backbone'
require('backbone-composite-keys') Backbone
```

This is done automatically in the browser.

Check out the tests for examples.

Test
----

```bash
npm test
```

Licence
-------

Copyright (C) 2012 Casey Foster <casey@caseywebdev.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.