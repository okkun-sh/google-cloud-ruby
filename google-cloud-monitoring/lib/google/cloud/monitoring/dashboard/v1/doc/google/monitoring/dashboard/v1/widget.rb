# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


module Google
  module Monitoring
    module Dashboard
      module V1
        # Widget contains a single dashboard component and configuration of how to
        # present the component in the dashboard.
        # @!attribute [rw] title
        #   @return [String]
        #     Optional. The title of the widget.
        # @!attribute [rw] xy_chart
        #   @return [Google::Monitoring::Dashboard::V1::XyChart]
        #     A chart of time series data.
        # @!attribute [rw] scorecard
        #   @return [Google::Monitoring::Dashboard::V1::Scorecard]
        #     A scorecard summarizing time series data.
        # @!attribute [rw] text
        #   @return [Google::Monitoring::Dashboard::V1::Text]
        #     A raw string or markdown displaying textual content.
        # @!attribute [rw] blank
        #   @return [Google::Protobuf::Empty]
        #     A blank space.
        class Widget; end
      end
    end
  end
end