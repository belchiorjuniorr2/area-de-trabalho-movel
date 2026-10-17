# Aviso de modificação (NOTICE)

**Área de Trabalho Móvel** é uma obra derivada do **Dextop**:

- Projeto original: **Dextop** — https://github.com/NarYuki/Dextop
- Autor original: **NarYuki** e colaboradores
- Licença: GNU General Public License v3.0 ou posterior (GPL-3.0-or-later), veja [LICENSE](LICENSE)
- Versão de origem: Dextop 1.7.1 (commit `4dc3ddf7af438561f3083d862d26fab1ffd96941`)

Todo o histórico de commits do projeto original foi preservado neste repositório. Os avisos de
copyright originais e as licenças de terceiros (pasta `third_party/`) foram mantidos sem alteração.

## Esta é uma versão modificada

Modificada por **José Belchior** em **17 de outubro de 2026**. Principais alterações em relação ao original:

1. **Nome e identidade:** o app passou a se chamar "Área de Trabalho Móvel", com novo ícone
   (criado do zero) e novo identificador de pacote `br.com.belchior.areadetrabalhomovel`.
   Os nomes internos do código (pacote Kotlin `moe.n4tsu.dextop`, classes etc.) foram mantidos.
2. **Português do Brasil:** tradução revisada de todas as strings da interface (`lib/l10n/app_pt_BR.arb`
   e `app_pt.arb`), e o pt-BR passou a ser o idioma padrão/fallback (Flutter e recursos nativos do Android).
3. **Contatos e destinos:** removidos o Firebase Analytics, o envio de relatórios por e-mail ao autor
   original e os links para Google Play/Discord do projeto original. Relatórios de aparelho e
   verificação de atualizações agora apontam para https://github.com/belchiorjuniorr2/area-de-trabalho-movel.
4. **Assinatura:** o APK publicado é assinado com uma chave nova, própria deste projeto.
5. **Documentação e site:** README em pt-BR e uma landing page em `site/`.

Esta versão não é afiliada, endossada nem mantida por NarYuki. Problemas desta versão devem ser
relatados em https://github.com/belchiorjuniorr2/area-de-trabalho-movel/issues.

Conforme a GPL-3.0, o código-fonte completo desta versão está disponível neste repositório.
