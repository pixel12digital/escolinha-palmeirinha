@echo off
echo ========================================
echo  DESATIVANDO MODO DE MANUTENCAO
echo ========================================
echo.

if exist "index.html" (
    del "index.html"
    echo [OK] Pagina de manutencao removida
)

if exist "index.original.html" (
    ren "index.original.html" "index.html"
    echo [OK] Site original restaurado
    echo.
    echo ========================================
    echo  SITE RESTAURADO COM SUCESSO!
    echo ========================================
    echo.
    echo O site voltou ao normal.
) else (
    echo [ERRO] index.original.html nao encontrado!
    echo Verifique se o modo de manutencao foi ativado corretamente.
)

echo.
pause
