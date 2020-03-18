#!/bin/bash
#PINGNET.SH - Desenvolvido pelo grilo
if [ "$1" == "" ]
then
echo "Modo de usar o programa EX:"
echo "Exemplo de uso: $0 190.168.0.1"
else
for host in {1..254};do
ping -c1 $1.$host | grep "64 bytes" | cut -d " " -f4 | sed 's/.$//'
done
fi

