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

defmodule GoogleApi.BigQuery.V2.Model.BigtableColumnFamily do
  @moduledoc """
  

  ## Attributes

  - columns ([BigtableColumn]): [Optional] Lists of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as .. Other columns can be accessed as a list through .Column field. Defaults to: `null`.
  - encoding (String.t): [Optional] The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in &#39;columns&#39; and specifying an encoding for it. Defaults to: `null`.
  - familyId (String.t): Identifier of the column family. Defaults to: `null`.
  - onlyReadLatest (boolean()): [Optional] If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in &#39;columns&#39; and specifying a different setting for that column. Defaults to: `null`.
  - type (String.t): [Optional] The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Default type is BYTES. This can be overridden for a specific column by listing that column in &#39;columns&#39; and specifying a type for it. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"columns" => list(GoogleApi.BigQuery.V2.Model.BigtableColumn.t()),
    :"encoding" => any(),
    :"familyId" => any(),
    :"onlyReadLatest" => any(),
    :"type" => any()
  }

  field(:"columns", as: GoogleApi.BigQuery.V2.Model.BigtableColumn, type: :list)
  field(:"encoding")
  field(:"familyId")
  field(:"onlyReadLatest")
  field(:"type")
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.BigtableColumnFamily do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.BigtableColumnFamily.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.BigtableColumnFamily do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


