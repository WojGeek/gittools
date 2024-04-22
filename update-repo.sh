#!/bin/bash

#  Facilitar la creación de un repositorio en Github
#           18.4.2024, 15:50

# Do an easy repository update

clear

WEBURL='github.com'

# Token and account taken from .env
source ~/gittools/my_custom.env

# repository name
REPO=$1



# Check token
if [ -z "$MY_TOKEN" ] ; then
    
    echo -e " \n Aviso: \n •  TOKEN no existe - Debe ser creado en  https://github.com/settings/tokens\n"
    echo -e " \t- Obtenga el token y declare en el archivo 'my_custom.env' como ejemplo: \n"
    echo -e "  \t MY_TOKEN=\"pkEr_3223423432423aadasd34\" \n"
    exit 0
else
    #echo -e "My token: $MY_TOKEN"
    echo -e " • Token: ${MY_TOKEN:0:5}...${MY_TOKEN: -7}"
fi

# check Github account
if [ -z "$GITHUB_ACCOUNT" ] ; then
    
    echo -e "\n Aviso: \n •  Cuenta no existe - Requiere especificar el usuario Github\n "
    echo -e " \t- Declare en el archivo 'my_custom.env' como: \n"
    echo -e "  \t GITHUB_ACCOUNT=\"billgates\" \n"
    exit 0
else
    echo -e " • Cuenta: $GITHUB_ACCOUNT"
fi



if [ -z "$REPO" ] ;  then
    
    
    echo -e "\n\t$0    repository \n"
    echo -e "Aviso: \n •  Espeficique el nombre del repositorio"
    exit 0
else
    echo -e " • Repositorio: $REPO"
fi


echo -e "\n Updating repo..."


# echo -e  " • git init"
# #git init

# echo  " • add ."
# #git add .

# echo -e " • git commit -m \"$COMMENT\" "
# #git commit -m "$COMMENT"

# echo  " • branch -M main "
# #git branch -M main



# echo -e " • git remote add origin https://$WEBURL/$GITHUB_ACCOUNT/$REPO.git"
# ##git remote add origin https://$WEBURL/$GITHUB_ACCOUNT/$REPO.git


echo -e " • git remote set-url origin https://$MY_TOKEN@$WEBURL/$GITHUB_ACCOUNT/$REPO.git "
git remote set-url origin https://$MY_TOKEN@$WEBURL/$GITHUB_ACCOUNT/$REPO.git

echo " • git push "
git push

#git remote set-url origin https://$MY_TOKEN@$WEBURL/$GITHUB_ACCOUNT/$REPO.git  > /dev/null 2>&1)

# Si falla la ejecución del comando...
# if [[ $do_ -eq 0 ]]; then
#     echo -e "Falló el commit, revise los parámetros"
#     exit 1
# fi

