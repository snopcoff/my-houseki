module UsersHelper
    
    def getname(user1, user2)
        return "My" if user2.presence && user1.id == user2.id
        return user1.name+"'s"
    end
    
end
