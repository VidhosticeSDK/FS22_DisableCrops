FieldJob = {
	debug = true
}

function FieldJob:loadMap(savegame)
	for name, fruitType in pairs(g_fruitTypeManager.nameToFruitType) do
		if name == "CARROT" or name == "PARSNIP" or name == "BEETROOT" then
			fruitType.useForFieldJob = false
			if FieldJob.debug  then
				Logging.info("Debug: %s > useForFieldJob = false", name)
			end
		end
	end
end

addModEventListener(FieldJob)
print("FS22_disableFieldJob 1.0.0.0 loaded.")
