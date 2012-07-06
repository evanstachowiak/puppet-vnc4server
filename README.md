puppet-vnc4server - VNC Display Server
==========================================

This puppet module will install vnc4server and set a specific
display port.

This module supports Ubuntu 10.04

Installation
------------

1. Copy this directory to your puppet master module path $(git clone https://github.com/evanstachowiak/puppet-vnc4server vnc4server)
2. Apply the `vnc4server` class to any nodes you want the agent installed on: `class { 'vnc4server': }`
3. Create an arbitrary number of displays: vnc4server::display { display_no => '5'}

Contributing
------------

- fork on github (https://github.com/evanstachowiak/puppet-vnc4server)
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
