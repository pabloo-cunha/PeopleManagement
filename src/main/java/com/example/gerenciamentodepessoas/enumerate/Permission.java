package com.example.gerenciamentodepessoas.enumerate;

public enum Permission {

    ADMINISTRATOR, // TODAS AS PERMISSÕES
    EMPLOYEE, // Colaborador que somente poderá cadastrar, mas não poderá alterar ou excluir sem a permissão do MANAGER OU ADMINISTRADOR.
    MANAGER, // Tipo de permissão que poderá gerar relatório, mas não terá acesso a todas as informações do
    // banco de dados
    TESTE; // Teste para verificar se o erro de compilação é corrigido
}
