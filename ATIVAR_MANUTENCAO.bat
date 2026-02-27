@echo off
echo ========================================
echo  ATIVANDO MODO DE MANUTENCAO
echo ========================================
echo.

if exist "index.html" (
    ren "index.html" "index.original.html"
    echo [OK] Site original salvo como index.original.html
) else (
    echo [AVISO] index.html nao encontrado
)

if exist "maintenance.html" (
    copy "maintenance.html" "index.html"
    echo [OK] Pagina de manutencao ativada
    echo.
    echo ========================================
    echo  MODO DE MANUTENCAO ATIVADO!
    echo ========================================
    echo.
    echo O site agora exibe a mensagem de manutencao.
    echo Para desativar, execute: DESATIVAR_MANUTENCAO.bat
) else (
    echo [ERRO] maintenance.html nao encontrado!
)

echo.
pause
