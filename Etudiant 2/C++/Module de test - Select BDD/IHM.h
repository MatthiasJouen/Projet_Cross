//---------------------------------------------------------------------------

#ifndef IHMH
#define IHMH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "ClassBDD.h"
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// Composants g�r�s par l'EDI
	TMemo *Memo1;
	TEdit *EditNom;
	TEdit *EditPrenom;
	TLabel *Resultat;
	TLabel *Nom;
	TLabel *Prenom;
	TButton *Valider;
	TPanel *Panel;
	TLabel *BDDPanel;
	void __fastcall ValiderClick(TObject *Sender);
private:	// D�clarations utilisateur
	ClassBDD *BDD;
public:		// D�clarations utilisateur
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif