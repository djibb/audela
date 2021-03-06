# * Initial author : Fred Vachier <fv@imcce.fr>
#   avec l aide et conseil de Alain KLOTZ <alain.klotz@free.fr>
#
#
# Demarrage : 
# - Positionner la monture tube observat la polaire
# - Positionner la monture tube vers l Est et contre poids vers l'Ouest
# - connecte la monture dans Audela
# - dans la console : > source [file join $audace(rep_install) src libtel libeqmod extra src old eqmod.tcl]
# - dans la console : > ::eqmod::ressource
# - dans la console : > begin
# - dans la console : > begin_on_north
# - dans la console : > ::eqmod_move::move_to_equator_south

proc the_begin { } {
   global audace
   tel::create eqmod /dev/ttyUSB0
   source [file join $audace(rep_install) src libtel libeqmod extra src eqmod.tcl]
   ::eqmod::ressource
   begin
   begin_on_north
   ::eqmod_move::move_to_equator_south
}

proc begin { } {

   set ::eqmod::telno 1
   set ::eqmod::home {GPS 2.0 E 48.5 150.0}

   set now [clock format [clock seconds] -gmt 1 -format "%Y %m %d %H %M %S"]
   set tsl [mc_date2lst $now $::eqmod::home]
   ::console::affiche_resultat "TSL = $tsl\n"
   set t [expr ([lindex $tsl 0] + [lindex $tsl 1]/60. + [lindex $tsl 2]/3600.)*15.]

   # Definir les coordonnees de l observateur
   tel$::eqmod::telno home $::eqmod::home
   
   # etat des moteurs
   ::console::affiche_resultat "Moteurs = [tel$::eqmod::telno radec state]\n"
   
}

proc begin_on_north { } {

   ::eqmod::set_coord_mount 0 90

}






proc move_test { } {

   tel$::eqmod::telno put :K1
   tel$::eqmod::telno put :K2
   
   tel$::eqmod::telno put :G200
   tel$::eqmod::telno put :H2C0BC05
   tel$::eqmod::telno put :J2

}



# tel1 put :K1
# tel1 put :G100
# tel1 put :H1365304
# tel1 put :J1

# tel1 put :K1
# tel1 put :G101
# tel1 put :H1B3DD13
# tel1 put :J1


proc move_star { name } {

   switch $name {
      "altair"   {
                 #ALTAIR AR: 19h51m28.419s DE:+08°54'37.74" 
                 set ra "19h51m28.419s"
                 set dec  "+08d54m37.74s"
                 }
      "sun"      {
                 # SOLEIL !
                 set ra  "12h05m13.17s"
                 set dec "-00d37m05.6s"
                 }
      "alpeg"    {
                 # Alp Peg : Apparente AR: 23h05m28.750s DE:+15°17'00.86" 
                 set ra "23h05m28.750s"
                 set dec  "+15d17m00.86s"
                 }
      "vega"     {
                 # Vega Apparente AR: 18h37m25.006s DE:+38°48'14.57" 
                 set ra  "18h37m25.006s"
                 set dec "+38d48m14.57"
                 }
      "arcturus" {
                 # Arcturus 14h16m16.622s DE:+19°06'52.06"
                 set ra  "14h16m16.622s"
                 set dec "+19d06m52.06"
                 }
      "capella" {
                 # Capella J2000
                 set ra  "5h17m41.458s"
                 set dec "+45d59m46.87"
                 }
      default    {
                 set ra  "0h0m0s"
                 set dec "+90d0m0s"
                 }
   }
   gren_info "ra = $ra dec = $dec \n"

   set ra  [mc_angle2deg $ra]
   set dec [mc_angle2deg $dec]

  ::eqmod_move::diurnal_motion stop

  ::eqmod_move::move_to_coord_equatorial $ra $dec
  
  ::eqmod_move::diurnal_motion start
  
}






proc test_star { } {

   # Alp Peg : Apparente AR: 23h05m28.750s DE:+15°17'00.86" 
   set ra "23h05m28.750s"
   set dec  "+15d17m00.86s"

   set ra_deg  [mc_angle2deg $ra]
   set dec_deg [mc_angle2deg $dec]

   set r       [::eqmod::coord_equatorial_to_hour $ra_deg $dec_deg]
   set h_deg   [lindex $r 0]
   set dec_deg [lindex $r 1]

   set r       [::eqmod::coord_hour_to_equatorial $h_deg $dec_deg]
   set ra_deg  [lindex $r 0]
   set dec_deg [lindex $r 1]

}







proc set_star { } {

   set ra  "07h47m04s3"
   set dec "+00d00m00s0"

   set ra  [mc_angle2deg $ra]
   set dec [mc_angle2deg $dec]

   set now [clock format [clock seconds] -gmt 1 -format "%Y %m %d %H %M %S"]
   set tsl [mc_date2lst $now $::eqmod::home]
   set t [expr ([lindex $tsl 0] + [lindex $tsl 1]/60. + [lindex $tsl 2]/3600.)*15.]

   # H = TSL - RA
   set h [expr $t - $ra ]
   
   ::console::affiche_resultat "H = $h ; DEC = $dec \n"

   ::eqmod::set_coord_celestial $h $dec
}



