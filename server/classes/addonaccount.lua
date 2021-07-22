function CreateAddonAccount(name, owner, blackm)
	local self = {}

	self.name  = name
	self.owner = owner
	self.blackm = blackm

	self.addBlackMoney = function(m)
		self.blackm = self.blackm + m
		self.save()

		TriggerClientEvent('esx_addonaccount_blackmoney:setMoney', -1, self.name, self.blackm)
	end

	self.removeBlackMoney = function(m)
		self.blackm = self.blackm - m
		self.save()

		TriggerClientEvent('esx_addonaccount_blackmoney:setMoney', -1, self.name, self.blackm)
	end

	self.setBlackMoney = function(m)
		self.blackm = m
		self.save()

		TriggerClientEvent('esx_addonaccount_blackmoney:setMoney', -1, self.name, self.blackm)
	end

	self.save = function()
		if self.owner == nil then
			MySQL.Async.execute('UPDATE addon_account_data2 SET blackm = @blackm WHERE account_name = @account_name', {
				['@account_name'] = self.name,
				['@blackm']        = self.blackm
			})
		else
			MySQL.Async.execute('UPDATE addon_account_data2 SET blackm = @blackm WHERE account_name = @account_name AND owner = @owner', {
				['@account_name'] = self.name,
				['@blackm']        = self.blackm,
				['@owner']        = self.owner
			})
		end
	end


	return self
end