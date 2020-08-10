﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Работа с кнопками Вырезать, Копировать, Вставить.

    Как разработчик
    Я хочу чтобы в редакторе корректно работали кнопки работы с буфером обмена
    Чтобы я мог использовать буфер обмена

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'




Сценарий: Работа с кнопками Вырезать, Копировать, Вставить.

	Если версия платформы ">=" "8.3.16.1502" Тогда
	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		* Заполняем текст редактора
			И я перехожу к закладке с именем "ГруппаСлужебная"
			И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"

			И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
				|'Текст = "111" + Символы.ПС + "222" + Символы.ПС + "333";'|
				|'VanessaEditor.setContent(Текст);'|
			И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
			И Пауза 1
		
		* Выделяем 111 в первой строке
			И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
				|'VanessaEditor.setSelection(1,1,1,4);'|
			И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
			И Пауза 1
		
		* Нажимаем на кнопку Вырезать
			И я перехожу к закладке с именем "ГруппаЗапускТестов"
			И я нажимаю на кнопку с именем 'VanessaEditorClipboardCut'
			И Пауза 1

		* Проверяем, что текст стал корректным
			И я перехожу к закладке с именем "ГруппаСлужебная"
			И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
			И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
				|'Текст = СокрЛП(VanessaEditor.getContent());'|
				|'ПроверитьРавенство(Текст, "222" + Символы.ПС + "333")'|
			И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
			И Пауза 1
			Тогда не появилось окно предупреждения системы
		
		* Нажимаем на кнопку Вставить
			И я перехожу к закладке с именем "ГруппаЗапускТестов"
			И я перехожу к закладке с именем "СтраницыДляОтображенияДереваИРедактора"
			И я нажимаю на кнопку с именем 'VanessaEditorClipboardPaste'
			И я перехожу к закладке с именем "ГруппаСлужебная"

		* Проверяем, что текст стал корректным
			И я перехожу к закладке с именем "ГруппаСлужебная"
			И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
			И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
				|'Текст = СокрЛП(VanessaEditor.getContent());'|
				|'ПроверитьРавенство(Текст, "111" + Символы.ПС + "222" + Символы.ПС + "333")'|
			И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
			И Пауза 1
			Тогда не появилось окно предупреждения системы



		* Выделяем 222 во второй строке
			И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
				|'VanessaEditor.setSelection(2,1,2,4);'|
			И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
			И Пауза 1

		* Копируем выделенный фрагмент
			И я перехожу к закладке с именем "ГруппаЗапускТестов"
			И я перехожу к закладке с именем "СтраницыДляОтображенияДереваИРедактора"
			И я нажимаю на кнопку с именем 'VanessaEditorClipboardCopy'
			И Пауза 1

			И я нажимаю на кнопку с именем 'VanessaEditorClipboardPaste'
			И я нажимаю на кнопку с именем 'VanessaEditorClipboardPaste'
			И Пауза 1

		* Проверяем, что текст стал корректным
			И я перехожу к закладке с именем "ГруппаСлужебная"
			И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
			И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 
				|'Текст = СокрЛП(VanessaEditor.getContent());'|
				|'ПроверитьРавенство(Текст, "111" + Символы.ПС + "222222" + Символы.ПС + "333")'|
			И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
			И Пауза 1
			Тогда не появилось окно предупреждения системы

