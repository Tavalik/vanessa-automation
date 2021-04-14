﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебная часть
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯУстановилСпециальнуюСлужебнуюЭкспортнуюПеременнуюСлужебнаяПеременнаяУОткрытогоVanessaBehavoirРавной(Парам01)","ЯУстановилСпециальнуюСлужебнуюЭкспортнуюПеременнуюСлужебнаяПеременнаяУОткрытогоVanessaBehavoirРавной","И я установил специальную служебную экспортную переменную СлужебнаяПеременная у открытого VanessaBehavoir равной 0","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреЯУстановилФлагВ(Парам01,Парам02)","ВТестируемомЭкземпляреЯУстановилФлагВ","И в тестируемом экземпляре я установил флаг ""ВыполнятьШагиАссинхронно"" в ""Ложь""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреЯУстановилТекущуюСтрокуДерева(Парам01)","ВТестируемомЭкземпляреЯУстановилТекущуюСтрокуДерева","И в тестируемом экземпляре я установил текущую строку дерева 15","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреВПеременнойКонтекстСохраняемыйЗначениеСлужебнойПеременнойРавно(Парам01)","ВТестируемомЭкземпляреВПеременнойКонтекстСохраняемыйЗначениеСлужебнойПеременнойРавно","И в тестируемом экземпляре в переменной КонтекстСохраняемый значение служебной переменной равно 4","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреЯВыполнилКомандуУстановитьБрейкпоинт()","ВТестируемомЭкземпляреЯВыполнилКомандуУстановитьБрейкпоинт","И в тестируемом экземпляре я выполнил команду установить брейкпоинт","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВФормеОткрытогоVanessaBehavoirЯУстановилФлагОбъекта(Парам01)","ВФормеОткрытогоVanessaBehavoirЯУстановилФлагОбъекта","И в форме открытого VanessaBehavoir я установил флаг объекта ""СохранятьКонтекстыПередВыполнениемШагов""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВФормеОткрытогоVanessaBehavoirЯУстановилВторомуШагуПервогоСценарияФлаг(Парам01)","ВФормеОткрытогоVanessaBehavoirЯУстановилВторомуШагуПервогоСценарияФлаг","И в форме открытого VanessaBehavoir я установил второму шагу первого сценария флаг ""ВыполнятьСценарийСЭтогоШага""","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЗначениеСлужебнойЭкспортнойПеременнойУОткрытогоVanessaBehavoirРавно(Парам01)","ЗначениеСлужебнойЭкспортнойПеременнойУОткрытогоVanessaBehavoirРавно","И значение служебной экспортной переменной у открытого VanessaBehavoir равно 5","","");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуКогдаВТестируемомЭкземпляреРеквизитФормыБудетРавенВТечениеСекунд(Парам01,Парам02,Парам03)","ЯЖдуКогдаВТестируемомЭкземпляреРеквизитФормыБудетРавенВТечениеСекунд","И я жду когда в тестируемом экземпляре реквизит формы ""ФлагСценарииВыполнены"" будет равен ""Истина"" в течение 30 секунд","","");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	Сообщить("ВыполнитьСценарийСВыбранногоШага.ПередНачаломСценария");
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
	
	КонецПопытки;
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//И в форме открытого VanessaBehavoir я установил флаг объекта "СохранятьКонтекстыПередВыполнениемШагов"
//@ВФормеОткрытогоVanessaBehavoirЯУстановилФлагОбъекта(Парам01)
Процедура ВФормеОткрытогоVanessaBehavoirЯУстановилФлагОбъекта(ИмяФлага) Экспорт
	Контекст.ОткрытаяФормаVanessaBehavoir.Объект.СохранятьКонтекстыПередВыполнениемШагов = Истина;
КонецПроцедуры


&НаКлиенте
//И в форме открытого VanessaBehavoir я установил второму шагу первого сценария флаг "ВыполнятьСценарийСЭтогоШага"
//@ВФормеОткрытогоVanessaBehavoirЯУстановилВторомуШагуПервогоСценарияФлаг(Парам01)
Процедура ВФормеОткрытогоVanessaBehavoirЯУстановилВторомуШагуПервогоСценарияФлаг(ИмяПараметра) Экспорт
	СтрокиДерева = Контекст.ОткрытаяФормаVanessaBehavoir.Объект.ДеревоТестов.ПолучитьЭлементы();
	СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//фича
	СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//сценарий
	СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//шаги
	
	Контекст.ОткрытаяФормаVanessaBehavoir.Элементы.ДеревоТестов.ТекущаяСтрока = СтрокиДерева[1].ПолучитьИдентификатор();
	Контекст.ОткрытаяФормаVanessaBehavoir.ПроцУстановитьПометкуВыполнятьСценарийСЭтогоШага();
	//СтрокиДерева[1][ИмяПараметра] = Истина;
	//Сообщить("СтрокиДерева.Количество() = " + СтрокиДерева.Количество());
КонецПроцедуры

&НаКлиенте
//И в тестируемом экземпляре в переменной КонтекстСохраняемый значение служебной переменной равно 5
//@ВТестируемомЭкземпляреВПеременнойКонтекстСохраняемыйЗначениеСлужебнойПеременнойРавно(Парам01)
Процедура ВТестируемомЭкземпляреВПеременнойКонтекстСохраняемыйЗначениеСлужебнойПеременнойРавно(Зн) Экспорт
	Ванесса.ПроверитьРавенство(Контекст.ОткрытаяФормаVanessaBehavoir.ПолучитьКонтекстСохраняемый().СлужебныйПараметр,Зн,"Неверное значение служебной переменной в КонтекстСохраняемый.");
КонецПроцедуры


&НаКлиенте
//И я установил специальную служебную экспортную переменную СлужебнаяПеременная у открытого VanessaBehavoir равной 0
//@ЯУстановилСпециальнуюСлужебнуюЭкспортнуюПеременнуюСлужебнаяПеременнаяУОткрытогоVanessaBehavoirРавной(Парам01)
Процедура ЯУстановилСпециальнуюСлужебнуюЭкспортнуюПеременнуюСлужебнаяПеременнаяУОткрытогоVanessaBehavoirРавной(Зн) Экспорт
	Контекст.ОткрытаяФормаVanessaBehavoir.СлужебнаяПеременная = 0;
КонецПроцедуры

&НаКлиенте
//И значение служебной экспортной переменной у открытого VanessaBehavoir равно 5
//@ЗначениеСлужебнойЭкспортнойПеременнойУОткрытогоVanessaBehavoirРавно(Парам01)
Процедура ЗначениеСлужебнойЭкспортнойПеременнойУОткрытогоVanessaBehavoirРавно(Зн) Экспорт
	Ванесса.ПроверитьРавенство(Контекст.ОткрытаяФормаVanessaBehavoir.СлужебнаяПеременная,Зн,"Неверное значение служебной экспортной переменной.");
КонецПроцедуры

&НаКлиенте
Процедура ПолучитьМассивИДРекурсивно(МассивИД,СтрокиДерева)
	Для Каждого СтрокаДерева Из СтрокиДерева Цикл
		МассивИД.Добавить(СтрокаДерева);
		ПолучитьМассивИДРекурсивно(МассивИД,СтрокаДерева.ПолучитьЭлементы())
	КонецЦикла;	
КонецПроцедуры

&НаКлиенте
//И в тестируемом экземпляре я установил текущую строку дерева 4
//@ВТестируемомЭкземпляреЯУстановилТекущуюСтрокуДерева(Парам01)
Процедура ВТестируемомЭкземпляреЯУстановилТекущуюСтрокуДерева(НомерСтроки) Экспорт
	МассивИД = Новый Массив;
	ПолучитьМассивИДРекурсивно(МассивИД,Контекст.ОткрытаяФормаVanessaBehavoir.Объект.ДеревоТестов.ПолучитьЭлементы());
	//СтрокиДерева = Контекст.ОткрытаяФормаVanessaBehavoir.Объект.ДеревоТестов.ПолучитьЭлементы();
	//СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//фича
	//СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//сценарий
	//СтрокиДерева = СтрокиДерева[0].ПолучитьЭлементы();//шаги
	//
	Контекст.ОткрытаяФормаVanessaBehavoir.Элементы.ДеревоТестов.ТекущаяСтрока = МассивИД[НомерСтроки-1].ПолучитьИдентификатор();
КонецПроцедуры

&НаКлиенте
//И в тестируемом экземпляре я выполнил команду установить брейкпоинт
//@ВТестируемомЭкземпляреЯВыполнилКомандуУстановитьБрейкпоинт()
Процедура ВТестируемомЭкземпляреЯВыполнилКомандуУстановитьБрейкпоинт() Экспорт
	Контекст.ОткрытаяФормаVanessaBehavoir.ОбработатьУстановкуСнятиеБрейкпоинта();
КонецПроцедуры

&НаКлиенте
//И в тестируемом экземпляре я установил флаг "ВыполнятьШагиАссинхронно" в "Ложь"
//@ВТестируемомЭкземпляреЯУстановилФлагВ(Парам01,Парам02)
Процедура ВТестируемомЭкземпляреЯУстановилФлагВ(ИмяПараметра,ЗначениеПараметра) Экспорт
	ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	Выполнить("ОткрытаяФормаVanessaBehavoir.Объект." + ИмяПараметра + " = " + ЗначениеПараметра);
КонецПроцедуры

&НаКлиенте
Процедура ОбработичкЯЖдуКогдаВТестируемомЭкземпляреРеквизитФормыБудетРавенВТечениеСекунд()
	ИмяОбработчика = "ОбработичкЯЖдуКогдаВТестируемомЭкземпляреРеквизитФормыБудетРавенВТечениеСекунд";
	
	Если НЕ Ванесса.ИдетВыполнениеСценариев() Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Возврат;
	КонецЕсли;
	
	ТекЗначение = Строка(Контекст.ОткрытаяФормаVanessaBehavoir[ИмяПоляОбработкаОжидания]);
	Если НРег(ТекЗначение) = НРег(ЗначениеОбрабткаОжидания) Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Ванесса.ПродолжитьВыполнениеШагов();
		Возврат;
	КонецЕсли;	 
	
	Если (ТекущаяДата() - ДатаНачалаОбработкиОжидания) > КоличествоСекундОбработкаОжидания Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Ожидали в течение <%1> секунд, что в тестируемом окне Vanessa-automation будут выполнены сценарии.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",КоличествоСекундОбработкаОжидания);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ТекстСообщения);
		Возврат;
	КонецЕсли;	 
	
КонецПроцедуры 

&НаКлиенте
//И я жду когда в тестируемом экземпляре реквизит формы "ФлагСценарииВыполнены" будет равен "Истина" в течение 30 секунд
//@ЯЖдуКогдаВТестируемомЭкземпляреРеквизитФормыБудетРавенВТечениеСекунд(Парам01,Парам02,Парам03)
Процедура ЯЖдуКогдаВТестируемомЭкземпляреРеквизитФормыБудетРавенВТечениеСекунд(ИмяРеквизита,ЗначениеСтрока,КолСекунд) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	ДатаНачалаОбработкиОжидания       = ТекущаяДата();
	ИмяПоляОбработкаОжидания          = ИмяРеквизита;
	КоличествоСекундОбработкаОжидания = КолСекунд;
	ЗначениеОбрабткаОжидания          = ЗначениеСтрока;
	ПодключитьОбработчикОжидания("ОбработичкЯЖдуКогдаВТестируемомЭкземпляреРеквизитФормыБудетРавенВТечениеСекунд",1,Ложь);
КонецПроцедуры
