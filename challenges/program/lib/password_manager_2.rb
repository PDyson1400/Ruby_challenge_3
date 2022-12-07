def arrfind(arr, key, value)
    arr.find{|hash| hash[key] == value}
end

class PasswordManager2
    def initialize
        @arr = []
    end

    def add(service, password)
        if arrfind(@arr, "password", password) == nil 
            if arrfind(@arr, "service", service) == nil
                @arr.push({"service" => service, "password" => password})
            else
                return "ERROR: Service names must be unique"
            end
        else
            return "ERROR: Passwords must be unique"
        end
    end

    def remove(service)
        ind = @arr.find_index(arrfind(@arr, "service", service))
        return @arr.delete_at(ind)
    end

    def services
        return @arr.map{|hash| hash["service"]}
    end

    def sort_by(category)
        if category == "service"
            sorted = @arr.sort_by{|hash| hash.key("service")}
            return sorted.map{|hash| hash["service"]}
        elsif category = "added_on"
            return @arr.map{|hash| hash["service"]}.reverse
        end
    end

    def password_for(service)
        pw = @arr.map{|hash| hash["password"]}
        return pw[0]
    end

    def update(service, newpass)
        if arrfind(@arr, "password", newpass) == nil
            @arr.map {|hash| 
                if hash["service"] == service
                    hash["password"] = newpass
                end
            }
            return newpass
        end
    end
end
