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
        # A widget showing the latest value of a metric, and how this value relates to
        # one or more thresholds.
        # @!attribute [rw] time_series_query
        #   @return [Google::Monitoring::Dashboard::V1::TimeSeriesQuery]
        #     Fields for querying time series data from the
        #     Stackdriver metrics API.
        # @!attribute [rw] gauge_view
        #   @return [Google::Monitoring::Dashboard::V1::Scorecard::GaugeView]
        #     Will cause the scorecard to show a gauge chart.
        # @!attribute [rw] spark_chart_view
        #   @return [Google::Monitoring::Dashboard::V1::Scorecard::SparkChartView]
        #     Will cause the scorecard to show a spark chart.
        # @!attribute [rw] thresholds
        #   @return [Array<Google::Monitoring::Dashboard::V1::Threshold>]
        #     The thresholds used to determine the state of the scorecard given the
        #     time series' current value. For an actual value x, the scorecard is in a
        #     danger state if x is less than or equal to a danger threshold that triggers
        #     below, or greater than or equal to a danger threshold that triggers above.
        #     Similarly, if x is above/below a warning threshold that triggers
        #     above/below, then the scorecard is in a warning state - unless x also puts
        #     it in a danger state. (Danger trumps warning.)
        #
        #     As an example, consider a scorecard with the following four thresholds:
        #     {
        #       value: 90,
        #       category: 'DANGER',
        #       trigger: 'ABOVE',
        #     },
        #     {
        #       value: 70,
        #       category: 'WARNING',
        #       trigger: 'ABOVE',
        #     },
        #     {
        #       value: 10,
        #       category: 'DANGER',
        #       trigger: 'BELOW',
        #     },
        #     {
        #       value: 20,
        #       category: 'WARNING',
        #       trigger: 'BELOW',
        #     }
        #
        #     Then: values less than or equal to 10 would put the scorecard in a DANGER
        #     state, values greater than 10 but less than or equal to 20 a WARNING state,
        #     values strictly between 20 and 70 an OK state, values greater than or equal
        #     to 70 but less than 90 a WARNING state, and values greater than or equal to
        #     90 a DANGER state.
        class Scorecard
          # A gauge chart shows where the current value sits within a pre-defined
          # range. The upper and lower bounds should define the possible range of
          # values for the scorecard's query (inclusive).
          # @!attribute [rw] lower_bound
          #   @return [Float]
          #     The lower bound for this gauge chart. The value of the chart should
          #     always be greater than or equal to this.
          # @!attribute [rw] upper_bound
          #   @return [Float]
          #     The upper bound for this gauge chart. The value of the chart should
          #     always be less than or equal to this.
          class GaugeView; end

          # A sparkChart is a small chart suitable for inclusion in a table-cell or
          # inline in text. This message contains the configuration for a sparkChart
          # to show up on a Scorecard, showing recent trends of the scorecard's
          # timeseries.
          # @!attribute [rw] spark_chart_type
          #   @return [Google::Monitoring::Dashboard::V1::SparkChartType]
          #     The type of sparkchart to show in this chartView.
          # @!attribute [rw] min_alignment_period
          #   @return [Google::Protobuf::Duration]
          #     The lower bound on data point frequency in the chart implemented by
          #     specifying the minimum alignment period to use in a time series query.
          #     For example, if the data is published once every 10 minutes it would not
          #     make sense to fetch and align data at one minute intervals. This field is
          #     optional and exists only as a hint.
          class SparkChartView; end
        end
      end
    end
  end
end