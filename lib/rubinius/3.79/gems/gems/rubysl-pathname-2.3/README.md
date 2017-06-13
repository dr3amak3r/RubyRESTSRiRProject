# rubysl-pathname

An implementation of the Ruby Pathname standard library for Rubinius. Currently
this Gem is mostly (if not entirely) just a copy of MRI's Pathname
implementation.

Please note that **only** Rubinius is officially supported. While other Ruby
implementations are free to use rubysl-pathname according to its license we do
not provide any support for this.

## Target

The 2.0 branch of rubysl-pathname targets Ruby 2.x, other Ruby versions are
currently not supported.

## Requirements

* Rubinius 2.10 or newer

## Installation

By default rubysl-pathname is already installed when you install Rubinius.
Currently updating rubysl-pathname requires re-installing Rubinius, in the future
you can simply update rubysl-pathname by running `gem update rubysl-pathname`.

## Contributing

In general the contributing guidelines are the same as Rubinius
(<http://rubinius.com/doc/en/contributing/>).

To get started, clone the directory and install all Gems:

    bundle install

You'll want to do this for both your local MRI and Rubinius installations.

Running the specs under MRI works as following:

    mspec spec/path/to/file_spec.rb

Running the specs under Rubinius requires an extra environment variable so
Rubinius loads the local rubysl-pathname copy instead of the installed one:

    RUBYLIB=.:lib mspec spec/path/to/file_spec.rb

All specs **must** pass on both MRI and Rubinius.

## License

All source code in this repository is subject to the terms of the Mozilla Public
License, version 2.0 unless stated otherwise. A copy of this license can be
found the file "LICENSE" or at <https://www.mozilla.org/MPL/2.0/>.

The following files use a different license:

* `lib/rubysl/pathname/pathname.rb`: MRI license, found in the file
  "MRI_LICENSE"
