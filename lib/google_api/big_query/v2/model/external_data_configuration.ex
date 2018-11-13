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

defmodule GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration do
  @moduledoc """
  

  ## Attributes

  - autodetect (boolean()): Try to detect schema and format options automatically. Any option specified explicitly will be honored. Defaults to: `null`.
  - bigtableOptions (BigtableOptions): [Optional] Additional options if sourceFormat is set to BIGTABLE. Defaults to: `null`.
  - compression (String.t): [Optional] The compression type of the data source. Possible values include GZIP and NONE. The default value is NONE. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats. Defaults to: `null`.
  - csvOptions (CsvOptions): Additional properties to set if sourceFormat is set to CSV. Defaults to: `null`.
  - googleSheetsOptions (GoogleSheetsOptions): [Optional] Additional options if sourceFormat is set to GOOGLE_SHEETS. Defaults to: `null`.
  - ignoreUnknownValues (boolean()): [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don&#39;t match any column names Google Cloud Bigtable: This setting is ignored. Google Cloud Datastore backups: This setting is ignored. Avro: This setting is ignored. Defaults to: `null`.
  - maxBadRecords (integer()): [Optional] The maximum number of bad records that BigQuery can ignore when reading data. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV, JSON, and Google Sheets. The default value is 0, which requires that all records are valid. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats. Defaults to: `null`.
  - schema (TableSchema): [Optional] The schema for the data. Schema is required for CSV and JSON formats. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats. Defaults to: `null`.
  - sourceFormat (String.t): [Required] The data format. For CSV files, specify \&quot;CSV\&quot;. For Google sheets, specify \&quot;GOOGLE_SHEETS\&quot;. For newline-delimited JSON, specify \&quot;NEWLINE_DELIMITED_JSON\&quot;. For Avro files, specify \&quot;AVRO\&quot;. For Google Cloud Datastore backups, specify \&quot;DATASTORE_BACKUP\&quot;. [Beta] For Google Cloud Bigtable, specify \&quot;BIGTABLE\&quot;. Defaults to: `null`.
  - sourceUris ([String.t]): [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one &#39;*&#39; wildcard character and it must come after the &#39;bucket&#39; name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the &#39;*&#39; wildcard character is not allowed. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"autodetect" => any(),
    :"bigtableOptions" => GoogleApi.BigQuery.V2.Model.BigtableOptions.t(),
    :"compression" => any(),
    :"csvOptions" => GoogleApi.BigQuery.V2.Model.CsvOptions.t(),
    :"googleSheetsOptions" => GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions.t(),
    :"ignoreUnknownValues" => any(),
    :"maxBadRecords" => any(),
    :"schema" => GoogleApi.BigQuery.V2.Model.TableSchema.t(),
    :"sourceFormat" => any(),
    :"sourceUris" => list(any())
  }

  field(:"autodetect")
  field(:"bigtableOptions", as: GoogleApi.BigQuery.V2.Model.BigtableOptions)
  field(:"compression")
  field(:"csvOptions", as: GoogleApi.BigQuery.V2.Model.CsvOptions)
  field(:"googleSheetsOptions", as: GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions)
  field(:"ignoreUnknownValues")
  field(:"maxBadRecords")
  field(:"schema", as: GoogleApi.BigQuery.V2.Model.TableSchema)
  field(:"sourceFormat")
  field(:"sourceUris", type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


