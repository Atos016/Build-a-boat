-- Criação de Interface Gráfica
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local Button = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui

-- Configuração do Frame
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Frame.Position = UDim2.new(0.4, 0, 0.4, 0)
Frame.Size = UDim2.new(0, 200, 0, 100)

UICorner.Parent = Frame

-- Configuração da Caixa de Texto
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.Position = UDim2.new(0.1, 0, 0.2, 0)
TextBox.Size = UDim2.new(0, 160, 0, 40)
TextBox.PlaceholderText = "Insira a quantidade de ouro"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0, 0, 0)

UICorner:Clone().Parent = TextBox

-- Configuração do Botão
Button.Parent = Frame
Button.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
Button.Position = UDim2.new(0.1, 0, 0.7, 0)
Button.Size = UDim2.new(0, 160, 0, 30)
Button.Text = "Adicionar Ouro"

UICorner:Clone().Parent = Button

-- Função para conceder ouro
local function giveGold(amount)
    game.ReplicatedStorage.Gold:FireServer(amount)
end

-- Evento de clique do botão
Button.MouseButton1Click:Connect(function()
    local amount = tonumber(TextBox.Text)
    if amount then
        giveGold(amount)
    else
        warn("Por favor, insira um número válido!")
    end
end)
