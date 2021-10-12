# frozen_string_literal: true

MOVIES = {
  'The Fast and the Furious' =>	'tt0232500',
  '2 Fast 2 Furious' => 'tt0322259',
  'The Fast and the Furious: Tokyo Drift' => 'tt0463985',
  'Fast & Furious' =>	'tt1013752',
  'Fast Five' => 'tt1596343',
  'Fast & Furious 6' =>	'tt1905041',
  'Furious 7' => 'tt2820852',
  'The Fate of the Furious' => 'tt4630562'
}.freeze

MOVIES.each do |title, omdb_id|
  print '.'
  Catalog::Movies::Repository.create(title: title, movies_api_id: omdb_id)
end
