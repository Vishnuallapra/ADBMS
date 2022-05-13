create a db store with table name product (pid,pname,price,qnty)
and a short procedure call insert product that inserts a new prduct into the db under some conditions the dhort procedure has input parameters the barcode productname pricre,
the spro shpuld insrt a row in thr product table only if th e pricr is gt 0	and the qnty>=0
if the condition are not satisfied the shopro just terminate(No errors generated)



--Ans


CREATE TABLE IF NOT EXISTS products (pid INT(10) PRIMARY KEY AUTO_INCREMENT, pname VARCHAR(20), price INT(20), barcode VARCHAR(20),quantity INT(10))

CALL insert_data("product3", 1900, "barcode4", 5);

SELECT * FROM products;
------------


CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_data`(IN pname long, IN price int, IN barcode long, IN quantity int)
BEGIN
	if(price > 0 && quantity >= 0) then
		insert into products(pname, price, barcode, quantity)VALUES(pname, price, barcode, quantity);
	end if;
END
