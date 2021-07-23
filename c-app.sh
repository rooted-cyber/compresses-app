bann() {
figlet -f font Compress
echo
}
cab() {
	cd /sdcard
	if [ -e "compressed-app" ];then
	echo
	else
	mkdir compressed-app
	fi
	}
com() {
	random
	echo -n -e "\n Enter location of app :\033[0m "
	read a
	if [ "$a" ];then
	random
	echo -e -n "\n Eter app name :\033[0m "
	fi
	read ab
	cd $a
	mv $ab com.zip
	random
	printf "\n Unzip your app $ab\n"
	sleep 1
	unzip com.zip -d com
	cd com
	random
	printf "\n compressing app\n"
	sleep 1
	zip -9 -r com *
	cab
	cd $a
	cd com
	cp -f com.zip /sdcard/compressed-app/compressed-app.apk
	cd $a
	rm -rf com
	rm -f com.zip
	random
	printf "\n Successfully saved in \033[0m /sdcard/compressed-app\n"
	}
	
menu() {
	bann
	printf "\n\033[1;91m[\033[0m1\033[1;91m]\033[1;93m Compress apkk\n"
	printf "\n\033[1;91m[\033[0m2\033[1;91m]\033[1;93m Exit\n\n\n"
	echo -e -n "\033[1;92m Compress\033[0m -->> "
	read hj
	case $hj in
	1)com ;;
	2)exit ;;
	*)menu ;;
	esac
	}
	menu