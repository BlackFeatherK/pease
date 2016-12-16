json.funerals @funerals do |funeral|
  json.partial! 'funeral' , funeral: funeral
end