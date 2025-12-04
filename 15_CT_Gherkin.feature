# language: fr
Fonctionnalité: CT Gherkin
  
  	Scénario: Vérifier que la machine est disponible.
		Etant donné que la machine est branchée.
		Quand je passe mon badge.
		Alors je constate que mon solde s'affiche.
		
	Scénario: Vérifier que la machine est eteinte.
		Etant donné que la machine est débranchée.
		Quand je passe mon badge.
		Alors je constate que mon solde ne s'affiche pas.