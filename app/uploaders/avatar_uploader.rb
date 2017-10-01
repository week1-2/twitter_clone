class AvatarUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  version :thumbnail do
    resize_to_fit(50, 50)
  end

  def public_id    
    return model.user_name << "_profile"
  end
end
