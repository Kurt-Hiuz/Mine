select w.ID_worker, w.Name_worker, count(c.ID_call) as '���������� �������', sum(c.Minutes_talked) as '����� ����� ���������' from workers w, call c
where c.ID_worker = w.ID_worker
GROUP BY W.ID_worker, W.Name_worker