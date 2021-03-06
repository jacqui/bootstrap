#
# Cookbook Name:: mac_os_x
# Recipe:: screensaver
#
# Author:: Joshua Timberman <opensource@housepub.org>
# Copyright:: Copyright (c) 2011, Joshua Timberman
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

mac_os_x_userdefaults "password protected screensaver" do
  domain "com.apple.screensaver"
  key "askForPassword"
  type "int"
  value "1"
end

mac_os_x_userdefaults "password protected screensaver delay" do
  domain "com.apple.screensaver"
  key "askForPasswordDelay"
  type "int"
  value "5"
end
