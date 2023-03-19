отличие varchar от text в том что в первом можно задать длинну varchar(22)


  <div class="mb-3">
    <label>You'r barber </label>
   <select name="barber"class="form-select">
    <option <%=@barber=='Peter'? 'selected':''%> >Peter</option>
    <option <%=@barber=='Jerry'? 'selected':''%> >Jerry</option>
    <option   <%=@barber=='Gus'? 'selected':''(здесь происходит вычесление)%> >Gus</option>  значения будут приниматся по умолчанию
   </select>
  </div>




Такой способ записи будем применять для создания базы данных и таблиц в ней при инициализации приложения:
CREATE TABLE IF NOT EXISTS "Users" ("Id" INTEGER PRIMARY KEY AUTOINCREMENT, "Username" TEXT, "Phone" TEXT);





 Sinatra есть специальная команда, которая запускается при инициализации приложения:
configure do
  # some code
end


подключение sqlite  require "sqlite3"


  # создание таблицы
configure do
	@db=SQlite3::Database.new 'barbershop.db'
	@db.execute"CREATE TABLE IF NOT EXISTS 
	"Users"
	("Id" INTEGER PRIMARY KEY AUTOINCREMENT,
	 "Username" TEXT, "Phone" TEXT,"datastamp" TEXT,"barber" TEXT,"color" TEXT);"
end


html teg <table> 

 	и подтэг <tr>
		<td>


		</td>-тег столбца(столбец ) 



	</tr>(строка) в таблице мы создаем строчку   

	когда мы создаем несколько строк у нас должно быть одинаковое кол-во столбцов


<%= /%> -данный синтаксис означает  что нужно вывести в место указанное на странице результат выражения
<% %>-если знак равно не стоит значит ,результат выражения не будет выводится но выражение будет исполнено



 </table>





sqlite> SELECT * FROM COMPANY ORDER BY NAME, SALARY ASC; # вывод таблицы в парядке убывания
