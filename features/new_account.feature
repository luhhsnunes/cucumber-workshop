Feature: Account management

  As a customer
  I want to manage an account
  So that I can purchase products on the website

  @account
  Scenario Outline: User creates a new account
    Given I am at the home page
    When I choose to create a new account
    And I enter my '<Personal Details>'
    And I submit my details
    Then I see the '<Correspondent Message>'
    Examples:
      | Personal Details                          | Correspondent Message                               |
      | email@email.com,85145248520,senha1,senha1 | Já existe uma conta com esse email.                 |
      | email,85145248520,senha1,senha1           | Por favor insira um endereço de email válido.       |
      | email@email.com,00000000000,senha1,senha1 | CPF inválido, por favor corrija.                    |
      | email@email.com,85145248520,senha,senha   | Por favor digite 6 ou mais caracteres.              |
      | email@email.com,85145248520,senha1,senha2 | Por favor certifique-se que as senhas são idênticas |