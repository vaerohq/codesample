namespace :data do

  desc 'insert data'
  task insert_data: :environment do
    filename = 'data/example_data.tsv'
    filepath = Rails.root.join(filename)
  end
end
