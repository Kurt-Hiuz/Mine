select cl.name_client as '���������' , w.name_worker as '������ ���������'
from call c, clients cl, workers w
where c.client_id = cl.id_client and c.id_worker = w.id_worker