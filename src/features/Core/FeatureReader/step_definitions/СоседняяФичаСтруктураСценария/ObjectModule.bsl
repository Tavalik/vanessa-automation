﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////


// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 

// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 

// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;


// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСтруктуреСценарияЕстьШагСПараметромИЗначением(Параметр,Значение)","ВСтруктуреСценарияЕстьШагСПараметромИЗначением","И в структуре сценария есть шаг с параметром <Параметр> и значением <Значение>","","");

	Возврат ВсеТесты;
КонецФункции
	

// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	Возврат ПолучитьМакет(ИмяМакета);
КонецФункции
	

// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////


// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры


// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////


//И в структуре сценария есть шаг с параметром <Параметр> и значением <Значение>
//@ВСтруктуреСценарияЕстьШагСПараметромИЗначением(Параметр,Значение)
Процедура ВСтруктуреСценарияЕстьШагСПараметромИЗначением(Параметр,Значение) Экспорт
	Если Не КонтекстСохраняемый.Свойство("СлужебнаяПеременная") Тогда
		КонтекстСохраняемый.Вставить("СлужебнаяПеременная",0);
	КонецЕсли;	 
	КонтекстСохраняемый.СлужебнаяПеременная = КонтекстСохраняемый.СлужебнаяПеременная + Значение;
КонецПроцедуры

//окончание текста модуля  