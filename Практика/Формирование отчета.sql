use Baltika;
select R.ID_Route, R.RouteDate, R.ShipNumber,
S.Skipper, S.ShipType,
C.ID_Cargo, c.CargoName, c.InsureValue, c.Unit,
sh.DepartureDate, sh.OriginPort,
sh.ArriveDate, sh.DestinationPort,
c.ID_Sender, c.ID_Consignee
from RouteList R, Ship S, Cargo C, Shipment Sh
where R.ID_Route = 2 and S.RegNumber = R.ShipNumber and	R.ID_Route = Sh.ID_Route;