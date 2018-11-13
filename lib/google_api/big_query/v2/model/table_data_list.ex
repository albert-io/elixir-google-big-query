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

defmodule GoogleApi.BigQuery.V2.Model.TableDataList do
  @moduledoc """
  

  ## Attributes

  - etag (String.t): A hash of this page of results. Defaults to: `null`.
  - kind (String.t): The resource type of the response. Defaults to: `null`.
  - pageToken (String.t): A token used for paging results. Providing this token instead of the startIndex parameter can help you retrieve stable results when an underlying table is changing. Defaults to: `null`.
  - rows ([TableRow]): Rows of results. Defaults to: `null`.
  - totalRows (String.t): The total number of rows in the complete table. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"etag" => any(),
    :"kind" => any(),
    :"pageToken" => any(),
    :"rows" => list(GoogleApi.BigQuery.V2.Model.TableRow.t()),
    :"totalRows" => any()
  }

  field(:"etag")
  field(:"kind")
  field(:"pageToken")
  field(:"rows", as: GoogleApi.BigQuery.V2.Model.TableRow, type: :list)
  field(:"totalRows")
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableDataList do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableDataList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableDataList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

