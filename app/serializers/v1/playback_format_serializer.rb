module V1
  class PlaybackFormatSerializer < ApplicationSerializer

    json_api_swagger_schema do
      property :attributes do
        property :name, type: :string
        property :description, type: :string
        property :codec,
                 type: :string,
                 description: 'See audio_encodings for possible values.'
        property :bitrate,
                 type: :integer,
                 description: 'See audio_encodings of selected codec for possible values.'
        property :channels,
                 type: :integer,
                 description: 'See audio_encodings of selected codec for possible values.'
        property :created_at, type: :string, format: 'date-time', readOnly: true
        property :updated_at, type: :string, format: 'date-time', readOnly: true
      end
    end

    attributes :id, :name, :description, :codec, :bitrate, :channels, :created_at, :updated_at

  end
end