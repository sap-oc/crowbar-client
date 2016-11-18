
#
# Copyright 2016, SUSE Linux GmbH
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

require_relative "../../../../spec_helper"

describe "Crowbar::Client::Request::Upgrade::Repocheck" do
  [["upgrade/adminrepocheck", "crowbar"], ["upgrade/noderepocheck", "nodes"]].each do |component|
    it_behaves_like "a request class", true do
      subject do
        ::Crowbar::Client::Request::Upgrade::Repocheck.new(
          attrs
        )
      end

      let!(:attrs) do
        {
          component: component.last
        }
      end

      let!(:params) do
        {
        }
      end

      let!(:method) do
        :get
      end

      let!(:url) do
        "api/#{component.first}"
      end

      let!(:headers) do
        {
          "Content-Type" => "application/vnd.crowbar.v2.0+json",
          "Accept" => "application/vnd.crowbar.v2.0+json"
        }
      end
    end
  end
end