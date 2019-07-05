require 'httpclient'


def getHttpClient
  if $http == nil
  $http = HTTPClient.new
  end
  return $http
end

def invokeGetRequest(uri)
  puts uri
  res = getHttpClient.get(uri)
  expect(res.status).to be_between(200,299).inclusive
  json_resp = JSON.parse(res.body)
  json_resp
end

def invokePostRequest(uri,request_body)
  extheader = {'Content-Type' => 'application/json'}
  puts uri
  puts request_body
  res = getHttpClient.post(uri,request_body,extheader)
  expect(res.status).to be_between(200,299).inclusive
  json_resp = JSON.parse(res.body)
  json_resp
end

def invokePatchRequest(uri,request_body)
  extheader = {'Content-Type' => 'application/json'}
  puts uri
  puts request_body
  res = getHttpClient.patch(uri,request_body,extheader)
  expect(res.status).to be_between(200,299).inclusive
  json_resp = JSON.parse(res.body)
  json_resp
end