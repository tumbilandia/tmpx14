INSERT INTO TACCOUNT
      (NAMEX,
       SHIPPINGSTREET,
       SHIPPINGCITY,
       SHIPPINGPOSTALCODE,
       BILLINGSTREET,
       BILLINGCITY,
       PHONE,
       FAX,
       NUMBEROFEMPLOYEES,
       OWNERID,
       CREATEDDATE,
       CREATEDBYID,
       LASTMODIFIEDDATE,
       LASTMODIFIEDBYID,
       CIF,
       N_VENDEDOR,
       CUENTA_CORRIENTE_20_DIGITOS,
       N_CONTENCIOSO,
       RAZON_SOCIAL,
       N_RECOBRO,
       N_RIESGO_VIVO_TOTAL,
       SITUACION,
       ZONA,
       SECTOR,
       INDUSTRY,
       N_CARTERA,
       N_AGENCIA,
       ALERTA,
       RED,
       SITUACION_DESDE,
       FECHA_DE_ENTRADA,
       TELEMATICA,
       ULTIMA_FINANCIACION,
       RATING,
       NOMBRE_DE_CADENA,
       NOMBRE_DE_GRUPO,
       NOMBRE_DE_UNION,
       RECORDTYPEID,
       DNIDIRIGENTE,
       NOMBREDIRIGENTE,
       CONTENCIOSOTARJETA,
       RECOBRO_TARJETA,
       RIESGO_TARJETA,
       AGENCIA,
       CARTERA,
       N_CADENA_INT,
       N_GRUPO_INT,
       N_UNION_INT,
       TEMPORAL,
       N_CARTERA_INT,
       SOCIEDAD,
       DELETE_FLAG , SYSTEMMODSTAMP)
VALUES('MUEBLES ADI    ',
       'CR ALFONSO XIII 19            BAJO',
       'MELILLA                  ',
       '52005',
       'CR ALFONSO XIII 19            52005',
       'MELILLA                  ',
       '952691413',
       null,
       0,
       '00520000000otT7AAI',
        SYSDATE,
       '00520000000nO54AAE',
       SYSDATE,
       '00520000000nO54AAE',
       'B52036308 ',
       2560134,
       '30580960012720000000',
       0,
       'MUEBLES RAYAN SL                        ',
       0,
       0,
       'OK',
       2,
       'MB ',
       (select  value
          from  rj_reference
         where  object_name ='ACCOUNT'
           AND  field_name ='INDUSTRY'
           and  idcetelem= 'MB '
           and  rownum < 2),
       TRIM(CONCAT( '452' , 'F' )),
       '452',
        0,
        1,
        '06-FEB-24' +2/24,
        '05-FEB-24' +2/24,
        3,
        to_Date(decode( '02-08-2024' ,'01-01-0001','01-01-2001',
                        '02-08-2024' ),'mm-dd-yyyy')  ,
        null,
        (select id
           from taccount
          where N_VENDEDOR = 9100678
            and recordtypeid='012200000008eM9AAI'
            and delete_flag NOT in ('Y','D')
            AND rownum < 2),
        (select id
           from taccount
          where N_VENDEDOR = 9200000
            and recordtypeid='012200000008eMAAAY'
            and delete_flag NOT in ('Y','D')
            AND rownum < 2),
        (select id
           from taccount
          where N_VENDEDOR = 9305772
           and recordtypeid='012200000008eMEAAY'
           and delete_flag NOT in ('Y','D')
           AND rownum < 2),
        (select id
           from trecordtype
          where idcetelem='PDV'
            and rownum < 2),
        null,
        null,
        0,
        0,
        0,
        (SELECT ID
           FROM TSALESFORCE.TAGENCIA
          WHERE NAMEX = '452'
            and red = 1
            AND SOCIEDAD = '400'
            and delete_flag NOT in ('Y','D')),
        (select id
           from tcartera
          where namex = '452F'
            and red = 1
            AND SOCIEDAD = '400'
            and delete_flag NOT in ('Y','D')),
         9100678,
         9200000,
         9305772,
         0,
         'F',
         '400',
         'I', SYSDATE );