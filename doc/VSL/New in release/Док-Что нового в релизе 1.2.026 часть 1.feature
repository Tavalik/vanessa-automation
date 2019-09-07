﻿# language: ru

@IgnoreOnCIMainBuild



Функциональность: Что нового в релизе 1.2.026

 
Контекст:
	Дано я запускаю SikuliX сервер

	
	

Сценарий: Что нового в релизе 1.2.026

	Дано текст субтитров "Привет! Я - Ванесса."
	Дано текст субтитров "В этом видео я расскажу, об основных изменениях в моём новом релизе: 1.2.026."
	
	
	#[autodoc.ignorestep]	
	*Давайте пройдёмся по файлу истории и посмотрим, что там нового.
		Дано я нажимаю хоткей "r" "win"
		И я набираю текст "code"
		Дано я нажимаю ENTER
		И я жду картинки "VSC открылся" в течение 10 секунд
		Дано я нажимаю хоткей "o" "ctrl"
		И я жду картинки "All files" в течение 10 секунд
		И я набираю текст "C:\Temp\history.md"
		И я нажимаю ENTER

		
	Дано текст субтитров "Сначала про новые возможности."
	
	#[autodoc.ignorestep]	
	И пауза 2
	
	
	//Новые возможности	
	
	//Рефакторинг интерфейса.
	И видеовставка 'Рефакторинг UI.'
	*Многие элементы интерфейса Vanessa Automation были значительно переработаны.
		Дано поиск строки в редакторе через буфер обмена 'Рефакторинг интерфейса. Спасибо @fenixnow'
	Дано текст субтитров "Были обновлены картинки, переделаны закладки, отрефакторен код и многое другое."

	
	//Сохранение настроек и чтение настроек VA из json.
	И видеовставка 'Сохранение и чтение настроек.'
	*Появилась возможность сохранить и прочитать настройки Vanessa Automation в формате json.
		Дано поиск строки в редакторе через буфер обмена 'Сохранение настроек и чтение настроек VA из json. Спасибо @fenixnow'
	Дано текст субтитров "Полученный файл настроек может быть использован для запуска тестов на CI сервере."

	
	
	//Добавлена кнопка перехода к ближайшей строке с ошибкой
	И видеовставка 'Работа с деревом шагов.'
	*Появилась возможность быстрого перехода к следующей ошибке.
		Дано поиск строки в редакторе через буфер обмена 'Добавлена кнопка перехода к ближайшей строке с ошибкой'
	Дано текст субтитров "Это полезно, когда за один запуск тестов упало несколько сценариев и нужно быстро перейти к следующей ошибке."
	И видеовставка "Спасибо Андрею Полетаеву за реализацию этих фич!"
	

	
	//Получение полного стека вызова при возникновении исключения.
	И видеовставка 'Сборка видео инструкций.'
	*Теперь при возникновении ошибки в деталях ошибки будет выведен полный стек вызова кода, если в клиенте тестирования возникло исключение.
		Дано поиск строки в редакторе через буфер обмена 'Получение полного стека вызова при возникновении исключения.'
	Дано текст субтитров "Это очень упрощает поиск проблемного модуля, который вызвал ошибку."


	
	//Получение значения всех реквизитов активной формы при возникновении ошибки.
	И видеовставка 'Состояние формы при ошибке.'
	*Появилась возможность сохранить состояние реквизитов активной формы при возникновении ошибки.
		Дано поиск строки в редакторе через буфер обмена 'Получение значения всех реквизитов активной формы при возникновении ошибки.'
	Дано текст субтитров "Это полезно, когда на скринш^оте приложенном к ошибке не видна часть реквизитов, а нужно узнать их значение."

	
	

	Дано текст субтитров "Ещё были исправлены ошибки и сделано много других полезных доработок."
	И видеовставка "Подробности, как обычно, можно найти в файле history.MD"
	
								
	Дано текст субтитров "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	#[autodoc.ignorestep]
	И я закрываю текстовый редактор
	
					