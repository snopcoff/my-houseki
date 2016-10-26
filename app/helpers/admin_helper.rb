module AdminHelper
    def is_admin(user)
        if user.roles.first.presence
            return "Remove Admin Role"
        else
            return "Make Admin"
        end
    end
end
