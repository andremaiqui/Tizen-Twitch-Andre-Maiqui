# Compilação e publicação para Tizen (.wgt)

Este repositório está configurado para gerar o pacote da Samsung Tizen TV. O fluxo de trabalho `.github/workflows/build-wgt.yml` cria um arquivo no padrão `Twitch-for-TizenOS-Andre-Maiqui-<versão>.wgt`.

## Gerar o pacote

- Na aba **Ações**, selecione **Compilar Tizen (.wgt)** e clique em **Executar fluxo de trabalho** para iniciar manualmente.
- Cada envio de alterações para a branch `main` também inicia a compilação.
- Baixe `Twitch-for-TizenOS-Andre-Maiqui-<versão>.wgt` em **Ações → execução → Artefatos** ou na página de **Versões**.

O fluxo usa `index.html` e os arquivos da pasta `tizen/`. A interface, os estilos e a lógica do app ficam em `index.html`; as APIs em `api/` cuidam da autenticação e dos comentários de VOD.

## Instalar na TV

O pacote gerado não é assinado. Para instalar em uma Samsung TV, abra o projeto `tizen/` no Tizen Studio, configure seu certificado de autor no Gerenciador de certificados e assine/instale o pacote. Também é possível executar o app diretamente em uma TV conectada no modo de desenvolvedor.

## Criar sua própria versão

Personalize o app em `index.html`, a identidade do pacote em `tizen/config.xml` e o ícone em `tizen/icon.png`. Para usar o acesso à conta Twitch e as APIs serverless, configure sua própria implantação na Vercel e as variáveis necessárias em `api/`.

A licença MIT permite usar, modificar e distribuir este código, desde que os avisos de direitos autorais e da licença sejam mantidos. Consulte também o aviso sobre marcas no `README.md`.
