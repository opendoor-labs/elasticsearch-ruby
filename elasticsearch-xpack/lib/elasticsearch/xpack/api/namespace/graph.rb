# Licensed to Elasticsearch B.V under one or more agreements.
# Elasticsearch B.V licenses this file to you under the Apache 2.0 License.
# See the LICENSE file in the project root for more information

module Elasticsearch
  module XPack
    module API
      module Graph
        module Actions; end

        class GraphClient
          include Elasticsearch::API::Common::Client, Elasticsearch::API::Common::Client::Base, Graph::Actions
        end

        def graph
          @graph ||= GraphClient.new(self)
        end

      end
    end
  end
end
