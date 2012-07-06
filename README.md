puppet-newrelic - New Relic Server Monitor
==========================================

This puppet module will install xvfb and set a specific
display port.

This module supports Ubuntu 10.04

Installation
------------

1. Copy this directory to your puppet master module path $(git clone https://github.com/evanstachowiak/puppet-xvfb xvfb)
2. Apply the `xvfb` class to any nodes you want the agent installed on: `class { 'xvfb': display_no => 'displayNum' }`

Contributing
------------

- fork on github (https://github.com/evanstachowiak/puppet-xvfb)
- send a pull request

Author
------
Evan Stachowiak (https://github.com/evanstachowiak)

LICENSE
-------

    Author:: Evan Stachowiak
    Copyright:: Copyright (c) 2012 Evan Stachowiak
    License:: Apache License, Version 2.0

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
