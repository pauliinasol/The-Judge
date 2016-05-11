json.array!(@login_tests) do |login_test|
  json.extract! login_test, :id
  json.url login_test_url(login_test, format: :json)
end
