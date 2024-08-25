-- Exemplo de script para adicionar ouro
local function addGold(amount)
    local player = game.Players.LocalPlayer
    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local gold = leaderstats:FindFirstChild("Gold") -- Substitua "Gold" pelo nome correto do atributo de ouro
        if gold then
            gold.Value = gold.Value + amount
        else
            warn("Não foi possível encontrar o atributo de ouro.")
        end
    else
        warn("Não foi possível encontrar o leaderstats.")
    end
end

-- Adicionar 99999999 de ouro
addGold(99999999)
