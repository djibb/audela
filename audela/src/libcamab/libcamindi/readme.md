audela/src/libcam/libindicam/readme.md

==================================
compilation de libindicam.so
================================

$ cd audela/src/libcam/libindicam/linux
$ make clean
$ make


==================================
Test de libindicam.so 
==================================

1) lancer le serveur  ( cf installation du serveur ci-dessous)
indiserver -v -p 7624  indi_simulator_ccd

2) lancer audela 

3) dans la console de Audela :

// creer la camera
cam::create indicam "CCD Simulator" 
ou 
cam::create indicam "CCD Simulator" -serverAddress 127.0.0.1  -serverPort 7624  

// associer le buffer d'image n°1 a la camera
cam1 buf 1

// configurer le temps de pose a 5 secondes
cam1 exptime 5 

// lancer l'acquisition 
cam1 acq 

// afficher l'image dans la visu
confVisu::autovisu 1

// supprimer la camera 
cam::delete 1





==================================
Installer libindi serveur 
===============================


Recuperer les sources "stables"
--------------------------------------------------
wget http://sourceforge.net/projects/indi/files/libindi_1.0.0.tar.gz/download
wget http://sourceforge.net/projects/indi/files/libindi_3rdparty_1.0.0.tar.gz/download
tar -xvf libindi_3rdparty_1.0.0.tar.gz
tar -xvf libindi_1.0.0.tar.gz

installer les lib necessaires:
---------------------------------------
apt-get install cmake  libnova-dev   libusb-1.0-0-dev  cfitsio-dev   libgsl0-dev

Compiler la lib indi
--------------------------
mkdir indi_buil
cd indi_buil
cmake -DCMAKE_INSTALL_PREFIX=/usr . ../libindi-1.0.0/
make
sudo make install

lancer le serveur
----------------------
ce placer dans libindi_build, on l'on trouve l executable: indi_simulator_ccd

indiserver -vvv -p 7624 ./indi_simulator_ccd 

