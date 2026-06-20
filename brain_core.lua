local Brain = {}
local Semantic = loadstring(game:HttpGet("https://raw.githubusercontent.com/pipe-2467/BFL-Bot/main/engine_semantic.lua"))()

function Brain:Process(input)
    local concept = Semantic.GetConcept(input)
    print("Bot understood concept: " .. concept)
    return concept
end
return Brain
