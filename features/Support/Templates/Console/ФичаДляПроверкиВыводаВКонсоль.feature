﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении



@IgnoreOnCIMainBuild

Функциональность: ФичаДляПроверкиВыводаВКонсоль
 


Сценарий: Проверка вывода в консоль
	//И пауза 1
	//И Я запоминаю значение выражения '1' в переменную "ИмяПеременной"
	Тогда я вывожу в консоль текст "Первая строка вывода текста в консоль из 1С"
	Тогда я вывожу в консоль текст "Вторая строка вывода текста в консоль из 1С"
	