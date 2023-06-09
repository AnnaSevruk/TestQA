﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Экспортные сценарии

Как Тестировщик я хочу
иметь экспортные сценарии
чтобы было проще писать и поддерживать тесты  

Контекст:
	И Я подключаю клиент тестирования "УП Администратор" из таблицы клиентов тестирования
	И я закрываю все окна клиентского приложения

Сценарий: Я создаю вид цен"ТекИмя"
*Удаление элемента
	И В командном интерфейсе я выбираю 'Товарные запасы' 'Виды цен'
	Тогда открылось окно 'Виды цен'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И в поле с именем 'Pattern' я ввожу текст '[ТекИмя]'
	И я нажимаю на кнопку с именем 'Find'
	И Пауза 1
	Тогда открылось окно 'Виды цен'
	И пока в таблице "Список" количество строк ">" 0 Тогда
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно '[ТекИмя] (Вид цены)'
		И в поле с именем 'Наименование' я ввожу текст 'УдалитьТестовая'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна '[ТекИмя] (Вид цены) *' в течение 20 секунд
 *Создание элемента
	И В командном интерфейсе я выбираю 'Товарные запасы' 'Виды цен'
	Тогда открылось окно 'Виды цен'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Вид цены (создание)'
	И в поле с именем 'Наименование' я ввожу текст '[ТекИмя]'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Вид цены (создание) *' в течение 20 секунд
 *Проверить заполнение
    Когда открылось окно 'Виды цен'
	И в таблице "Список" я выбираю текущую строку
	И элемент формы с именем "Наименование" стал равен '[ТекИмя]'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна '[ТекИмя] (Вид цены)' в течение 20 секунд


Сценарий: СозданиеКонтрагента "ТекИмя", вид цен = "ТекВидЦен"

 * Удаление элемента
	И В командном интерфейсе я выбираю 'Главное' 'Контрагенты'
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И в поле с именем 'Pattern' я ввожу текст '[ТекИмя]'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Контрагенты'
	И пока в таблице "Список" количество строк ">" 0 Тогда
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно '[ТекИмя] (Контрагент)'
		И в поле с именем 'Наименование' я ввожу текст 'Удалить'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна '[ТекИмя] (Контрагент) *' в течение 20 секунд
 * Создание элемента
	И В командном интерфейсе я выбираю 'Главное' 'Контрагенты'
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Контрагент (создание)'
	И в поле с именем 'Наименование' я ввожу текст '[ТекИмя]'
	И я нажимаю кнопку выбора у поля с именем "ВидЦен"
	И из выпадающего списка с именем "ВидЦен" я выбираю по строке '[ТекВидЦен]'
	И я перехожу к следующему реквизиту
	И в поле с именем 'ДополнительнаяИнформация' я ввожу текст 'Это доп инфа'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Контрагент (создание) *' в течение 20 секунд
 * Проверка элемента	
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я выбираю текущую строку
	И элемент формы с именем "ВидЦен" стал равен '[ТекВидЦен]'
	И элемент формы с именем "Город" стал равен ''
	И элемент формы с именем "Долгота" стал равен '0'
	И элемент формы с именем "Дом" стал равен ''
	И элемент формы с именем "ДополнительнаяИнформация" стал равен 'Это доп инфа'
	И элемент формы с именем "Индекс" стал равен ''
	И элемент формы с именем "КонтактноеЛицо" стал равен ''
	И элемент формы с именем "Наименование" стал равен '[ТекИмя]'
	И элемент формы с именем "Регион" стал равен ''
	И элемент формы с именем "Родитель" стал равен ''
	И элемент формы с именем "Страна" стал равен ''
	И элемент формы с именем "Телефон" стал равен ''
	И элемент формы с именем "Улица" стал равен ''
	И элемент формы с именем "Факс" стал равен ''
	И элемент формы с именем "Широта" стал равен '0'
	И элемент формы с именем "ЭлектроннаяПочта" стал равен ''
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна '[ТекИмя] (Контрагент)' в течение 20 секунд
	
Сценарий: СозданиеНоменклатуры "ТекИмя", артикул = "ТекАртикул", поставщик = "ТекПоставщик", вес = "ТекВес", вид = "ТекВид"
 * Удаление
	И В командном интерфейсе я выбираю 'Главное' 'Товары'
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И в поле с именем 'Pattern' я ввожу текст '[ТекИмя]'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Товары'
	И пока в таблице "Список" количество строк ">" 0 Тогда
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно '[ТекИмя] (Товар)'
		И в поле с именем 'Наименование' я ввожу текст 'Удалить'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна '[ТекИмя] (Товар) *' в течение 20 секунд 
 * Создание
	И В командном интерфейсе я выбираю 'Главное' 'Товары'
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Товар (создание)'
	И в поле с именем 'Наименование' я ввожу текст '[ТекИмя]'
	Когда открылось окно 'Товар (создание)'
	Если '"[ТекВид]" = "Товар"' Тогда
   	    И в поле с именем 'Артикул' я ввожу текст '[ТекАртикул]'
		И из выпадающего списка с именем "Поставщик" я выбираю по строке '[ТекПоставщик]'
	Если '"[ТекВид]" = "Услуга"' Тогда	
		И я меняю значение переключателя с именем 'Вид' на 'Услуга'
		И я жду недоступности элемента с именем "Артикул" в течение 20 секунд
		И я жду недоступности элемента с именем "Поставщик" в течение 20 секунд	
	И я перехожу к следующему реквизиту
	И в поле с именем 'ВТ_Вес' я ввожу текст '[100]'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля с именем "Код" как "КодНоменклатуры"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Товар (создание) *' в течение 20 секунд	
 * Проверка	
    Тогда открылось окно 'Товары'
	И в таблице "Список" я выбираю текущую строку
	Тогда элемент формы с именем "Родитель" стал равен ''
	И элемент формы с именем "Наименование" стал равен '[ТекИмя]'
	Если '"[ТекВид]" = "Товар"' Тогда
		И элемент формы с именем "Вид" стал равен 'Товар'
		И элемент формы с именем 'Артикул' стал равен '[ТекАртикул]'
		И элемент формы с именем "Поставщик" стал равен '[ТекПоставщик]'
    Если '"[ТекВид]" = "Услуга"' Тогда
		И элемент формы с именем "Вид" стал равен 'Услуга'
		И элемент формы с именем 'Артикул' стал равен ''
		И элемент формы с именем "Поставщик" стал равен ''
	И элемент формы с именем "ВТ_Вес" стал равен '100,000'
	И элемент формы с именем "Описание" стал равен ''
	И элемент формы с именем "РедактируемоеОписание" стал равен ''
	И элемент формы с именем "Родитель" стал равен ''
	И элемент формы с именем "ФайлКартинки" стал равен ''
	И элемент формы с именем "ШтрихКод" стал равен ''
	И поле с именем "Код" равно переменной "КодНоменклатуры"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна '[ТекИмя] (Товар)' в течение 20 секунд

Сценарий: Я создаю склад "ТекИмя"
*Удаление элемента
	И В командном интерфейсе я выбираю 'Товарные запасы' 'Склады'
	Тогда открылось окно 'Склады'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И в поле с именем 'Pattern' я ввожу текст '[ТекИмя]'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Склады'
	И пока в таблице "Список" количество строк ">" 0 Тогда
			И в таблице "Список" я выбираю текущую строку
			Тогда открылось окно '[ТекИмя] (Склад)'
			И в поле с именем 'Наименование' я ввожу текст 'УдалитьТестовая'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна '[ТекИмя] (Склад) *' в течение 20 секунд
 *Создание элемента
	И В командном интерфейсе я выбираю 'Товарные запасы' 'Склады'
	Тогда открылось окно 'Склады'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Склад (создание)'
	И в поле с именем 'Наименование' я ввожу текст '[ТекИмя]'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Склад (создание) *' в течение 20 секунд
 *Проверить заполнение
    Когда открылось окно 'Склады'
	И в таблице "Список" я выбираю текущую строку
	И элемент формы с именем "Наименование" стал равен '[ТекИмя]'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна '[ТекИмя] (Склад)' в течение 20 секунд


Сценарий: Я создаю Организацию "ТекИмя"
*Удаление элемента
	И В командном интерфейсе я выбираю 'Предприятие' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И в поле с именем 'Pattern' я ввожу текст '[ТекИмя]'
	И я нажимаю на кнопку с именем 'Find'
	Тогда открылось окно 'Организации'
	И пока в таблице "Список" количество строк ">" 0 Тогда
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно '[ТекИмя] (Организация)'
		И в поле с именем 'Наименование' я ввожу текст 'УдалитьТестовая'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна '[ТекИмя] (Организация) *' в течение 20 секунд
 *Создание элемента
	И В командном интерфейсе я выбираю 'Предприятие' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Организация (создание)'
	И в поле с именем 'Наименование' я ввожу текст '[ТекИмя]'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Организация (создание) *' в течение 20 секунд
 *Проверить заполнение
    Когда открылось окно 'Организации'
	И в таблице "Список" я выбираю текущую строку
	И элемент формы с именем "Наименование" стал равен '[ТекИмя]'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна '[ТекИмя] (Организация)' в течение 20 секунд