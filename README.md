# Twitch for TizenOS — Andre Maiqui

Aplicativo de código aberto para assistir à Twitch em TVs Samsung com Tizen e em navegadores, desenvolvido para navegação pelo controle remoto.

## Capturas de tela

| | | |
|---|---|---|
| <img src="https://github.com/user-attachments/assets/5abc6494-e44d-4c9a-b469-108c2488b219" width="300" /> | <img src="https://github.com/user-attachments/assets/761bbb9f-f90a-4432-9ccf-76555ffe6a1d" width="300" /> | <img src="https://github.com/user-attachments/assets/98590a47-a3ee-4c7f-a081-2ec7484ffdbd" width="300" /> |
| <img src="https://github.com/user-attachments/assets/57213eb4-232b-47f0-b80b-7523b481610e" width="300" /> | <img src="https://github.com/user-attachments/assets/c461a425-8817-4543-adcd-469b1f3b3350" width="300" /> | <img src="https://github.com/user-attachments/assets/502d4d6f-0840-41a3-9f94-aa27c1c2ee46" width="300" /> |
| <img src="https://github.com/user-attachments/assets/1e8151a1-b02a-491f-8af1-7633e8fa5cde" width="300" /> | <img src="https://github.com/user-attachments/assets/5e1292ab-7749-4819-98e1-930dd1cf2435" width="300" /> | |

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
