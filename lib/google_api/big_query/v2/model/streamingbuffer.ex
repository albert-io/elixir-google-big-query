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

defmodule GoogleApi.BigQuery.V2.Model.Streamingbuffer do
  @moduledoc """
  

  ## Attributes

  - estimatedBytes (String.t): [Output-only] A lower-bound estimate of the number of bytes currently in the streaming buffer. Defaults to: `null`.
  - estimatedRows (String.t): [Output-only] A lower-bound estimate of the number of rows currently in the streaming buffer. Defaults to: `null`.
  - oldestEntryTime (String.t): [Output-only] Contains the timestamp of the oldest entry in the streaming buffer, in milliseconds since the epoch, if the streaming buffer is available. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"estimatedBytes" => any(),
    :"estimatedRows" => any(),
    :"oldestEntryTime" => any()
  }

  field(:"estimatedBytes")
  field(:"estimatedRows")
  field(:"oldestEntryTime")
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.Streamingbuffer do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.Streamingbuffer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.Streamingbuffer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

