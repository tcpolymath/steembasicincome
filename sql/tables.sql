CREATE TABLE `sbi_steem_ops`.`sbi_ops` ( `virtual_op` INT NOT NULL , `op_acc_index` INT NOT NULL , `op_acc_name` VARCHAR(50) NOT NULL , `block` INT NOT NULL , `trx_in_block` INT NOT NULL , `op_in_trx` INT NOT NULL , `timestamp` DATETIME NOT NULL , `op_dict` TEXT NOT NULL , PRIMARY KEY (`block`, `trx_in_block`, `op_in_trx`, `virtual_op`)) ENGINE = InnoDB;
CREATE TABLE `sbi_steem_ops`.`transfers` ( `virtual_op` INT NOT NULL , `op_acc_index` INT NOT NULL , `op_acc_name` VARCHAR(50) NOT NULL , `block` INT NOT NULL , `trx_in_block` INT NOT NULL , `op_in_trx` INT NOT NULL , `timestamp` DATETIME NOT NULL , `from` VARCHAR(50) NOT NULL, `to` VARCHAR(50) NOT NULL, `amount` decimal(15,6) DEFAULT NULL, `amount_symbol`varchar(5) DEFAULT NULL,  `memo` varchar(2048) DEFAULT NULL, `op_type` varchar(50) NOT NULL, PRIMARY KEY (`block`, `trx_in_block`, `op_in_trx`, `virtual_op`)) ENGINE = InnoDB;