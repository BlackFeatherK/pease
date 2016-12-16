json.accounts @accounts do |account|
  json.partial! "account" , :account => account
end