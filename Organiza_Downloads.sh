#!/usr/bin/env bash
#
# Organiza_Downloads.sh - Programa que organiza a pasta Downloads
#
# Site:       http://luizguilherme.tech
# Autor:      Luiz Guilherme
# Manutenção: Luiz Guilherme
#
# ------------------------------------------------------------------------ #
#  O que este programa está fazendo xxxx
#
#  Exemplos:
#      $ ./Organiza_Downloads
#      O Programa estará movendo cada tipo de arquivo para sua pasta pertencente.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 10/01/2021 Luiz :

# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #
# Agradecimentos:

# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
VERDE="\033[32;1m"
VERMELHO="\033[31;1m"
USUARIO="luiz"
LOGFILE="/home/luiz/Labs/Scripts/Organiza-Downloads/organiza_downloads/orgdown.log"
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #
[ $LOGNAME = "root" ] && echo -e " ${VERMELHO}Você está logado como usúario root, logue com o usúario dono da pasta a ser organizada" && exit 1

pwd | [ -d /home/$USUARIO/Downloads ] && cd /home/$USUARIO/Downloads #Está na pasta downloads?

[ ! -d Compactados ] && mkdir Compactados
[ ! -d Programas-Baixados ] && mkdir Programas-Baixados
[ ! -d Arquivos-PDF ] && mkdir Arquivos-PDF

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

mv -u *.pdf /home/$USUARIO/Downloads/Arquivos-PDF &> /dev/null
mv -u *.zip /home/$USUARIO/Downloads/Compactados &> /dev/null
mv -u *.tar.xz /home/$USUARIO/Downloads/Compactados &> /dev/null
mv -u *.tar.gz /home/$USUARIO/Downloads/Compactados &> /dev/null
mv -u *.deb /home/$USUARIO/Downloads/Programas-Baixados &> /dev/null
mv -u *.png /home/$USUARIO/Imagens &> /dev/null
mv -u *.jpeg /home/$USUARIO/Imagens &> /dev/null
mv -u *.jpg /home/$USUARIO/Imagens &> /dev/null
mv -u *.docx /home/$USUARIO/Documentos &> /dev/null
mv -u *.mp4 /home/$USUARIO/Vídeos &> /dev/null

echo -e ${VERDE} "
;                                                                         ;
;                       Sua pasta ${VERMELHO}Downloads ${VERDE}está organizada.              ;
;                                                                         ;" >> $LOGFILE

exit 0
# ------------------------------------------------------------------------ #
