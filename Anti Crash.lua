--Pu This In AutoExec

repeat task.wait() until game:IsLoaded()
Workspace.DescendantRemoving:Connect(function(inst)
if inst:IsA("Motor6D") then
local Model = inst.Parent.Parent
if Model:IsA("Model") and Model:FindFirstChildOfClass("Humanoid") then
for i,v in pairs(Model:GetChildren()) do
if v:IsA("Accessory") and v:FindFirstChild("Handle") then
local Cheque = v.Handle:FindFirstChildOfClass("WrapLayer")
if Cheque then
v:Destroy()
print("Destroyed possible crash attempt.")
end
end
end
end
end
end)

for i,part in pairs(workspace:GetDescendants()) do
if part:IsA("BaseWrap") and part.Parent.Name == "Handle" then
part.Parent.Parent:destroy()
  end
  end

workspace.DescendantAdded:Connect(
  function(part)
if part:IsA("BaseWrap") and part.Parent.Name == "Handle" then
part.Parent.Parent:destroy()
  end
  end
)
workspace.FallenPartsDestroyHeight = 0/0
wait(1)
