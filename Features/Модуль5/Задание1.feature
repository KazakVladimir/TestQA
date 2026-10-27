#language: ru

@tree

Функционал: Создание элементов справочника Номенклатура

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание большого объема данных (справочник Номенклатура)
	Дано Я открываю навигационную ссылку "e1cib/list/Catalog.Items"
	И Я запоминаю значение выражения '1' в переменную "Шаг"
	И Я делаю 10 раз
		И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
		И Я запоминаю значение выражения '"Номенклатура" + $Шаг$' в переменную "НаименованиеНоменклатуры"
		И Я запоминаю значение выражения '"test" + $Шаг$' в переменную "Артикул"
		И Я запоминаю значение выражения '5 + $Шаг$' в переменную "Код"
		И я проверяю или создаю для справочника "Items" объекты:
			| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'MainPricture'                          | 'Vendor'                                                           | 'ItemID'    | 'PackageUnit' | 'Description_en'             | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
			| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        | '$Код$'      | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6878' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | '$Артикул$' | ''            | '$НаименованиеНоменклатуры$' | ''                 | ''               | ''               |          |          |          | 0.21     |         |

