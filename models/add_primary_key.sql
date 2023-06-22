{%- for table in adapter.list_relations() -%}
{%- if table.type == 'table' -%}
    ALTER TABLE {{ table.name }}
    ADD PRIMARY KEY (id);
{%- endif -%}
{%- endfor -%}
