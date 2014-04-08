module CarrierWaveDirect
  module Uploader
    module DirectUrl

      def direct_fog_url(options = {})
        if options[:with_path]
          fog_file = CarrierWave::Storage::Fog::File.new(self, CarrierWave::Storage::Fog.new(self), key)
          fog_public ? fog_file.public_url : fog_file.authenticated_url
        else
          fog_file = CarrierWave::Storage::Fog::File.new(self, CarrierWave::Storage::Fog.new(self), nil)
          fog_file.public_url
        end
      end

    end
  end
end
