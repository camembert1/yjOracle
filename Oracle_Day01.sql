--KH������ ����� �� ��й�ȣ�� KH�� ���ּ���






CREATE TABLE STUDENT_TBL (
    STUDENT_NAME VARCHAR2(20),
    STUDENT_AGE NUMBER,
    STUDENT_GRADE NUMBER,
    STUDENT_ADDRESS VARCHAR2(100)
);

--TABLE�� �����͸� �ִ� ���! ->ȸ������
--�ڿ� ��ȣ(�÷���)�� ��������
INSERT INTO STUDENT_TBL (STUDENT_NAME, STUDENT_AGE, STUDENT_GRADE, STUDENT_ADDRESS)
VALUES('�̿���', 55, 3, '����� ���α�');
--��ȣ����
INSERT INTO STUDENT_TBL VALUES(NULL, 33, 1, ' ');

--�����͸� �����غ���! -> ȸ��Ż��
DELETE FROM STUDENT_TBL
--����Ʈ ���� ������ ����Ʈ���ҿ���� �ܿ��~~~
WHERE STUDENT_GRADE = 2;

--�����͸� �����غ���!
UPDATE STUDENT_TBL
SET STUDENT_NAME = '�Ͽ���';
--WHERE STUDENT_AGE = 22;
--WHERE���� �����ϸ� �� �ٲ�����~!~!~

--���� = ����+����
--���̺� ����
DROP TABLE STUDENT_TBL;

--������ ��ȸ
--���� ���� ����~!~!~!~!
SELECT STUDENT_NAME, STUDENT_ADDRESS
FROM STUDENT_TBL
WHERE STUDENT_GRADE = 2;

--CREATE�� ������� �𸦶�~
--describe
DESC DATATYPE_TBL;

INSERT INTO DATATYPE_TBL
VALUES('����3', '���ڿ�3', 44, SYSDATE, SYSTIMESTAMP);

SELECT MOONJJA, MOONJJAYUL, SOOJJA, NALJJA, NALJJA2
FROM DATATYPE_TBL;

--�����ϰ����~!~!~~!~
UPDATE DATATYPE_TBL
SET MOONJJA = '����Ŭ'
WHERE SOOJJA = 33;

DELETE FROM DATATYPE_TBL
WHERE SOOJJA = 22;

CREATE TABLE DATATYPE_TBL (
    MOONJJA CHAR(10),
    --���ĺ�10����, �ѱ� 3����
    MOONJJAYUL VARCHAR2(100),
    --���ĺ�100����, �ѱ� 33����
    SOOJJA NUMBER,
    NALJJA DATE,
    NALJJA2 TIMESTAMP
);