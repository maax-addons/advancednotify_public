////////////////////////////////////////
//       Advanced Notifications       //
//          Coded by: Maax            //
//                                    //
//      Version: v1.0 (GitHub)        //
//                                    //
//      You are not permitted to      //
//        reupload this Script!       //
//                                    //
////////////////////////////////////////

--[[
  
  File: cl_handler.lua

]]--

local function CheckVersion()


	http.Fetch("https://development.digital-gaming.eu/addons/adn/version.txt",
		
		-- onSuccess function
		function( body, length, headers, code )
			-- The first argument is the HTML we asked for.
			if body != AdvancedNotify.Verison then 
                 AdvancedNotify.Print("Addon is up to date!")
			else
                 AdvancedNotify.Print("A new version of the addon is available! Please update this installation.")
			end
		end,

		-- onFailure function
		function( message )
			-- We failed. =(
			print( message )
		end,

		-- header example
		{ 
			["accept-encoding"] = "gzip, deflate",
			["accept-language"] = "fr" 
		}
	)

end


concommand.Add("checkup_version", CheckVersion())
