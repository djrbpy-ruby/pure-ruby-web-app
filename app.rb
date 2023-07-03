class App
    def call(env)
      headers = {
        'Content-Type' => 'text/html'
      }
      
      return [200, headers, ['favicon alt text XD']] if env['PATH_INFO']=='/favicon.ico'

      response_html = File.read 'views/index.html'
      response = [response_html]
      [200, headers, response]
    end
  end