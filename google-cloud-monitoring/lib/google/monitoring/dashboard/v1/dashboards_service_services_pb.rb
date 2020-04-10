# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/monitoring/dashboard/v1/dashboards_service.proto for package 'Google::Cloud::Monitoring::Dashboard::V1'
# Original file comments:
# Copyright 2019 Google LLC.
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
#


require 'grpc'
require 'google/monitoring/dashboard/v1/dashboards_service_pb'

module Google
  module Monitoring
    module Dashboard
    end
  end
end
module Google::Monitoring::Dashboard::V1
  module DashboardsService
    # Manages Stackdriver dashboards. A dashboard is an arrangement of data display
    # widgets in a specific layout.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'google.monitoring.dashboard.v1.DashboardsService'

      # Creates a new custom dashboard.
      #
      # This method requires the `monitoring.dashboards.create` permission
      # on the specified project. For more information, see
      # [Google Cloud IAM](https://cloud.google.com/iam).
      rpc :CreateDashboard, CreateDashboardRequest, Dashboard
      # Lists the existing dashboards.
      #
      # This method requires the `monitoring.dashboards.list` permission
      # on the specified project. For more information, see
      # [Google Cloud IAM](https://cloud.google.com/iam).
      rpc :ListDashboards, ListDashboardsRequest, ListDashboardsResponse
      # Fetches a specific dashboard.
      #
      # This method requires the `monitoring.dashboards.get` permission
      # on the specified dashboard. For more information, see
      # [Google Cloud IAM](https://cloud.google.com/iam).
      rpc :GetDashboard, GetDashboardRequest, Dashboard
      # Deletes an existing custom dashboard.
      #
      # This method requires the `monitoring.dashboards.delete` permission
      # on the specified dashboard. For more information, see
      # [Google Cloud IAM](https://cloud.google.com/iam).
      rpc :DeleteDashboard, DeleteDashboardRequest, Google::Protobuf::Empty
      # Replaces an existing custom dashboard with a new definition.
      #
      # This method requires the `monitoring.dashboards.update` permission
      # on the specified dashboard. For more information, see
      # [Google Cloud IAM](https://cloud.google.com/iam).
      rpc :UpdateDashboard, UpdateDashboardRequest, Dashboard
    end

    Stub = Service.rpc_stub_class
  end
end