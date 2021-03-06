# frozen_string_literal: true

# Licensed to the Software Freedom Conservancy (SFC) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The SFC licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

require 'selenium/webdriver/chrome/driver'

module Selenium
  module WebDriver
    module Edge

      #
      # Driver implementation for Microsoft Edge.
      # @api private
      #

      class Driver < Selenium::WebDriver::Chrome::Driver
        def browser
          :edge
        end

        def bridge_class
          Bridge
        end

        private

        def debugger_address
          capabilities['ms:edgeOptions']['debuggerAddress']
        end
      end # Driver
    end # Edge
  end # WebDriver
end # Selenium
