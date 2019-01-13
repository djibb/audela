/* libfocusfli.c
 *
 * This file is part of the AudeLA project : <http://software.audela.free.fr>
 * Copyright (C) 1998-2004 The AudeLA Core Team
 *
 * Initial author : Alain KLOTZ <alain.klotz@free.fr>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

/***************************************************************************/
/* Ce fichier contient                                                     */
/* - le fichier d'include libeteltcl.h specifique pour l'interfacage C/Tcl */
/* - le point d'entree de la librairie                                     */
/* - l'initialisation la librairie                                         */
/***************************************************************************/
/* Note : Sous Windows, il faut specifier la facon de faire pour charger   */
/*        les fichiers tcl.dll et tk.dll de facon dynamique.               */
/*        Sous Linux, on suppose que Tcl/Tk a ete installe sur le systeme  */
/*        et le lien avec tcl.so et tk.so est simplement indique dans      */
/*        le link des objets de la librairie ak (-ltcl -ltk).              */
/***************************************************************************/

/***************************************************************************/
/*               includes specifiques a l'interfacage C/Tcl                */
/***************************************************************************/
#define XTERN
#include "libfocusfli.h"

/***************************************************************************/
/*                      Point d'entree de la librairie                     */
/***************************************************************************/
#if defined(LIBRARY_DLL)
   int __cdecl Focusfli_Init(Tcl_Interp *interp)
#endif
#if defined(LIBRARY_SO)
   int Focusfli_Init(Tcl_Interp *interp)
#endif

{
   if(Tcl_InitStubs(interp,"8.3",0)==NULL) {
      Tcl_SetResult(interp,"Tcl Stubs initialization failed in libfocusfli.",TCL_STATIC);
      return TCL_ERROR;
   }

   Tcl_PkgProvide(interp,"Focusfli","1.0");

   Tcl_CreateCommand(interp,"focusfli_open",(Tcl_CmdProc *)Cmd_focusflitcl_open,(ClientData)NULL,(Tcl_CmdDeleteProc *)NULL);
   Tcl_CreateCommand(interp,"focusfli_infos",(Tcl_CmdProc *)Cmd_focusflitcl_infos,(ClientData)NULL,(Tcl_CmdDeleteProc *)NULL);
   Tcl_CreateCommand(interp,"focusfli_close",(Tcl_CmdProc *)Cmd_focusflitcl_close,(ClientData)NULL,(Tcl_CmdDeleteProc *)NULL);
   Tcl_CreateCommand(interp,"focusfli_get",(Tcl_CmdProc *)Cmd_focusflitcl_get,(ClientData)NULL,(Tcl_CmdDeleteProc *)NULL);
   Tcl_CreateCommand(interp,"focusfli_incr",(Tcl_CmdProc *)Cmd_focusflitcl_incr,(ClientData)NULL,(Tcl_CmdDeleteProc *)NULL);
   Tcl_CreateCommand(interp,"focusfli_home",(Tcl_CmdProc *)Cmd_focusflitcl_home,(ClientData)NULL,(Tcl_CmdDeleteProc *)NULL);
	return TCL_OK;
}
