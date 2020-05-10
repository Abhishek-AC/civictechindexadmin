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
