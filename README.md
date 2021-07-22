Requirements :
- <a href="https://github.com/esx-framework/esx-legacy/tree/main/%5Besx_addons%5D/esx_addonaccount">esx_addonccount</a> (for sql)
- Run the sql file blackmoney.sql

This is a edited version of esx_addonaccount to allow you to use blackmoney

```lua
TriggerEvent('esx_addonaccount_blackmoney:getSharedAccount', 'society_ballas', function(account)
		xPlayer.removeAccountMoney('black_money', 1000)
		account.addBlackMoney(1000)
	end)
