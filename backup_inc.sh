#!/bin/bash

echo "Script Backup (Incremental) (Diário)"
 #
 time=`date +%d/%m/%Y-%H:%M:%S`
 log='/bkp/log/log.txt'

 origem="/home/dscedsonusu/Área de Trabalho/Procedimento/"
 #destino=/bkp
 ####
 echo "|--------------------------------------------" >> $log
 echo "Bakup iniciado em:    $time " >> $log
 
 rsync -Cravzp $origem $destino 

 echo "Backup finalizado em:" $time >> $log
 echo "|--------------------------------------------" >> $log