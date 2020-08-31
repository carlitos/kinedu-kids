# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

set :application, "kinedu-kids"
set :repo_url, 'git@gitlab.com:carlitos.castro/vacunar-app.git'
set :rails_env, 'production'
set :deploy_user, 'deploy'
set :deploy_to, "/home/deploy/#{fetch :application}"
set :migration_role, :db
set :migration_servers, -> { primary(fetch(:migration_role)) }
set :conditionally_migrate, false
set :use_sudo, true
set :deploy_via, :copy
set :ssh_options, { :forward_agent => true }


append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads", "public/packs", ".bundle", "node_modules"
set :keep_releases, 5
set :branch, 'master'
set :rbenv_ruby, '2.6.5'
set :rbenv_type, :user

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  desc "Run rake yarn install"
  task :yarn_install do
    on roles(:web) do
      within release_path do
        execute("cd #{release_path} && yarn install --silent --no-progress --no-audit --no-optional")
      end
    end
  end

  desc "Assets precompile"


  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end
