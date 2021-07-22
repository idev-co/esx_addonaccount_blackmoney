Requirements :
- <a href="https://github.com/esx-framework/esx-legacy/tree/main/%5Besx_addons%5D/esx_addonaccount">esx_addonccount</a> (for sql)

This is a edited version of esx_addonaccount to allow you to use blackmoney

```lua
TriggerEvent('esx_addonaccount_blackmoney:getSharedAccount', society.account, function(account)
		xPlayer.removeAccountMoney('black_money', amount)
		account.addBlackMoney(amount)
	end)
