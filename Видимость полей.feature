﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
    И Я подключаю клиент тестирования "ФедоровБМ" из таблицы клиентов тестирования
	И я закрываю все окна клиентского приложения
	
Сценарий: <описание сценария>
И В командном интерфейсе я выбираю 'Главное' 'Партнеры'
Тогда открылось окно 'Партнеры'
И в таблице "Список" я нажимаю на кнопку с именем 'ФормаСоздать'
Когда открылось окно 'Помощник регистрации нового партнера'
И я меняю значение переключателя с именем 'ЭтоКомпания' на 'Частное лицо'
И элемент формы с именем 'ФамилияПартнера' присутствует  на форме  
Если элемент "КодПоОКПО" не доступен для редактирования Тогда
И элемент формы с именем "КодПоОКПО" присутствует на форме






