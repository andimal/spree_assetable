Deface::Override.new(:virtual_path => "spree/admin/images/_form",
                     :name => "spree_assetable_switch_uploader",
                     :replace => "[data-hook='file']",
                     :partial => "spree/admin/images/assetable",
                     :disabled => false)

