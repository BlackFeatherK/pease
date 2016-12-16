json.insurance_policies @insurance_policies do |insurance_policy|
  json.partial! 'insurance_policy' , :insurance_policy => insurance_policy
end