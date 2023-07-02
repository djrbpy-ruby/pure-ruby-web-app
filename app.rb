class App
    def call(env)
      headers = {
        'Content-Type' => 'text/html'
      }
      
      return [200, headers, ['favicon alt text XD']] if env['PATH_INFO']=='/favicon.ico'

      response = ['<h1>Welcome to Simple Web Application</h1>']
      
      [200, headers, response]
    end
  end