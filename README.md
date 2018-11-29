pyramid_apps
============

Install dependency packages and setup ini / wsgi configuration files.

Role Variables
--------------

```yaml
pyramid_apps:
  - domain_name: DOMAIN_NAME
    project_name: PROJECT_NAME
    base_dir: PYRAMID_APP_BASE_DIR
    db_name: DATABASE_NAME
    db_encoding: DATABASE_ENCODING
    db_user: DATABASE_USER
    db_pass: DATABASE_PASSWORD
    db_host: DATABASE_HOST
    http2_enabled: BOOLEAN_WHICH_DENOTE_IF_ENABLE_HTTP2_IN_NGINX (yes or no)
```

Dependencies
------------

- pylabs.nginx
- pylabs.python_wsgiapps

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
     - pylabs.pyramid_apps
  vars:
    pyramid_apps:
      - domain_name: example.com
        project_name: project1
        base_dir: /srv/www/example.com
        db_name: project1
        db_encoding: utf8mb4
        db_user: project1
        db_pass: project1pass
        db_host: localhost
        http2_enabled: yes
      - domain_name: example.org
        project_name: project2
        base_dir: /srv/www/example.org
        db_name: project2
        db_encoding: utf8
        db_user: project2
        db_pass: project2pass
        db_host: "192.168.0.1"
        http2_enabled: no
```

License
-------

MIT

Author Information
------------------

William Wu
