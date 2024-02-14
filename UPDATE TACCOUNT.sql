UPDATE TACCOUNT
SET    SYSTEMMODSTAMP = sysdate,
       NAMEX = 'MUEBLES ADI                             ',
       SHIPPINGSTREET = 'CR ALFONSO XIII 19            BAJO                          ',
       SHIPPINGCITY   = 'MELILLA                  ',
       SHIPPINGPOSTALCODE = '52005',
       BILLINGSTREET      = 'CR ALFONSO XIII 19            52005',
       BILLINGCITY        = 'MELILLA                  ',
       PHONE = '952691413',
       FAX = null,
       NUMBEROFEMPLOYEES = 0,
       LASTMODIFIEDDATE = SYSDATE,
       LASTMODIFIEDBYID = '00520000000otT7AAI',
       CIF = 'B52036308 ',
       CUENTA_CORRIENTE_20_DIGITOS = '30580960012720000000',
       N_CONTENCIOSO = 0,
       RAZON_SOCIAL = 'MUEBLES RAYAN SL                        ',
       N_RECOBRO = 0,
       N_RIESGO_VIVO_TOTAL = 0,
       SITUACION = 'OK',
       ZONA = 2,
       SECTOR = 'MB ',
       INDUSTRY = (select value
                    from  rj_reference
                    where object_name ='ACCOUNT'
                      AND field_name ='INDUSTRY'
                      and idcetelem= 'MB '
                      and rownum < 2),
       N_CARTERA = TRIM(CONCAT( '452' , 'F' )),
       N_AGENCIA = '452',
       ALERTA = 0,
       RED = 1,
       SITUACION_DESDE = '6-FEB-24' +2/24,
       FECHA_DE_ENTRADA =  '5-FEB-24' +2/24 ,
       TELEMATICA = '3',
       ULTIMA_FINANCIACION = to_Date(decode( '02-08-2024' ,'01-01-0001','01-01-2001'
                                           , '02-08-2024' ),'mm-dd-yyyy')  ,
       RATING = null,
       NOMBRE_DE_CADENA = (select id
                           from taccount
                          where N_VENDEDOR = 9100678
                            and recordtypeid='012200000008eM9AAI'
                            and delete_flag NOT in ('Y','D')
                            AND rownum < 2),
       NOMBRE_DE_GRUPO = (select id
                            from taccount
                           where N_VENDEDOR = 9200000
                             and recordtypeid='012200000008eMAAAY'
                             and delete_flag NOT in ('Y','D')
                             AND rownum < 2),
       NOMBRE_DE_UNION = (select id
                            from taccount
                           where N_VENDEDOR = 9305772
                             and recordtypeid='012200000008eMEAAY'
                             and delete_flag NOT in ('Y','D')
                             AND rownum < 2),
       DNIDIRIGENTE = null,
       NOMBREDIRIGENTE = null,
       CONTENCIOSOTARJETA =  0,
       RECOBRO_TARJETA =  0,
       RIESGO_TARJETA =   0,
       AGENCIA      = (SELECT ID
                         FROM TSALESFORCE.TAGENCIA
                        WHERE NAMEX = '452'
                          and red = 1
                          AND SOCIEDAD = '400'
                          and delete_flag NOT in ('Y','D') ),
       CARTERA = (select id
                    from tcartera
                   where namex = '452F'
                     and red = 1
                     AND SOCIEDAD = '400'
                     and delete_flag NOT in ('Y','D')),
       N_CADENA_INT  = 9100678,
       N_GRUPO_INT  = 9200000,
       N_UNION_INT  = 9305772,
       OWNERID = '00520000000otT7AAI',
       TEMPORAL = 0,
       N_CARTERA_INT = 'F',
       SOCIEDAD = '400',
DELETE_FLAG = Case When DELETE_FLAG= 'Y' then 'I'
                   When Delete_Flag= 'I' then 'I'
                   When Delete_Flag= 'N' then 'U'
                   else 'U'
              end,
       Id = Case When Delete_Flag = 'Y'
              Then null
              Else Id
            End
WHERE  N_VENDEDOR = 2560134