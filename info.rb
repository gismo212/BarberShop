������� varchar �� text � ��� ��� � ������ ����� ������ ������ varchar(22)


  <div class="mb-3">
    <label>You'r barber </label>
   <select name="barber"class="form-select">
    <option <%=@barber=='Peter'? 'selected':''%> >Peter</option>
    <option <%=@barber=='Jerry'? 'selected':''%> >Jerry</option>
    <option   <%=@barber=='Gus'? 'selected':''(����� ���������� ����������)%> >Gus</option>  �������� ����� ���������� �� ���������
   </select>
  </div>




����� ������ ������ ����� ��������� ��� �������� ���� ������ � ������ � ��� ��� ������������� ����������:
CREATE TABLE IF NOT EXISTS "Users" ("Id" INTEGER PRIMARY KEY AUTOINCREMENT, "Username" TEXT, "Phone" TEXT);





 Sinatra ���� ����������� �������, ������� ����������� ��� ������������� ����������:
configure do
  # some code
end


����������� sqlite  require "sqlite3"


  # �������� �������
configure do
	@db=SQlite3::Database.new 'barbershop.db'
	@db.execute"CREATE TABLE IF NOT EXISTS 
	"Users"
	("Id" INTEGER PRIMARY KEY AUTOINCREMENT,
	 "Username" TEXT, "Phone" TEXT,"datastamp" TEXT,"barber" TEXT,"color" TEXT);"
end


html teg <table> 

 	� ������ <tr>
		<td>


		</td>-��� �������(������� ) 



	</tr>(������) � ������� �� ������� �������   

	����� �� ������� ��������� ����� � ��� ������ ���� ���������� ���-�� ��������


<%= /%> -������ ��������� ��������  ��� ����� ������� � ����� ��������� �� �������� ��������� ���������
<% %>-���� ���� ����� �� ����� ������ ,��������� ��������� �� ����� ��������� �� ��������� ����� ���������



 </table>





sqlite> SELECT * FROM COMPANY ORDER BY NAME, SALARY ASC; # ����� ������� � ������� ��������



���������� ��������� ���� 
<table
	<head>
		<tr>
			<th> </th>
		        <th> </th>
			<th> </th>

		</tr

	</head>




seed_db - seed ����������� ��������� - ���������

������� �������� (���� ������).
��������� ��������, ����� ������ ���� ������ ������ ��������� � ������� ����.

to keep up to date - ������� � ���������� ���������

����� �� ������ � ����������� �����.

������ ����� ��������� ���������� � ��������. ���� ����������� �� ����������� ����.

��������� before (� sinatra) - ��������� ��� ����� �������� - ����� �������� �� ���� ��������������(view)
before do
  # some code
end
	<tbody>



����� configure ���������� ��� ������������ ���������� (���� ���������� ���������� )

	</tbody>


</table>



������ �������� ������ ������� ����� configure db.execute 'CREATE TABLE IF NOT EXISTS "Barbers"
	(
	"id" INTEGER PRIMARY KEY AUTOINCREMENT,
	 "name" TEXT)'
���!!



hardcoded ������ ������



