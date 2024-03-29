﻿//---------------------------------------------------------------------------

#pragma hdrstop

#include "ClassBDD.h"
#include <windows.h>
#include <tchar.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
//---------------------------------------------------------------------------
#pragma package(smart_init)
 ClassBDD::ClassBDD()
{
	Etat=false;
	// l'adresse de la structure permettant l'interfacage avec mySQL
	MyS=mysql_init(NULL);
}

//--Connexion à la BDD--
bool ClassBDD::Connexion(String IPMys,String IDMys,String MDPMys,String BaseMys, String *MSG_Error)
{

	myErrorCode = mysql_errno(MyS);
	if(myErrorCode == 0)
	{
		// Allocation d'espace mémoire
		char* IP=new char[IPMys.Length()+1];
		char* ID=new char[IDMys.Length()+1];
		char* MDP=new char[MDPMys.Length()+1];
		char* Base=new char[BaseMys.Length()+1];
		// Conversion de String en char
		wcstombs(IP,IPMys.c_str(),IPMys.Length()+1);
		wcstombs(ID,IDMys.c_str(),IDMys.Length()+1);
		wcstombs(MDP,MDPMys.c_str(),MDPMys.Length()+1);
		wcstombs(Base,BaseMys.c_str(),BaseMys.Length()+1);
		// Connexion a la BDD
		if (!mysql_real_connect(MyS,IP,ID,MDP,Base, 0, NULL, 0)) {
			// la connection a échoué
			myErrorMsg = mysql_error(MyS);
			*MSG_Error = myErrorMsg;
			Etat = false;
		} else {
			// la connection a réussi
			Etat = true;
		}	}else{
		//Renvoie l'erreur
		myErrorMsg = mysql_error(MyS);
		*MSG_Error = myErrorMsg;
		Etat = false;
	}
	return Etat;
}

//--Envoi de requetes SELECT a la BDD--
bool ClassBDD::Select(vector<String> *resultats, String *MSG_Error, String requeteMyS)
{
	//tableau en 2 dimensions pour enregistrer les resultats des requetes SELECT
	vector<String> c_resultats;

	// Allocation espace memoire
	char* requete=new char[requeteMyS.Length()+1];
	// Conversion de String en char
	wcstombs(requete,requeteMyS.c_str(),requeteMyS.Length()+1);
	//si il y a bien une requete
	if (!mysql_query(MyS, requete))
	{
		myRES = mysql_store_result(MyS);
		if (myRES)
		{
			for(unsigned int i = 0; i < myRES->row_count; i++)//ligne par ligne
			{
				AnsiString aStr;
				myROW = mysql_fetch_row(myRES);
				for(unsigned int j = 0; j < mysql_num_fields(myRES); j++)
				{
					aStr = myROW[j]; //on stocke le resultat pour chaque ligne
					c_resultats.push_back(aStr);//on l'insere dans le vector
				}
			}
			mysql_free_result(myRES);
		}

		*resultats = c_resultats;//permet de recupere rles resultats dans le main
		return true;//si ça a marché
	}
	else
	{
		return false;//si ça a échoué
	}
}

//--Envoie une requete--//
bool ClassBDD::Query(String *MSG_Error, String requeteMyS)
{
	myErrorCode = mysql_errno(MyS);
	if(myErrorCode == 0)
	{
		// Allocation espace m�moire
		char* requete=new char[requeteMyS.Length()+1];
		// Conversion de String en char
		wcstombs(requete,requeteMyS.c_str(),requeteMyS.Length()+1);
		// Envoie de la requ�te
		if(!mysql_query(MyS,requete)){
			Etat = true;
		}else{
			Etat = false;
		}
	}else{
		//Renvoie l'erreur
		myErrorMsg = mysql_error(MyS);
		*MSG_Error = myErrorMsg;
		Etat = false;
	}
	return Etat;
}
//--Deconnexion de la BDD--//
bool ClassBDD::Deconnexion()
{
	// Vérifie que la connexion est établie avant de la déconnecter
	mysql_close(MyS);
}
