# rubysl-unicode_normalize

This gem provides the Ruby's standard library's unicode_normalize that gives you
access to the String's `#unicode_normalize`, `#unicode_normalize!` and
`#unicode_normalized?` methods.

## Target

The 2.0 branch of rubysl-unicode_normalize targets Ruby 2.x, other Ruby versions
are currently not supported.

## Requirements

* Rubinius 2.10 or newer

## Installation

By default rubysl-unicode_normalize is already installed when you install
Rubinius.  Currently updating rubysl-unicode_normalize requires re-installing
Rubinius, in the future you can simply update rubysl-unicode_normalize by
running `gem update rubysl-unicode_normalize`.

## Contributing

In general the contributing guidelines are the same as Rubinius
(<http://rubinius.com/doc/en/contributing/>).

## License

All source code in this repository is subject to the terms of the Mozilla Public
License, version 2.0 unless stated otherwise. A copy of this license can be
found the file "LICENSE" or at <https://www.mozilla.org/MPL/2.0/>.

The following files are taken from MRI and are thus licensed using the same
license as MRI (a copy can be found in "MRI_LICENSE"):

* lib/unicode_normalize/normalize.rb
* lib/unicode_normalize/tables.rb
* lib/unicode_normalize.rb
