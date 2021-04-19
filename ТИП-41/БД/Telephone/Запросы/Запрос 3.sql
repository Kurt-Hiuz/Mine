select cl.name_client as 'Обратился' , w.name_worker as 'Принял обращение'
from call c, clients cl, workers w
where c.client_id = cl.id_client and c.id_worker = w.id_worker