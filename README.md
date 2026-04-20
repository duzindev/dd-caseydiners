# 🍔 dd-caseysdiner

Script completo do Casey's Diner para servidores FiveM, um restaurante americano temático com crafting de pratos selvagens, bebidas artesanais e sobremesas rústicas.

---

## Sobre

O **dd-caseysdiner** simula o funcionamento de um diner americano no estilo roadside dentro do GTA V. O cardápio tem personalidade própria: hambúrgueres feitos com carne de cervo e javali, chili de coyote, tirinhas de cascavel e sussuarana BBQ. Funcionários preparam os pratos em estações específicas e servem os clientes com um visual de boteco americano.

---

## Funcionalidades

- Sistema de crafting por estações (entradas, pratos quentes, bebidas, sobremesas)
- Cardápio visual interativo (NUI)
- Balcão e depósito com stash via ox_inventory
- Sistema de entrada/saída de serviço
- Cobrança de clientes via jim-payments
- Blip ativo no mapa por padrão
- Animações em cada ação de crafting

---

## Dependências

| Recurso | Link |
|---|---|
| qbx_core | https://github.com/Qbox-project/qbx_core |
| ox_inventory | https://github.com/overextended/ox_inventory |
| ox_target | https://github.com/overextended/ox_target |
| ox_lib | https://github.com/overextended/ox_lib |
| jim-payments | https://github.com/jimathy/jim-payments |

---

## Estações de trabalho

| Estação | Ação |
|---|---|
| Balcão | Stash público para pedidos |
| Depósito | Stash restrito a funcionários |
| Entradas | Pão com pão, tirinhas de cascavel e batatas fritas |
| Pratos Quentes | Chili de coyote, roadkiller burger e sussuarana BBQ |
| Bebidas | Café, milkshake, hidromel, chopp e Dr Pepper |
| Sobremesas | Panquecas com mel, torta de abóbora e pudim com pão |
| Ponto de Serviço | Entrar/sair de serviço |

---

## Cardápio

**Entradas**
- Pão com Pão
- Tirinhas de Cascavel
- Batatas Fritas (pré-cozidas)

**Pratos Quentes**
- Chili de Coyote
- Roadkiller Burger *(cervo + javali + queijo + alface)*
- Sussuarana BBQ

**Bebidas**
- Cafézinhuuu
- Milkshake de Blueberry
- Hidromel
- Chopp Big Iron
- Dr Pepper

**Sobremesas**
- Panquecas com Mel e Mirtilo
- Torta de Abóbora com Baunilha Selvagem
- Pudim Com Pão

---

## Instalação

Consulte o arquivo [INSTALL.md](./INSTALL.md) para instruções detalhadas de instalação, lista de itens e configuração do job.

---

## Configuração

Todas as opções ficam em `config.lua`:

```lua
Config.Job = 'caseysdiner'       -- nome do job
Config.Stations = { ... }        -- coordenadas das estações
Config.Craft = { ... }           -- receitas por estação
Config.StorageStash = { ... }    -- configuração do depósito
Config.CounterStash = { ... }    -- configuração do balcão
```

---

## Licença

Este projeto está licenciado sob a [GNU General Public License v3.0](./LICENSE).

---

## Créditos

Desenvolvido por **DUDU** — script de uso livre para servidores FiveM.
