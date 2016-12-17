json.insurance_policies @will_names do |insurance_policy|
  json.partial! 'insurance_policy' , :insurance_policy => insurance_policy
end