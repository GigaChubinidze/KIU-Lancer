module ServicesHelper
    def service_author(service)
        user_signed_in? && current_user.id == service.user_id
    end
end
