/* cdevice.h
 *
 * This file is part of the AudeLA project : <http://software.audela.free.fr>
 * Copyright (C) 1998-2004 The AudeLA Core Team
 *
 * Initial author : Denis MARCHAIS <denis.marchais@free.fr>
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

#ifndef __CDEVICEH__
#define __CDEVICEH__

#define BUF_PREFIXE "buf"
#define TEL_PREFIXE "tel"
#define CAM_PREFIXE "cam"
//#define VISU_PREFIXE "visu"
#define LINK_PREFIXE "link"

class CDevice {
      protected:
      public:
   CDevice *next;
   CDevice *prev;
   int no;
   char channel[256];
   CDevice();
   virtual ~CDevice();
   char deviceThreadId[50];
   char libraryName[256];
};

#endif


