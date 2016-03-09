# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  username           :string           not null
#  first_name         :string
#  last_name          :string
#  groups             :string
#  api_key            :string
#  api_key_expires_at :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
module V1
  class UserSerializer < ApplicationSerializer

    json_api_swagger_schema do
      property :attributes, type: :object do
        property :username, type: :string
        property :first_name, type: :string
        property :last_name, type: :string
        property :groups, type: :array, items: { type: :string }
        property :api_key, type: :string
        property :api_key_expires_at, type: :string, format: :dateTime
        property :admin, type: :boolean
      end
    end

    attributes :id, :username, :first_name, :last_name, :groups,
               :api_key, :api_key_expires_at, :created_at, :updated_at

    attribute :admin?, key: :admin

    def groups
      object.group_list
    end

  end
end
