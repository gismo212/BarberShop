require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'


def is_barber_exist? db, name
	db.execute('select * from Barbers where name=?', [name]).length > 0
end

def seed_db db, barbers

	barbers.each do |barber|
		if !is_barber_exist? db, barber
			db.execute'insert into Barbers(name)values (?)',[barber]
	 	end
	end
end

def get_db
	db=SQLite3::Database.new 'barbershop.db'
	db.results_as_hash=true
	return db
end

before do
	db=get_db
	@barbers=db.execute 'select *from Barbers'	
end

configure do
	db = get_db
	db.execute 'CREATE TABLE IF NOT EXISTS "Users"
	(
	"id" INTEGER PRIMARY KEY AUTOINCREMENT,
	 "username" TEXT,
	  "phone" TEXT,
	  "datastamp" TEXT,
	  "barber" TEXT,
	  "color" TEXT)'

	db.execute 'CREATE TABLE IF NOT EXISTS 
	"Barbers"
	(
	"id" INTEGER PRIMARY KEY AUTOINCREMENT,
	 "name" TEXT
	)'

	seed_db db,['Peter','Jerry','Gus','Mike']
end


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
	@datetime=params[:datetime]
	@username=params[:username]
	@barber=params[:barber]
	@color=params[:color]

	hh={:username=>'Enter name',
	:datetime=>'Enter date to visit',
	:number=>'Enter phone'}

	hh.each do |key,value|       
		if params[key]==''       
			@error=hh[key]   
			return erb:visit 
		end
	end

	db = get_db
	db.execute 'INSERT INTO Users (username, phone, datastamp, barber, color) VALUES (?, ?, ?, ?, ?)', [@username, @phone, @datetime, @barber, @color]


	erb "<h2>Спасибо,вы записаны</h2>" 
end

get'/contacts' do
	erb :contacts
end

post'/contacts' do
	@mail=params[:mail]

	if @mail==''
		@error="Enter mail:"
		erb :contacts
	end

end


get '/showusers' do
	db=get_db
	@results=db.execute'select * from Users order by id'
	erb:showusers
end