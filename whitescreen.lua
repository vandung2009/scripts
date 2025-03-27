wait(0.5)

-- Tạo ScreenGui cho UI
local ba = Instance.new("ScreenGui")
ba.Parent = game.CoreGui
ba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Tạo TextLabel cho tiêu đề "Anti AFK"
local ca = Instance.new("TextLabel")
ca.Parent = ba
ca.Active = true
ca.BackgroundColor3 = Color3.new(0, 0, 0)  -- Màu nền đen
ca.Draggable = true  -- Cho phép kéo GUI
ca.Position = UDim2.new(0.7, 0, 0.1, 0)  -- Vị trí gọn gàng
ca.Size = UDim2.new(0, 160, 0, 40)  -- Kích thước gọn
ca.Font = Enum.Font.SourceSansSemibold
ca.Text = "Anti AFK"
ca.TextColor3 = Color3.new(0,255,255)  
ca.TextSize = 18
ca.TextStrokeTransparency = 0.8  -- Độ mờ của viền chữ

-- Tạo Frame chứa các thông tin
local da = Instance.new("Frame")
da.Parent = ca
da.BackgroundColor3 = Color3.new(0, 0, 0)  -- Màu nền đen
da.Position = UDim2.new(0, 0, 1, 0)  -- Vị trí khung chứa thông tin
da.Size = UDim2.new(0, 160, 0, 60)  -- Kích thước nhỏ gọn

-- Tạo TextLabel cho trạng thái
local ab = Instance.new("TextLabel")
ab.Parent = da
ab.BackgroundColor3 = Color3.new(0, 0, 0)  -- Màu nền đen
ab.Position = UDim2.new(0, 0, 0, 0)  -- Vị trí trạng thái
ab.Size = UDim2.new(0, 160, 0, 30)  -- Kích thước vừa đủ
ab.Font = Enum.Font.ArialBold
ab.Text = "Status: Active"  -- Trạng thái
ab.TextColor3 = Color3.new(0, 255, 0)  
ab.TextSize = 14

-- Tạo TextLabel cho phần "by: xyzvandung"
local footer = Instance.new("TextLabel")
footer.Parent = da
footer.BackgroundColor3 = Color3.new(0, 0, 0)  -- Màu nền đen
footer.Position = UDim2.new(0, 0, 0.6, 0)  -- Vị trí dưới cùng
footer.Size = UDim2.new(0, 160, 0, 20)  -- Kích thước vừa đủ
footer.Font = Enum.Font.Arial
footer.Text = "by: xyzvandung"  -- Chữ "by: xyzvandung"
footer.TextColor3 = Color3.new(1, 1, 1)  -- Màu chữ trắng
footer.TextSize = 12
footer.TextStrokeTransparency = 0.8  -- Độ mờ của viền chữ

-- Sử dụng VirtualUser để ngăn Roblox kick người chơi khi không hoạt động
local bb = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
    bb:CaptureController()  -- Giả lập điều khiển
    bb:ClickButton2(Vector2.new())  -- Giả lập click chuột phải
    ab.Text = "Roblox kicked you but we didnt let them!"  -- Hiển thị thông báo
    wait(2)
    ab.Text = "Status: Active"  -- Khôi phục trạng thái lại
end)

local RunService = game:GetService("RunService")RunService:Set3dRenderingEnabled(false)

 local v0;local v1=game;local v2=v1.Workspace;local v3=v1.Lighting;local v4=v2.Terrain;v4.WaterWaveSize=0;v4.WaterWaveSpeed=0;v4.WaterReflectance=0;v4.WaterTransparency=0;v3.GlobalShadows=false;v3.FogEnd=8999999488;v3.Brightness=0;settings().Rendering.QualityLevel="Level01";for v18,v19 in pairs(v1:GetDescendants()) do if (v19:IsA("Part") or v19:IsA("Union") or v19:IsA("CornerWedgePart") or v19:IsA("TrussPart")) then v19.Material="Plastic";v19.Reflectance=0;elseif (v19:IsA("Decal") or (v19:IsA("Texture") and v0)) then v19.Transparency=1;elseif (v19:IsA("ParticleEmitter") or v19:IsA("Trail")) then v19.Lifetime=NumberRange.new(0);elseif v19:IsA("Explosion") then v19.BlastPressure=1;v19.BlastRadius=1;elseif (v19:IsA("Fire") or v19:IsA("SpotLight") or v19:IsA("Smoke")) then v19.Enabled=false;elseif v19:IsA("MeshPart") then v19.Material="Plastic";v19.Reflectance=0;v19.TextureID=10385902758728956;end end for v20,v21 in pairs(v3:GetChildren()) do if (v21:IsA("BlurEffect") or v21:IsA("SunRaysEffect") or v21:IsA("ColorCorrectionEffect") or v21:IsA("BloomEffect") or v21:IsA("DepthOfFieldEffect")) then v21.Enabled=false;end end local v13=game:GetService("UserInputService");local v14=game:GetService("RunService");local v15=function()v14:Set3dRenderingEnabled(false);return;end;local v16=function()v14:Set3dRenderingEnabled(true);return;end;local v17=function()v13.WindowFocusReleased:Connect(v15);v13.WindowFocused:Connect(v16);return;end;v17(); 