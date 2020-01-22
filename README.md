pyramid_apps
============

Install dependency packages and setup ini / wsgi configuration files.

Role Variables
--------------

```yaml
pyramid_apps_base_dir: YOUR BASE DIR (default: /srv/www)
pyramid_apps:
  - domain_name: DOMAIN_NAME
    project_name: PROJECT_NAME
    repo_url: SCM_REPO_URL
    base_dir: PYRAMID_APP_BASE_DIR
    db_name: DATABASE_NAME
    db_encoding: DATABASE_ENCODING
    db_user: DATABASE_USER
    db_pass: DATABASE_PASSWORD
    db_host: DATABASE_HOST
    ssl_enabled: BOOLEAN_WHICH_DENOTE_IF_ENABLE_SSL_IN_NGINX (yes or no)
```

Dependencies
------------

- pylabs.python3
- pylabs.uwsgi
- pylabs.add_ssh_known_hosts
- pylabs.nginx
- pylabs.mariadb

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
        repo_url: git@github.com/foo/bar.git
        base_dir: /srv/www/example.com
        db_name: project1
        db_encoding: utf8mb4
        db_user: project1
        db_pass: project1pass
        db_host: localhost
        ssl_enabled: yes
      - domain_name: example.org
        project_name: project2
        repo_url: git@github.com/bar/foo.git
        base_dir: /srv/www/example.org
        db_name: project2
        db_encoding: utf8
        db_user: project2
        db_pass: project2pass
        db_host: "192.168.0.1"
        ssl_enabled: no
```

License
-------

MIT

Author Information
------------------

William Wu <william@pylabs.org>
