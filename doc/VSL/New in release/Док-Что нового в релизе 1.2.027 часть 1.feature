﻿# language: ru

@IgnoreOnCIMainBuild



Функциональность: Что нового в релизе 1.2.027

 
Контекст:
	Дано я запускаю SikuliX сервер

	
	

Сценарий: Что нового в релизе 1.2.027

	Дано текст субтитров "Привет! Я - Ванесса."
	Дано текст субтитров "В этом видео я расскажу, об основных изменениях в моём новом релизе: 1.2.027."
	
	
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
	
	//Сбор замеров производительности.
	И видеовставка 'Сбор замеров производительности.'
	*Появилась возможность автоматизировать сборы замеров производительности и подключения клиента тестирования в режиме отладки.
		Дано поиск строки в редакторе через буфер обмена 'Включение/Выключение замеров производительности'
		Дано поиск строки в редакторе через буфер обмена 'Запуск клиента тестирования в режиме отладки'
	Дано текст субтитров "Эта фича нужна для расчета покрытия кода тестами."
	И видеовставка "Спасибо Алексею Сосновому за реализацию этих фич!"

	
	//Озвучка от Amazon.
	И видеовставка 'Озвучка от Amazon.'
	*Появилась возможность озвучивать сценарии с помощью сервисов от компании Amazon.
		Дано поиск строки в редакторе через буфер обмена 'Добавлена озвучка текста от Amazon.'
	Дано текст субтитров "Теперь стало возможным получать качественный голос диктора не только на русском языке."
	И видеовставка "We are very grateful to Alexander Tsuk^anov for solving this task!"

	
	
	//Быстрая загрузка сервисных утилит.
	И видеовставка 'Быстрая загрузка сервисных утилит.'
	*Появилась возможность быстрой загрузки дополнительных программ, которые используются для создания автоматических видео инструкций, подобной этой.
		Дано поиск строки в редакторе через буфер обмена 'Возможность загрузить дополнительные утилиты из проекта UIToolsFor1C одним кликом.'
	И видеовставка "Спасибо Андрею Полетаеву за реализацию этой ф^ичи!"
	
	
	
	//Работа с выпадающими списками.
	И видеовставка 'Работа с выпадающими списками.'
	*Появилась возможность сохранить выпадающий список как таблицу в памяти.
		Дано поиск строки в редакторе через буфер обмена 'Сохранение выпадающего списка как таблицы в памяти.'
	Дано текст субтитров "Теперь можно запомнить значения выпадающего списка и перебрать его значения в цикле."
	И видеовставка "Спасибо Ник^ите Грызлову за реализацию этой новой возможности!"
	

	
	//Авто инструкции.
	И видеовставка '^Авто инструкции.'
	*Добавлена возможность прослушать голос до компиляции видео.
		Дано поиск строки в редакторе через буфер обмена 'Добавлена возможность прослушать голос до компиляции видео.'
	Дано текст субтитров "Это упрощает процесс отладки ваших видео роликов."


	
	
	

	Дано текст субтитров "Ещё были исправлены ошибки и сделано много других полезных доработок."
	И видеовставка "Подробности, как обычно, можно найти в файле history.MD"
	
								
	Дано текст субтитров "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	#[autodoc.ignorestep]
	И я закрываю текстовый редактор
	
					