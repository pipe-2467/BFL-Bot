local HttpService = game:GetService("HttpService")

-- ฟังก์ชันถอดรหัส Binary กลับมาเป็น Token (ใช้งานใน RAM เท่านั้น)
local function decodeBinaryToken(binStr)
    local bytes = {}
    for match in binStr:gmatch("%d%d%d%d%d%d%d%d") do
        table.insert(bytes, string.char(tonumber(match, 2)))
    end
    return table.concat(bytes)
end

-- ข้อมูล Binary ของคุณ
local BINARY_TOKEN = "0101101000110010011010000111011101011000011110100101101001111000010011100100011101010001011101100110000100110000010100010011010101010011001100000011000101111010010101100101011101011010001100110101000101011001011010000100111001010001011110100100101001101010011000100100011100110101011011000101000101101011010011100100110001100101011010110011100001111010010110100101010001000110010010110100110101000101010110100110111001100011011101110011110100111101"

local TOKEN = decodeBinaryToken(BINARY_TOKEN) -- ถอดรหัสตอนรัน
local URL = "https://api.github.com/repos/pipe-2467/BFL-Bot/contents/bot_memory.json"

return function(dataToSave)
    -- โค้ดเดิมที่ใช้ POST ข้อมูล...
    -- (ใส่ส่วนการ Get และ Post ตามโครงสร้างเดิมที่ผมให้ไว้ก่อนหน้านี้)
end
