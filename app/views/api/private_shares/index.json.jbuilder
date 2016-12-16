json.private_shares @private_shares do |private_share|
  json.partial! 'private_share' , :private_share => private_share
end