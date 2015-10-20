json.array!(@wfeats) do |wfeat|
  json.extract! wfeat, :id, :name
  json.url wfeat_url(wfeat, format: :json)
end
