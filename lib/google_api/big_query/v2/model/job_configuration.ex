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

defmodule GoogleApi.BigQuery.V2.Model.JobConfiguration do
  @moduledoc """
  

  ## Attributes

  - copy (JobConfigurationTableCopy): [Pick one] Copies a table. Defaults to: `null`.
  - dryRun (boolean()): [Optional] If set, don&#39;t actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn&#39;t a dry run. Behavior of non-query jobs is undefined. Defaults to: `null`.
  - extract (JobConfigurationExtract): [Pick one] Configures an extract job. Defaults to: `null`.
  - jobTimeoutMs (String.t): [Optional] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job. Defaults to: `null`.
  - jobType (String.t): [Output-only] The type of the job. Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key. Defaults to: `null`.
  - load (JobConfigurationLoad): [Pick one] Configures a load job. Defaults to: `null`.
  - query (JobConfigurationQuery): [Pick one] Configures a query job. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"copy" => GoogleApi.BigQuery.V2.Model.JobConfigurationTableCopy.t(),
    :"dryRun" => any(),
    :"extract" => GoogleApi.BigQuery.V2.Model.JobConfigurationExtract.t(),
    :"jobTimeoutMs" => any(),
    :"jobType" => any(),
    :"labels" => map(),
    :"load" => GoogleApi.BigQuery.V2.Model.JobConfigurationLoad.t(),
    :"query" => GoogleApi.BigQuery.V2.Model.JobConfigurationQuery.t()
  }

  field(:"copy", as: GoogleApi.BigQuery.V2.Model.JobConfigurationTableCopy)
  field(:"dryRun")
  field(:"extract", as: GoogleApi.BigQuery.V2.Model.JobConfigurationExtract)
  field(:"jobTimeoutMs")
  field(:"jobType")
  field(:"labels", type: :map)
  field(:"load", as: GoogleApi.BigQuery.V2.Model.JobConfigurationLoad)
  field(:"query", as: GoogleApi.BigQuery.V2.Model.JobConfigurationQuery)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobConfiguration do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


