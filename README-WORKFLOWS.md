# Build Tizen (.wgt)

Este repositório está preparado para gerar o pacote da Samsung Tizen TV. O
workflow `.github/workflows/build-wgt.yml` cria o arquivo `OsmTwich.wgt`.

## Gerar o pacote

- Em **Actions**, escolha **Build Tizen .wgt** e use **Run workflow** para
  iniciar manualmente.
- Push para `main` também inicia o build quando há mudanças no código do app.
- Baixe `OsmTwich.wgt` em **Actions → execução → Artifacts** ou em **Releases**.

O workflow usa `index.html` e os arquivos da pasta `tizen/`. A interface,
estilos e lógica do app ficam no `index.html`; as APIs em `api/` são usadas
para autenticação e comentários de VOD.

## Instalar na TV

O pacote gerado pelo workflow não é assinado. Para instalar em uma Samsung TV
real, abra o projeto `tizen/` no Tizen Studio, configure seu certificado de
autor no Certificate Manager e instale/assine o pacote. Também é possível
executar o app diretamente no televisor conectado em modo de desenvolvedor.

## Desenvolver sua versão

Personalize o app em `index.html`, a identidade do pacote e o ícone em
`tizen/config.xml` e `tizen/icon.png`. Para usar login Twitch e APIs
serverless, configure seu próprio deploy Vercel e as variáveis necessárias em
`api/`.

A licença MIT permite usar, modificar e distribuir este código, mantendo os
avisos de copyright e licença. Confira também o aviso sobre marcas no
`README.md`.
