# == Schema Information
#
# Table name: archive_formats
#
#  id                      :integer          not null, primary key
#  profile_id              :integer          not null
#  codec                   :string           not null
#  initial_bitrate         :integer          not null
#  initial_channels        :integer          not null
#  max_public_bitrate      :integer
#  created_at              :datetime
#  updated_at              :datetime
#  download_permission     :integer
#  max_logged_in_bitrate   :integer
#  max_priviledged_bitrate :integer
#  priviledged_groups      :string
#

class ArchiveFormat < ActiveRecord::Base

  include WithAudioFormat

  attr_readonly :codec

  belongs_to :profile

  has_many :downgrade_actions, dependent: :destroy

  composed_of_audio_format(:initial_bitrate, :initial_channels)

  validates :codec, :initial_bitrate, :initial_channels, presence: true
  validates :codec, uniqueness: { scope: :profile_id }
  validates :max_public_bitrate,
            numericality: { only_integer: true, greater_or_equal_to: 0, allow_blank: true }
  validate :assert_codec_not_changed, on: :update

  scope :list, -> { order(:codec) }

  private

  def assert_codec_not_changed
    errors.add(:codec, :must_not_change) if codec_changed?
  end

end
