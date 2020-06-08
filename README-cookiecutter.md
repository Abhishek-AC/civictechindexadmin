Getting Started
===============

This project was generated with
(CookieCutter-Django)[https://cookiecutter-django.readthedocs.io/en/latest/project-generation-options.html]
Using the options:
      timezone: America/Los_Angeles
      use_docker: yes
      postgresql_version: 11.3  (though Heroku's default is now 12 so we probably want to change this to 12)
      js_task_runner: None      (we might want Gulp)
      cloud_provider: AWS
      mail_service: Amazon SES
      use_async: no             (Should we?)
      use_drv: yes
      custom_bootstrap_compilation: no
      use_compressor: no
      use_celery: no
      use_mailhog: yes          (Library for testing email sending)
      use_sentry: no
      use_whitenoise: yes
      use_heroku: yes
      ci_tool: None             (Only options were Travis CI and GitLab CI)
      keep_local_envs_in_vcs: yes

Now that we have a project generated, follow the instructions on the
Cookie Cutter doc site:
https://cookiecutter-django.readthedocs.io/en/latest/developing-locally-docker.html

1. Build the container `docker-compose -f local.yml build`
2. Run the 3 containers we need `docker-compose -f local.yml up`


Features
--------

The generated project is set up to already include Django All-Auth -
which means people could authenticate using their GitHub credentials
if you set up an OAuth provider on the project's GitHub project.


Bugs?
-----

I created and ran the containers locally:

$ docker-compose -f local.yml build
$ docker-compose -f local.yml up

Then I logged in with `docker exec -ti django bash`, but I could not
run most of the normal manage.py commands because there was no
DATABASE_URL set. It looks to me like the Dockerfile
(compose/local/django/Dockerfile) should be copying the entrypoint
file that creates this variable, but doesn't seem to be behaving
correctly for me. Setting this explicitly with:

export DATABASE_URL="postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}"

allowed me to see the usual complement of options when running
`./manage.py` without a command arguement.
