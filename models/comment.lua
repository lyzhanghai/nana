local Model = require("models.model")
local config = require("config.app")
local User = require('models.user')

local Comment = Model:new('comments')

function Comment:user()
    return Comment:belongsTo(User:new(), 'user_id', 'id')
end

return Comment