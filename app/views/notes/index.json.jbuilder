json.array!(@notes) do |note|
  json.extract! note, :notes, :institute_id
  json.url note_url(note, format: :json)
end
