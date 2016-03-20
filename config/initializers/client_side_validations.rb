# ClientSideValidations Initializer

# Disabled validators. The uniqueness validator is disabled by default for security issues. Enable it on your own responsibility!
# ClientSideValidations::Config.disabled_validators = [:uniqueness]

# Uncomment to validate number format with current I18n locale
# ClientSideValidations::Config.number_format_with_locale = true


 ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
   unless html_tag =~ /^<label/
     %{<div class="field_with_errors">#{html_tag}<label for="#{instance.send(:tag_id)}" class="message">#{instance.error_message.first}</label></div>}.html_safe
   else
     %{<div class="field_with_errors">#{html_tag}</div>}.html_safe
   end
 end
