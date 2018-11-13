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

defmodule GoogleApi.BigQuery.V2.Model.TableReference do
  @moduledoc """
  

  ## Attributes

  - datasetId (String.t): [Required] The ID of the dataset containing this table. Defaults to: `null`.
  - projectId (String.t): [Required] The ID of the project containing this table. Defaults to: `null`.
  - tableId (String.t): [Required] The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"datasetId" => any(),
    :"projectId" => any(),
    :"tableId" => any()
  }

  field(:"datasetId")
  field(:"projectId")
  field(:"tableId")
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableReference do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


