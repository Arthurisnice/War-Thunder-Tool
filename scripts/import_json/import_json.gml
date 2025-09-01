function import_json(file_name) {
  var loaded_buffer = buffer_load(file_name);
  var raw_json = buffer_read(loaded_buffer, buffer_text);
  var parsed_json = json_parse(raw_json);
  buffer_delete(loaded_buffer);
  return parsed_json;
}