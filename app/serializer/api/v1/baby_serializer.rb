class Api::V1::BabySerializer < Api::V1::BaseSerializer
  attributes :id, :name, :birthday, :mother_name, :address, :phone
end
