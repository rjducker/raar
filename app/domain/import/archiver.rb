module Import
  # Imports a master recording into the archive
  class Archiver

    attr_reader :mapping, :master

    def initialize(mapping, master)
      @mapping = mapping
      @master = master
    end

    def run
      AudioFile.transaction do
        create_archive_files
        mapping.persist!
      end
    end

    private

    def create_archive_files
      audio_formats.each do |format|
        file = build_audio_file(format)
        link_to_playback_format(file)
        transcode(file)
        add_tags(file)
      end
    end

    def audio_formats
      (archive_formats + playback_formats).collect(&:audio_format).uniq
    end

    def build_audio_file(format)
      mapping.broadcast.audio_files
        .build(audio_format: format)
        .with_path
    end

    def link_to_playback_format(file)
      file.playback_format =
        playback_formats.detect { |f| f.audio_format == file.audio_format }
    end

    def transcode(audio_file)
      AudioProcessor.new(master).transcode(
        audio_file.absolute_path,
        audio_file.audio_format)
    end

    def archive_formats
      mapping.profile.archive_formats
    end

    def playback_formats
      @playback_formats ||= PlaybackFormat.all
    end

    def add_tags(_file)
      # TODO
    end

  end
end