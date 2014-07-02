class DummyAttachment
  def url(*args)
    ""
  end
end


Spree::Image.class_eval do
  assetable :asset

  # Ugly hack to remove validation on attachment because we don't care
  validators = _validators[:attachment]
  validators.each do |v|
    _validators[:attachment].delete(v)
    filter = _validate_callbacks.find{ |c| c.raw_filter == v }.filter
    skip_callback :validate, filter
  end
  validates_presence_of :asset_association

  def attachment
    asset_association || DummyAttachment.new
  end

  def no_attachment_errors
    # Ignore attachment
  end

end