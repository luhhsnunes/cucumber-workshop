Feature: Account management

  As a customer
  I want to manage an account
  So that I can purchase products on the website

  Background:
    Given I am logged in as a customer
    And I am at customer account page
    When I choose to edit my account details

  @account
  Scenario: Managing user profile
    Then I am redirected to the edit account page
    And I see following customer details available to edit:
      | Primeiro Nome     |
      | Último Nome       |
      | Endereço de email |
      | CPF               |
      | RG                |
      | Sexo              |
      | Trocar Senha      |

  @account
  Scenario Outline: Editing customer details
    And I edit my '<Personal Information>' with '<New Information>'
    And I save my details
    Then I see the '<Correspondent Message>'
    Examples:
      | Personal Information | New Information | Correspondent Message                         |
      | CPF                  | 85145248520     | A informação de conta foi salva.              |
      | Endereço de email    | email           | Por favor insira um endereço de email válido. |
      | Último Nome          |                 | Este é um campo obrigatório.                  |
