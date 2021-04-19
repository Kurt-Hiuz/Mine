select * from Ship; -- Вывод всех транспортных средств
select * from Port; -- Вывод всех зарегистрированных портов
select * from Sender; -- Вывод всех зарегистрированных отправителей
select * from Consignee; -- Вывод всех зарегистрированных получателей
select * from Cargo; -- Вывод всего зарегистрированного груза
select * from Shipment where DestinationPort = @port; -- Вывод поставок в определенный порт
select * from Shipment where OriginPort = @port; -- Вывод поставок из определенного порта
select * from RouteList where ShipNumber = @ship -- Вывод всех путешествий указанной лодки
select * from Stopping where ID_Route = @route order by ArriveDate -- Вывод всех остановок указанного маршрута
