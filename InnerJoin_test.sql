CREATE TABLE T1 ( A INT PRIMARY KEY, B VARCHAR(20) );

INSERT INTO T1 (A,B) VALUES (1,"오대근1");
INSERT INTO T1 (A,B) VALUES (2,"오대근2");
INSERT INTO T1 (A,B) VALUES (3,"오대근3");
INSERT INTO T1 (A,B) VALUES (4,"오대근4");
/*select * from T1;*/


CREATE TABLE T2 ( A INT PRIMARY KEY, C VARCHAR(20) );

INSERT INTO T2 (A,C) VALUES (2,"BMW");
INSERT INTO T2 (A,C) VALUES (3,"SM7");
/*select * from T2;*/


/* ==================================== exampl inner join(Commit1) ↓==================================== */
SELECT T1.A, T1.B, T2.C
from T1 inner join T2 on T1.A=T2.A;
/* ==================================== exampl inner join(Commit1) ↑==================================== */



CREATE TABLE T_1 ( oh INT PRIMARY KEY, dae INT, geun VARCHAR(20) );

INSERT INTO T_1 (oh,dae,geun) VALUES (1,11,"오대근1");
INSERT INTO T_1 (oh,dae,geun) VALUES (2,22,"오대근2");
INSERT INTO T_1 (oh,dae,geun) VALUES (3,33,"오대근3");
INSERT INTO T_1 (oh,dae,geun) VALUES (4,44,"오대근4");
/*select * from T_1;*/


CREATE TABLE T_2 ( oh INT PRIMARY KEY, dae INT, god VARCHAR(20) );

INSERT INTO T_2 (oh,dae,god) VALUES (2,22,"BMW");
INSERT INTO T_2 (oh,dae,god) VALUES (3,33,"SM7");
/*select * from T_2;*/


/* ====================================== inner join(Commit2) ↓====================================== */
SELECT T_1.oh, T_1.dae, T_1.geun, T_2.god
from T_1 inner join T_2 on T_1.oh=T_2.oh;

SELECT T_1.oh, T_1.dae, T_1.geun, T_2.god
from T_1 inner join T_2 on T_1.dae=T_2.dae;
/* ====================================== inner join(Commit2) ↑====================================== */