

_G.WhitelistedHWIDs = loadstring(game:HttpGet("https://raw.githubusercontent.com/monkeyHopper-21/StackGui/main/stack_whitelist.lua"))();


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

    loadstring(game:HttpGet("https://raw.githubusercontent.com/monkeyHopper-21/StackGui/main/_StackGui_v1.lua"))();

else
    game.Players.LocalPlayer:Kick("no dont try it")
end
    