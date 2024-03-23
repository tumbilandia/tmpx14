-- 01 -- ora
select * from tsalesforce.taccount where n_vendedor in ('9305194','9237090','2312858','2297034','2297042','2297059','2297075','2278646','2295459','2267151','2314995','2311769','9237819','2312072','2312064','2312130','2312148','2320406','9235896','2316735','2320414','2320430','9239401','9239427','2330744','2329464','9108432','9206129','9111188','9209552','2317758','2317766','2317782','2317808','2317816','2317832','2317865','2317840','2317881','9235888','9305202','9305137','9305145','9305129','2295467','9242207','9243502','9222308','9306382','9220393','9308131','9214743','9233909','9206038','9111451','9110248','9111519','9110719','9307604','9210840','9110768','9241290');

-- 02 -- sf
select id, name, n_vendedor__c from account where id in ('0017R00002VOTOiQAP','0017R00002VOTOjQAP','0017R00002sa2d8QAA','0017R00002gZIIcQAO')
	id	name	n_vendedor__c
	0017R00002VOTOiQAP	CANDELSA	9305129
	0017R00002VOTOjQAP	COMPETICION	9305194
	0017R00002gZIIcQAO	E-COMMERCE COCHE	9111519
	0017R00002sa2d8QAA	RENTING NUEVOS NEGOCIOS	9111451


-- 02. pdv existen en sf
update tsalesforce.taccount set id = '0017R00002VOTOiQAP',delete_flag = 'U' where id = 'X-145041971' and n_vendedor = 9305129;
--update tsalesforce.taccount set id = '0017R00002VOTOjQAP',delete_flag = 'U' where id = 'X-145042123' and n_vendedor = 9305194; 
----- en sf ya existe pdv con nombre COMPETICION, en ora: RENAULTSEVILLA
update tsalesforce.taccount set id = '0017R00002gZIIcQAO',delete_flag = 'U' where id = 'X-149654588' and n_vendedor = 9111519;
--update tsalesforce.taccount set id = '0017R00002sa2d8QAA',delete_flag = 'U' where id = 'X-149674886' and n_vendedor = 9111451;
----- en sf ya existe pdv con nombre 'RENTING NUEVOS NEGOCIOS', en ora: RENTALL

-- 03
update tsalesforce.taccount set reactivacion_por_fax = null where id like '001w0000013ejR0%' and reactivacion_por_fax like 'SINERGIA MUSIC%';

-- 04
update tsalesforce.taccount set NOMBRE_DE_UNION = null where n_vendedor = 2561561;

-- 05
select id,namex,n_vendedor from tsalesforce.taccount where id in ('0017T00000m34UqQAI','0017T00000m34UrQAI','0017T00000m34UsQAI','0017T00000m34UtQAI','0017T00000m34UuQAI','0017T00000m34UvQAI','0017T00000m34UwQAI','0017T00000m34UxQAI','0017T00000m34UyQAI','0012000000vl1Ua','0012000000vl2Ab','0012000000vl2LR','0012000000vl3YG','001w0000013ejR0','0017T00000m34UzQAI','0017T00000m34V0QAI');

