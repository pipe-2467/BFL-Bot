local HttpService = game:GetService("HttpService")
local url = "https://raw.githubusercontent.com/pipe-2467/BFL-Bot/main/semantic_map.json"
local map = HttpService:JSONDecode(game:HttpGet(url))

return {
    GetConcept = function(word)
        for concept, synonyms in pairs(map.concepts) do
            if table.find(synonyms, word) then return concept end
        end
        return word 
    end
}
