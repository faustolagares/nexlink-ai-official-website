#!/bin/bash

# Cores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Iniciando servidor local para NexLink AI...${NC}"

# Navega para a pasta do tema AI Agency
cd "$(dirname "$0")/html/01.ai-agency"

# Verifica se Python está disponível
if command -v python3 &> /dev/null; then
    echo -e "${GREEN}✓ Python encontrado${NC}"
    echo -e "${BLUE}📡 Servidor rodando em: http://localhost:8000${NC}"
    echo -e "${BLUE}💡 Pressione Ctrl+C para parar o servidor${NC}"
    echo ""
    
    # Abre o navegador após 2 segundos
    (sleep 2 && open http://localhost:8000) &
    
    # Inicia o servidor
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    echo -e "${GREEN}✓ Python encontrado${NC}"
    echo -e "${BLUE}📡 Servidor rodando em: http://localhost:8000${NC}"
    echo -e "${BLUE}💡 Pressione Ctrl+C para parar o servidor${NC}"
    echo ""
    
    # Abre o navegador após 2 segundos
    (sleep 2 && open http://localhost:8000) &
    
    # Inicia o servidor
    python -m SimpleHTTPServer 8000
else
    echo -e "${RED}✗ Python não encontrado. Por favor, instale Python ou use outra opção.${NC}"
    exit 1
fi

