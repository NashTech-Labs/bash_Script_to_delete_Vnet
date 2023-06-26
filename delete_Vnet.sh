#!/bin/sh

echo "Delete Vnet\n"

echo "Enter the name of Vnet:"
read Vnet

echo "Deleting Vnet '$Vnet' "

result=$(az network Vnet delete -g MyResourceGroup -n $VNet)

if [ $result ]
then
	echo "Vnet deleted"
	else
    	echo "Vnet '$Vnet' deletion failed"
    	exit 1
	fi
