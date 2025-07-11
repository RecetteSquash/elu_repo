# language: fr
Fonctionnalité: GH2
  
Scénario: S’assurer de l’accès même en cas de latence réseau.
  Etant donné que la machine est branchée
  Et que le système de badge est activé
  Quand je scanne mon badge
  Mais la connexion réseau est instable
  Alors le solde est affiché après un court délai