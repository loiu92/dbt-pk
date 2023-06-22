{%- set schema = 'public' -%}

{%- for table in adapter.list_relations(schema) -%}
    {%- if table.type == 'table' -%}
        ALTER TABLE "{{ table.schema }}".{{ table.name }}
        ADD PRIMARY KEY (id);
    {%- endif -%}
{%- endfor -%}
