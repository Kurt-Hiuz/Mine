select * from Ship; -- ����� ���� ������������ �������
select * from Port; -- ����� ���� ������������������ ������
select * from Sender; -- ����� ���� ������������������ ������������
select * from Consignee; -- ����� ���� ������������������ �����������
select * from Cargo; -- ����� ����� ������������������� �����
select * from Shipment where DestinationPort = @port; -- ����� �������� � ������������ ����
select * from Shipment where OriginPort = @port; -- ����� �������� �� ������������� �����
select * from RouteList where ShipNumber = @ship -- ����� ���� ����������� ��������� �����
select * from Stopping where ID_Route = @route order by ArriveDate -- ����� ���� ��������� ���������� ��������
