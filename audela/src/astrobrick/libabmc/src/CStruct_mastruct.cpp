
#include <vector>
#include <stdio.h>
#include <string.h>

#include "CStruct_mastruct.h"

/* ********************************************************************** */
/* ********************************************************************** */
/* Builders */
/* ********************************************************************** */
/* ********************************************************************** */


/* ********************************************************************** */
/* ********************************************************************** */
/* Accessors */
/* ********************************************************************** */
/* ********************************************************************** */


int CStruct_mastruct::size(void) {
   return mastruct_tab.size();
}

abmc::mastruct *CStruct_mastruct::at(int index) {
   return &(mastruct_tab.at(index));
}

void CStruct_mastruct::append(abmc::mastruct item) {
	mastruct_tab.push_back(item);
}

/* ********************************************************************** */
/* ********************************************************************** */
/* Privates */
/* ********************************************************************** */
/* ********************************************************************** */

