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

defmodule GoogleApi.BigQuery.V2.Model.JobConfigurationExtract do
  @moduledoc """
  

  ## Attributes

  - compression (String.t): [Optional] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. Defaults to: `null`.
  - destinationFormat (String.t): [Optional] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON and AVRO. The default value is CSV. Tables with nested or repeated fields cannot be exported as CSV. Defaults to: `null`.
  - destinationUri (String.t): [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written. Defaults to: `null`.
  - destinationUris ([String.t]): [Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written. Defaults to: `null`.
  - fieldDelimiter (String.t): [Optional] Delimiter to use between fields in the exported data. Default is &#39;,&#39; Defaults to: `null`.
  - printHeader (boolean()): [Optional] Whether to print out a header row in the results. Default is true. Defaults to: `null`.
  - sourceTable (TableReference): [Required] A reference to the table being exported. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"compression" => any(),
    :"destinationFormat" => any(),
    :"destinationUri" => any(),
    :"destinationUris" => list(any()),
    :"fieldDelimiter" => any(),
    :"printHeader" => any(),
    :"sourceTable" => GoogleApi.BigQuery.V2.Model.TableReference.t()
  }

  field(:"compression")
  field(:"destinationFormat")
  field(:"destinationUri")
  field(:"destinationUris", type: :list)
  field(:"fieldDelimiter")
  field(:"printHeader")
  field(:"sourceTable", as: GoogleApi.BigQuery.V2.Model.TableReference)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationExtract do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobConfigurationExtract.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationExtract do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


