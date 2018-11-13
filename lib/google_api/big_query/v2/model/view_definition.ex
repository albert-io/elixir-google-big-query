# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.BigQuery.V2.Model.ViewDefinition do
  @moduledoc """
  

  ## Attributes

  - query (String.t): [Required] A query that BigQuery executes when the view is referenced. Defaults to: `null`.
  - useLegacySql (boolean()): Specifies whether to use BigQuery&#39;s legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery&#39;s standard SQL: https://cloud.google.com/bigquery/sql-reference/ Queries and views that reference this view must use the same flag value. Defaults to: `null`.
  - userDefinedFunctionResources ([UserDefinedFunctionResource]): Describes user-defined function resources used in the query. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"query" => any(),
    :"useLegacySql" => any(),
    :"userDefinedFunctionResources" => list(GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource.t())
  }

  field(:"query")
  field(:"useLegacySql")
  field(:"userDefinedFunctionResources", as: GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ViewDefinition do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.ViewDefinition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ViewDefinition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


