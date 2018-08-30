CREATE TABLE Test_1 ( oh INT PRIMARY KEY, dae INT, geun VARCHAR(20) );

INSERT INTO Test_1 (oh,dae,geun) VALUES (1,11,"오대근1");
INSERT INTO Test_1 (oh,dae,geun) VALUES (2,22,"오대근2");
INSERT INTO Test_1 (oh,dae,geun) VALUES (3,33,"오대근3");
INSERT INTO Test_1 (oh,dae,geun) VALUES (4,44,"오대근4");
/*select * from T_1;*/


CREATE TABLE Test_2 ( oh INT PRIMARY KEY, dae INT, god VARCHAR(20) );

INSERT INTO Test_2 (oh,dae,god) VALUES (2,22,"BMW");
INSERT INTO Test_2 (oh,dae,god) VALUES (3,33,"SM7");
/*select * from T_2;*/


/* ====================================== Left Outer join(Commit_user:daegeun_sql_testOffice) -> (Commit_user:daegeun_sql_testHome) ↓====================================== */
SELECT Test_1.oh,Test_1.dae, Test_1.geun, Test_2.god
FROM Test_1 LEFT  OUTER JOIN Test_2 ON Test_1.oh=Test_2.oh;
/* ====================================== Left Outer join(Commit_user:daegeun_sql_testOffice) -> (Commit_user:daegeun_sql_testHome) ↑====================================== */


/* ====================================== RIGHT Outer join(Commit_user:daegeun_sql / branch:main_user) ↓====================================== */
SELECT Test_1.oh,Test_1.dae, Test_1.geun, Test_2.god
FROM Test_1 RIGHT OUTER JOIN Test_2 ON Test_1.oh=Test_2.oh;
/* ====================================== RIGHT Outer join(Commit_user:daegeun_sql / branch:main_user) ↑====================================== */


/* ====================================== FULL Outer join(Commit_user:daegeun_sql_testHome / branch:testHome_user) ↓====================================== */
SELECT Test_1.oh,Test_1.dae, Test_1.geun, Test_2.god
FROM Test_1 FULL OUTER JOIN Test_2 ON Test_1.oh=Test_2.oh;
/* ====================================== FULL Outer join(Commit_user:daegeun_sql_testHome / branch:testHome_user) ↑====================================== */


<<<<<<< HEAD
/* ====================================== ===================================================================== ====================================== */
/* ====================================== Test END(Commit_user:daegeun_sql_testOffice / branch:testOffice_user) ====================================== */
/* ====================================== ===================================================================== ====================================== */
=======
/* ====================================== (Commit_user:daegeun_sql_testHome / branch:testOffice_user) ↓====================================== */
          /* ====================================== テストは終わりました　====================================== */
/* ====================================== (Commit_user:daegeun_sql_testHome / branch:testOffice_user) ↑====================================== */
>>>>>>> testOffice_user
