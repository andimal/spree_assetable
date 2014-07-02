Assetabler::AssetAttachment.class_eval do
 
  def url(size)
    if asset.present? and asset.filename.present?
      if asset.filename.versions.keys.include?(size)
        asset.filename.send(size).url
      else
        asset.filename.url
      end
    else
      ""
    end
  end

end