#
# Fichier : pkgIndex.tcl
# Description : Definition du point d'entree du plugin
# Mise à jour $Id: pkgIndex.tcl 9987 2013-08-18 13:38:06Z robertdelmas $
#

package ifneeded gphoto2 2.0 [ list source [ file join $dir gphoto2.tcl ] ]

