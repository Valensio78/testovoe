﻿
&НаСервере
Процедура СформироватьНаСервере()
	
	ТабРез.Очистить();
	ТабДок = ДокументТест2.Тестовое2;
	
	ВсегоСтрок = ТабДок.Количество();
	
	НачальнаяСтрока = 0;
	
	qtyСумма = Ложь;
	
	Type = Неопределено; 
	
	Пока НачальнаяСтрока < ВсегоСтрок Цикл
		
		Стр = ТабДок[НачальнаяСтрока];
		
		//Если НачальнаяСтрока = 0 Тогда
		//	
		//	qtyСуммировать = Ложь;
		//	СтрРез = ТабРез.Добавить();
		//	ЗаполнитьЗначенияСвойств(СтрРез,Стр);
		//			
		//Иначе
		Если ТабДок[НачальнаяСтрока].Type = Type Тогда
			
			qtyСуммировать = Истина;
			
		Иначе 
			
			qtyСуммировать = Ложь;
			СтрРез = ТабРез.Добавить();
			ЗаполнитьЗначенияСвойств(СтрРез,Стр);
			Type = СтрРез.Type;
			
		КонецЕсли; 
		
		Если qtyСуммировать Тогда
			СтрРез.qty = СтрРез.qty + Стр.qty; 
		КонецЕсли;
		//КонецЕсли;	
		
		НачальнаяСтрока = НачальнаяСтрока +1;
		
		
	КонецЦикла;	
	
КонецПроцедуры

&НаКлиенте
Процедура Сформировать(Команда)
	СформироватьНаСервере();
КонецПроцедуры
