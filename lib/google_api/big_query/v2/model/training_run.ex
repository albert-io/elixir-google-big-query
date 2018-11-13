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

defmodule GoogleApi.BigQuery.V2.Model.TrainingRun do
  @moduledoc """
  

  ## Attributes

  - iterationResults ([IterationResult]): [Output-only, Beta] List of each iteration results. Defaults to: `null`.
  - startTime (DateTime.t): [Output-only, Beta] Training run start time in milliseconds since the epoch. Defaults to: `null`.
  - state (String.t): [Output-only, Beta] Different state applicable for a training run. IN PROGRESS: Training run is in progress. FAILED: Training run ended due to a non-retryable failure. SUCCEEDED: Training run successfully completed. CANCELLED: Training run cancelled by the user. Defaults to: `null`.
  - trainingOptions (TrainingRunTrainingOptions):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"iterationResults" => list(GoogleApi.BigQuery.V2.Model.IterationResult.t()),
    :"startTime" => DateTime.t(),
    :"state" => any(),
    :"trainingOptions" => GoogleApi.BigQuery.V2.Model.TrainingRunTrainingOptions.t()
  }

  field(:"iterationResults", as: GoogleApi.BigQuery.V2.Model.IterationResult, type: :list)
  field(:"startTime", as: DateTime)
  field(:"state")
  field(:"trainingOptions", as: GoogleApi.BigQuery.V2.Model.TrainingRunTrainingOptions)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TrainingRun do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TrainingRun.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TrainingRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


