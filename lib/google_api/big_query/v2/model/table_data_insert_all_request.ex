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

defmodule GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequest do
  @moduledoc """
  

  ## Attributes

  - ignoreUnknownValues (boolean()): [Optional] Accept rows that contain values that do not match the schema. The unknown values are ignored. Default is false, which treats unknown values as errors. Defaults to: `null`.
  - kind (String.t): The resource type of the response. Defaults to: `null`.
  - rows ([TableDataInsertAllRequestRows]): The rows to insert. Defaults to: `null`.
  - skipInvalidRows (boolean()): [Optional] Insert all valid rows of a request, even if invalid rows exist. The default value is false, which causes the entire request to fail if any invalid rows exist. Defaults to: `null`.
  - templateSuffix (String.t): [Experimental] If specified, treats the destination table as a base template, and inserts the rows into an instance table named \&quot;{destination}{templateSuffix}\&quot;. BigQuery will manage creation of the instance table, using the schema of the base template table. See https://cloud.google.com/bigquery/streaming-data-into-bigquery#template-tables for considerations when working with templates tables. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"ignoreUnknownValues" => any(),
    :"kind" => any(),
    :"rows" => list(GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequestRows.t()),
    :"skipInvalidRows" => any(),
    :"templateSuffix" => any()
  }

  field(:"ignoreUnknownValues")
  field(:"kind")
  field(:"rows", as: GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequestRows, type: :list)
  field(:"skipInvalidRows")
  field(:"templateSuffix")
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequest do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

