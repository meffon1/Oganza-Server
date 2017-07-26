local destination = Position(32637, 32256, 7)

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getStorageValue(50733) == 1 then
		player:teleportTo(destination)
		position:sendMagicEffect(CONST_ME_TELEPORT)
		destination:sendMagicEffect(CONST_ME_TELEPORT)
	else
		player:teleportTo(fromPosition)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
		player:sendTextMessage(MESSAGE_STATUS_SMALL, 'You not have permission to pass here.')
	end
	return true
end


