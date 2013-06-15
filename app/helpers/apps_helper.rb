module AppsHelper
	def appimage_for (app, options = { size: 50 })
	# code to find image in itunes directory
	userimage = :imageurl
	if userimage.blank? == true 
		appimage_url = "asonios.png"
	 else 
		appimage_url = @imageurl
	  end
	# appimage_url =	app/assets/images/asonios_full.png
	image_tag(appimage_url, alt: app.name, class: "appimage")
end
end


=begin
	gravatar example
	gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
	
=end

=begin
	old text
	userimage = :imageurl
	if userimage.blank? == true 
		appimage_url = "asonios.png"
	 else 
		appimage_url = @imageurl
	  end
	# appimage_url =	app/assets/images/asonios_full.png
	image_tag(appimage_url, alt: app.name, class: "appimage")
end
=end

=begin
  alternative test
  userimage = :imageurl
	if userimage.blank? == true 
		image_tag("asonios.png", alt: app.name, class: "appimage")
	 else 
		image_url(@imageurl, alt: app.name, class: "appimage")
	  end
=end