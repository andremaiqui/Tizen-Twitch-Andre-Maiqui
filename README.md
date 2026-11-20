<p align="center">
  <img src="twitch-logo.png" alt="Logo da Twitch" width="480">
</p>

<h1 align="center">Twitch for TizenOS — Andre Maiqui</h1>

<p align="center">Aplicativo de código aberto para assistir à Twitch em TVs Samsung com Tizen e em navegadores, desenvolvido para navegação pelo controle remoto.</p>

## Recursos

- Menu lateral navegável pelo direcional do controle remoto.
- Canais seguidos, destaques, principais streamers e jogos.
- Reprodutor com reprodução automática, seleção de qualidade e busca em vídeos sob demanda (VODs).
- Chat integrado com emotes da Twitch e da 7TV, distintivos e reprodução do chat em VODs.
- Acesso à conta Twitch por redirecionamento ou QR Code.
- Preferências de tema, tamanho e cor do texto e tamanho dos cartões.
- Ajustes do reprodutor, incluindo qualidade e tamanho/posição do chat.
- Modo `perf-lite` para TVs com menos recursos.

## Instalação na TV Samsung

O GitHub Actions gera o pacote `.wgt`. Baixe-o na aba **Ações → execução → Artefatos** ou em **Versões** e instale-o usando o Tizen Studio.

> O arquivo `.wgt` gerado não vem assinado. Para instalá-lo em uma TV, assine o pacote com seu próprio certificado no Gerenciador de certificados do Tizen Studio.

## Desenvolvimento

A interface e a lógica do aplicativo ficam em `index.html` (HTML, CSS e JavaScript, sem frameworks). O backend serverless em Vercel (`/api/*`) gerencia a autenticação Twitch e o acesso aos comentários de VODs.

Consulte [README-WORKFLOWS.md](README-WORKFLOWS.md) para instruções de compilação e publicação.

## Licença

Este projeto está disponível sob a licença [MIT](LICENSE). Você pode usar, copiar, modificar e distribuir o código, desde que mantenha os avisos de direitos autorais e da licença.

## Aviso

Este projeto não é afiliado nem endossado pela Twitch ou pela Samsung. Twitch, seus emotes e seu logotipo são marcas da Twitch Interactive, Inc.
