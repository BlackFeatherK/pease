json.private_shares @will_names do |private_share|
  json.partial! 'private_share' , :private_share => private_share
end