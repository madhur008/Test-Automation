describe "Login into Gmail", :type => :request do
#include_context "login"
	it "Gmail login Assignment" do
		begin
		
         visit "https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"
		 sleep 6
		 find(:xpath, "//input[@id='identifierId']").set 'madhur.sethi@metacube.com'
	     find(:xpath, "//span[@class='RveJvd snByac']").click
		 find(:xpath, "//input[@name='password']").set ''
		 find(:xpath, "//span[@class='RveJvd snByac']").click
		 find(:xpath, "//img[@class='gb_ua gb_ra gb_va']").click
		 find(:xpath, "//a[@class='gb_Jb gb_kg gb_sg gb_5e gb_5c']").click
		end
	end
end
	
