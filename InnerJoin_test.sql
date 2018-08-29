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
