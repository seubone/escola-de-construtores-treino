-- A TABELA DE TREINO — cole no SQL Editor do SEU projeto gratuito do Supabase.
-- Ela é a «gaveta» das tarefas: cada linha é uma tarefa, cada coluna, uma informação dela.
-- ⚠️ Rode só no seu projeto de treino, nunca no banco de uma empresa.

create table if not exists tarefas (
  id         bigint generated always as identity primary key, -- o número da ficha, que o banco dá sozinho
  titulo     text    not null,                                -- o que é para fazer
  feito      boolean not null default false,                  -- já foi feito?
  criada_em  timestamptz not null default now()               -- quando a tarefa nasceu
);

insert into tarefas (titulo, feito) values
  ('Abrir o projeto de treino no VS Code', true),
  ('Ler o LEIAME.md', true),
  ('Trocar o texto da página pelo meu nome', false),
  ('Gravar a mudança com um bom título', false),
  ('Abrir o meu primeiro pull request', false);

-- Para conferir: select * from tarefas order by id;
