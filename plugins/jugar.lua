-- Invite other user to the chat group.
-- Use !invite name User_name or !invite id id_number
-- The User_name is the print_name (there are no spaces but _)

-- Comienza la partida cuando le mandan un privado al bot
-- Use jugar interestelegram 



do

local function run(msg, matches)

	if msg.to.type == 'user' and msg.to.phone == '12062225287' then
		create_group_chat('nave' , msg.from.print_name)
	end

  	print ("create new game: nave")
	if not status then
		return "An error happened"
	end
	return "New game"
end

return {
    description = "create new game", 
    usage = {
      "jugar interestelegram"
    patterns = {
      "^jugar interestelegram$"
    }, 
    run = run 
}

end