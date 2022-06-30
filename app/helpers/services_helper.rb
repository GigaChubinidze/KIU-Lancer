module ServicesHelper
    def service_author(service)
        user_signed_in? && current_user.id == service.user_id
    end

    def service_price(service)
        if I18n.locale == :ka
            price = price * 2.94
        end
    end
end


