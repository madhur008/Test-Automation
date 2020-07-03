describe "Login into Salesforce", :type => :request do
#include_context "login"
	it "Salesforce login Assignment" do
		begin
		
         visit "https://test.salesforce.com/"
	     sleep 2
		 find(:xpath, "//input[@name='username']").set ''
		 find(:xpath, "//input[@id='password']").set ''
		 find(:xpath, "//input[@id='Login']").click
		 find(:xpath, "//input[@id='phSearchInput']").set 'Akshay Patel'
		 find(:xpath, "//div[@class='autoCompleteBoxScrolling']//parent::div").click
		 find(:xpath, "//span[@class='globalHeaderProfilePhoto chatter-avatarSmall chatter-avatar']").click
		 sleep 6
		 find(:xpath, "//li[@class='zen-lastItem']").click
		end
	end
end
	
