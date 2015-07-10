namespace :db do
  desc 'Reset database'
  task :reset do
    on roles(:app), in: :sequence, wait: 5 do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'db:reset'
          execute :rake, 'db:seed:product_categories'
          # run "rm -rf #{release_path}/public/uploads"
        end
      end
    end
  end

  desc 'Recreate everything database'
  task :reset_all do
    on roles(:app), in: :sequence, wait: 5 do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'db:drop'
          execute :rake, 'db:create'
          execute :rake, 'db:migrate'
        end
      end
    end
  end

  desc "seed database"
  task :seed do
    on roles(:app), in: :sequence, wait: 5 do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'db:seed'
        end
      end
    end
  end
end
