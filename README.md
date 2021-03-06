OSX Bootstrap
========================================================================

This is a little chef repo that I use for setting up a new mac. I'm
*very* lazy so most of the preferences are hardcoded in the
cookbooks. The result is that this sets up a machine the way I want,
which is quite possibly not how you want. I'll probably make it more
tunable later, but... lazy :D

Prerequisites
------------------------------------------------------------------------

First off, install Xcode from the App Store. Next, make sure the
Command Line Tools are installed, by going into Xcode's Preferences,
selecting the Downloads tab, and installing the Command Line Tools.

You'll also need to have bundler installed.

A Note About Sudo
------------------------------------------------------------------------

There are a handful of recipes in this repo that require sudo. I try to
avoid this as much as possible, but with some things (.mpkg installers)
it's just not possible. You may want to edit your sudoers file to set
`NOPASSWD` on your user.

You'll want to run `sudo visudo` and change `%admin ALL=(ALL) ALL` to
`%admin ALL=(ALL) NOPASSWD:ALL`. Save the file, and verify it works by
`sudo -k && sudo -l`. You should not be prompted for a password.

How Do?
------------------------------------------------------------------------

* check out the repo
* `bundle install`
* copy `config/example.json` to `config/whatever.json`
* edit your json file to taste
* `rake converge[whatever]`

Contributions and Thanks
------------------------------------------------------------------------

My employer ([LivingSocial]) sponsors some of the work I do on this
project, and I note that in the files they own.

[LivingSocial]: http://livingsocial.com

Contributions from:

* [Grégory Karékinian][gkarekinian]

The `vendored_cookbooks` directory contains cookbooks by:

* [Graeme Mathieson][mathie] ([homebrew])
* [Joshua Timberman][jtimberman] (1password, [dmg], [mac_os_x])

Those cookbooks are licensed under different terms; see their respective
READMEs for details.

[gkarekinian]: https://github.com/gkarekinian
[mathie]: https://github.com/mathie
[jtimberman]: https://github.com/jtimberman

[homebrew]: https://github.com/mathie/chef-homebrew
[dmg]: https://github.com/opscode/cookbooks/tree/master/dmg
[mac_os_x]: https://github.com/jtimberman/mac_os_x-cookbook

The Apache License, Version 2.0
------------------------------------------------------------------------

Copyright 2011-2012 Ben Bleything <ben@bleything.net>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
