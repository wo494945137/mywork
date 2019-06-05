drop table SYS_DEPT_TEMP cascade constraints purge;
/*==============================================================*/
/* Table: SYS_DEPT_TEMP  科室中间表                                             */
/*==============================================================*/
create table SYS_DEPT_TEMP  (
   DEPT_ID              INTEGER                         not null,
   DEPT_NAME            VARCHAR2(120),
   DEPT_DM		VARCHAR2(50),
   DEPT_PDM		VARCHAR2(50),
   DEPT_MATERIALS       VARCHAR2(50),
   DEPT_PARENT_ID       INTEGER,
   constraint PK_SYS_DEPT_TEMP primary key (DEPT_ID)
);

comment on table SYS_DEPT_TEMP is
'科室中间表';

comment on column SYS_DEPT_TEMP.DEPT_NAME is
'科室名称';

comment on column SYS_DEPT_TEMP.DEPT_DM is
'科室代码';

comment on column SYS_DEPT_TEMP.DEPT_PDM is
'上级科室代码';

comment on column SYS_DEPT_TEMP.DEPT_MATERIALS is
'是否可以领用物资';

comment on column SYS_DEPT_TEMP.DEPT_PARENT_ID is
'上级科室ID';

--1、在excel中添加一列ID 序号从10开始，如果是一级科室那么上级代码必须为1
--2、拷贝到SYS_DEPT_TEMP表中

--更新科室临时表 DEPT_PARENT_ID
update SYS_DEPT_TEMP A set A.DEPT_PARENT_ID = (
select B.DEPT_ID from SYS_DEPT_TEMP B where B.DEPT_DM = A.DEPT_PDM
)
 where exists (select 1  from SYS_DEPT_TEMP B where B.DEPT_DM = A.DEPT_PDM);

update SYS_DEPT_TEMP set DEPT_PARENT_ID = 1 where DEPT_PDM = '1';

--更新科室临时表 DEPT_MATERIALS
update SYS_DEPT_TEMP set DEPT_MATERIALS = (case
when upper(DEPT_MATERIALS) = '是' then '1'
when upper(DEPT_MATERIALS) = '1' then '1'
when upper(DEPT_MATERIALS) = 'Y' then '1'
when upper(DEPT_MATERIALS) = '否' then '0'
when upper(DEPT_MATERIALS) = '0' then '0'
when upper(DEPT_MATERIALS) = 'N' then '0'
else '0' end
);

--插入科室表数据
INSERT INTO SYS_DEPT(DEPT_ID, DEPT_NAME, DEPT_PARENT_ID, DEPT_CODE, DEPT_ADDRESS, DEPT_SEARCH_CODE, DEPT_GRADE, DEPT_TYPE, DEPT_PY, DEPT_WB, 
DEPT_REMARK, DEPT_ISDEL, DEPT_BARCODE, DEPT_MATERIALS, DEPT_OA_ID, DEPT_HIS_ID, DEPT_CREATE_DATE, DEPT_UPDATE_DATE, DEPT_CREATE_USER, DEPT_UPDATE_USER)
select DEPT_ID,DEPT_NAME,DEPT_PARENT_ID, null,null,null,null,null,null,null,
null,0,null,to_number(DEPT_MATERIALS),null,null,sysdate,sysdate,1,1 from SYS_DEPT_TEMP;


--更新科室表 DEPT_SEARCH_CODE
select max(level)from SYS_DEPT
connect by prior DEPT_ID=DEPT_PARENT_ID
start with
DEPT_PARENT_ID=1;
--上面level有几次就执行级次下面的update
update SYS_DEPT A set A.DEPT_SEARCH_CODE = 
(select DEPT_SEARCH_CODE from (
select C.DEPT_ID,(B.DEPT_SEARCH_CODE||
(
case when length(to_char(row_number() over(order by B.DEPT_PARENT_ID))) =1 then '00'||to_char(row_number() over(order by B.DEPT_PARENT_ID)) 
when length(to_char(row_number() over(order by B.DEPT_PARENT_ID))) =2 then '0'||to_char(row_number() over(order by B.DEPT_PARENT_ID)) 
when length(to_char(row_number() over(order by B.DEPT_PARENT_ID))) =3 then to_char(row_number() over(order by B.DEPT_PARENT_ID)) 
end
)) as DEPT_SEARCH_CODE  from SYS_DEPT B, SYS_DEPT C 
where  B.DEPT_ID=C.DEPT_PARENT_ID and B.DEPT_SEARCH_CODE is not null and C.DEPT_SEARCH_CODE is null
order by C.DEPT_ID
) t where t.DEPT_ID=A.DEPT_ID)
where A.DEPT_ID != 1 and A.DEPT_SEARCH_CODE is null

--生产拼音、五笔码
update SYS_DEPT set DEPT_PY = GetSrm(DEPT_NAME,'srm1');
update SYS_DEPT set DEPT_WB = GetSrm(DEPT_NAME,'srm2');


--seq处理