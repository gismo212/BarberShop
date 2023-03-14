#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get'/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

#ñíà÷àëà èñïîëüçóåì git clone à äàëüøå ïîñòîÿííî git pull
#git pull rîïèðîâàíèå ïî ññûëêå ôàéëû èç îíëàéí ðåïîçèòîðèÿ

get'/about' do
	@error='something  wrong!'
	erb :about
end

get '/visit' do
	erb :visit
end

post'/visit' do
	@phone=params[:number]
	@date_time=params[:datetime]
	@username=params[:username]
	@barber=params[:barber]
	@color=params[:color]

	hh={:username=>'Enter name',
	:number=>'Enter phone',
	:datetime=>'Enter date to visit'}

	hh.each do |key,value|       
		if params[key]==''       
			@error=hh[key]   
			return erb:visit 
		end
	end


	erb "You'r name:#{@username},you'r phone:#{@phone},time to visit:#{@date_time},you'barber:#{@barber},#{@color}" # возможность просмотра введенных данных сразу
end

get'/contacts' do
	erb :contacts
end

post'/contacts' do
	@mail=params[:mail]

	#info=File.open('./public/info.txt','a')
	#info.write "You'r mail:#{@mail}"
	if @mail=''
		@error="Enter mail:"
		erb :contacts
	end

	#info.close
end