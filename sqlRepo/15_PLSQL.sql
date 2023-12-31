-- PL/SQL

/*
    <PL/SQL>
        神虞適 切端拭 鎧舌鞠嬢 赤澗 箭託旋 情嬢稽 SQL 庚舌 鎧拭辞 痕呪税 舛税, 繕闇 坦軒(IF), 鋼差 坦軒(LOOP, FOR, WHILE) 去聖 走据廃陥.
        (陥呪税 SQL 庚聖 廃 腰拭 叔楳戚 亜管馬陥.)
        
        [PL/SQL税 姥繕]
            1) 識情採(DECLAER SECTION) : DECLARE稽 獣拙, 痕呪蟹 雌呪研 識情 貢 段奄鉢馬澗 採歳戚陥.
            2) 叔楳採(EXECUTABLE SECTION) : BEGIN稽 獣拙, SQL 庚, 薦嬢庚(繕闇, 鋼差庚) 去税 稽送聖 奄綬馬澗 採歳戚陥.
            3) 森須 坦軒採(EXCEPTION SECTION) : EXCEPTION稽 獣拙, 森須 降持 獣 背衣馬奄 是廃 姥庚聖 奄綬馬澗 採歳戚陥.
            
        
    <PL/SQL 識情採(DECLAER SECTION)>
        痕呪 貢 雌呪研 識情背 兜澗 因娃戚陥.(識情引 疑獣拭 段奄鉢亀 亜管)
        痕呪 貢 雌呪澗 析鋼 展脊 痕呪, 傾遁訓什 展脊 痕呪, ROW 展脊 痕呪稽 識情背辞 紫遂拝 呪 赤陥.
        
        1) 析鋼 展脊 痕呪税 識情 貢 段奄鉢
            [庚狛]
                痕呪誤 [CONSTANT] 切戟莫(滴奄) [:= 葵];
*/


--窒径 奄管 醗失鉢
SET SERVEROUTPUT ON;


DECLARE
    X NUMBER;
    Y CONSTANT VARCHAR2(100) := 'ZZZ';
BEGIN
    X := 777;
    DBMS_OUTPUT.PUT_LINE('X税 葵 ::: ' || X);
    DBMS_OUTPUT.PUT_LINE('Y税 葵 ::: ' || Y);
END;
/


/*
        2) 傾遁訓什 展脊 痕呪 識情 貢 段奄鉢
            [妊薄狛]
                痕呪誤 砺戚鷺誤.鎮軍誤%TYPE;
            
            - 背雁馬澗 砺戚鷺税 鎮軍拭 汽戚斗 展脊聖 凧繕背辞 益 展脊生稽 痕呪研 走舛廃陥.
*/

/*
        3) ROW 展脊 痕呪 識情 貢 段奄鉢
            [妊薄狛]
                痕呪誤 砺戚鷺誤%ROWTYPE;
                
            - 馬蟹税 砺戚鷺税 食君 鎮軍税 葵聖 廃襖腰拭 煽舌拝 呪 赤澗 痕呪研 税耕廃陥.
            - 乞窮 鎮軍聖 繕噺馬澗 井酔拭 紫遂馬奄 畷軒馬陥.
*/

DECLARE
    --X EMPLOYEE.EMP_NAME%TYPE;
    X EMPLOYEE%ROWTYPE;
BEGIN
    SELECT *
    INTO X
    FROM EMPLOYEE
    WHERE EMP_ID = 208;
    DBMS_OUTPUT.PUT_LINE(X.EMP_NAME);
    DBMS_OUTPUT.PUT_LINE(X.EMP_ID);
    DBMS_OUTPUT.PUT_LINE(X.DEPT_CODE);
END;
/

---------------------------------------
/*
    <PL/SQL 叔楳採(EXECUTABLE SECTION)>
        1) 識澱庚
          1-1) 舘析 IF 姥庚
            [庚狛]
                IF 繕闇縦 THEN
                    叔楳 庚舌
                END IF;
*/

DECLARE
    X NUMBER;
BEGIN
    
    -- X := '&収切研脊径馬室推';
    
    SELECT SALARY
    INTO X
    FROM EMPLOYEE
    WHERE EMP_ID = '&紫腰聖脊径馬室推';
    
    DBMS_OUTPUT.PUT_LINE('紫据税 厭食 : ' || X);
    
    IF (X > 50000000) THEN
        DBMS_OUTPUT.PUT_LINE('滴陥');
    ELSIF (X > 2000000) THEN
        DBMS_OUTPUT.PUT_LINE('掻娃');
    ELSE
        DBMS_OUTPUT.PUT_LINE('拙陥');
    END IF;
    
END;
/

/*
        1-4) CASE 姥庚
          [庚狛]
            CASE 搾嘘 企雌
                 WHEN 搾嘘葵1 THEN 衣引葵1
                 WHEN 搾嘘葵2 THEN 衣引葵2
                 ...
                 [ELSE 衣引葵]
            END;
*/

DECLARE
    X CHAR(1);
BEGIN

    X := 'A';
    
    CASE X
        WHEN 'A' THEN DBMS_OUTPUT.PUT_LINE('拭戚びびび');
        WHEN 'B' THEN DBMS_OUTPUT.PUT_LINE('搾びびび');
        WHEN 'C' THEN DBMS_OUTPUT.PUT_LINE('松びびび');
    END CASE;

END;
/


/*
        2) 鋼差庚
          2-1) BASIC LOOP
            [庚狛]
                LOOP
                    鋼差旋生稽 叔楳獣迭 姥庚
                    
                    [鋼差庚聖 匙閃蟹哀 繕闇庚 拙失]
                        1) IF 繕闇縦 THEN 
                              EXIT;
                           END IF
                           
                        2) EXIT WHEN 繕闇縦;
                END LOOP;
*/

DECLARE
    X NUMBER;
BEGIN
    X := 1;
    
    WHILE X <= 3
    LOOP
        DBMS_OUTPUT.PUT_LINE('HELLO~~~');
        
        X := X+1;
        
--        IF (X > 3) THEN 
--            EXIT;
--        END IF;

--        EXIT WHEN X > 3;
        
    END LOOP;
    
END;
/


/*
        2-2) WHILE LOOP
          [妊薄狛]
            WHILE 繕闇縦
            LOOP
                鋼差旋生稽 叔楳拝 姥庚;
            END LOOP;
*/

/*
        3) FOR LOOP
          [庚狛]
            FOR 痕呪 IN [REVERSE] 段奄葵..置曽葵
            LOOP
                鋼差旋生稽 叔楳拝 姥庚;
            END LOOP;
*/


/*
    <PL/SQL 森須坦軒採(EXCEPTION SECTION)>
        森須空 叔楳 掻 降持馬澗 神嫌研 倶馬壱 PL/SQL 庚拭辞 降持廃 森須研 森須坦軒採拭辞 坪球稽 坦軒亜 亜管馬陥.

        [庚狛]
            DECLARE
                ...
            BEGIN
                ...
            EXCEPTION
                WHEN 森須誤 1 THEN 森須坦軒姥庚 1;
                WHEN 森須誤 2 THEN 森須坦軒姥庚 2;
                ...
                WHEN OTHERS THEN 森須坦軒姥庚;
                
        * 神虞適拭辞 耕軒 舛税鞠嬢 赤澗 森須
          - NO_DATA_FOUND : SELECT 庚税 呪楳 衣引亜 廃 楳亀 蒸聖 井酔拭 降持廃陥.
          - TOO_MANY_ROWS : 廃 楳戚 軒渡鞠嬢醤 馬澗汽 SELECT 庚拭辞 食君 鯵税 楳聖 軒渡拝 凶 降持廃陥. 
          - ZERO_DIVIDE   : 収切研 0生稽 蟹喚 凶 降持廃陥.
          - DUP_VAL_ON_INDEX : UNIQUE 薦鉦 繕闇聖 亜遭 鎮軍拭 掻差吉 汽戚斗亜 INSERT 吃 凶 降持廃陥.
*/


















