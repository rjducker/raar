module AudioProcessor
  # Base class for processing audio files.
  class Base

    attr_reader :file

    def initialize(file)
      @file = file
    end

    def downgrade(_new_path, _bitrate, _channels)
      fail(NotImplementedError)
    end

    def bitrate
      fail(NotImplementedError)
    end

    def channels
      fail(NotImplementedError)
    end

    def codec
      fail(NotImplementedError)
    end

  end
end
