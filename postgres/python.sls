{% from "postgres/map.jinja" import postgres with context %}

postgresql-python:
  pkg.installed:
    - name: {{ postgres.python}}
  module.wait:
    - name: service.restart
    - m_name: salt-minion
    - watch:
      - pkg: postgresql-python
