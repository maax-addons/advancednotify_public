////////////////////////////////////////
//       w Notifications       //
//          Coded by: Maax            //
//                                    //
//      Version: v1.0 (Workshop)      //
//                                    //
//      You are not permitted to      //
//        reupload this Script!       //
//                                    //
////////////////////////////////////////

--[[
  
  File: cl_handler.lua

]]--

local function CheckVersion()


	http.Fetch("https://raw.githubusercontent.com/maax-addons/advancednotify_public/main/version.txt",
		
		-- onSuccess function
		function( body, length, headers, code )
			-- The first argument is the HTML we asked for.
			if body == AdvancedNotify.Verison then 
                 return end
			else 
			    if !AdvancedNotify.ConfigNotifyOnUpdate then return end
			    timer.Create("AdvancedNotify.UpdateAddon", 20, 4000*4000, function() 
				     AdvancedNotify.Print("A new version of the addon is available! Please update this installation.")
					 AdvancedNotify:ChatPrint(Color(255,0,0), "Update", "A new version of the addon is available! Please update!") 
				end)
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

		end
	)

end


concommand.Add("checkup_version", CheckVersion())
