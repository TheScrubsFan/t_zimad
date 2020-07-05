namespace :seed do
  desc 'Seed planes in redis'
  task planes: :environment do
    PlaneSeed.seed
  end
end
