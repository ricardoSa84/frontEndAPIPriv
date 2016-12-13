#File config/initializers/swagger_docs.rb
  Swagger::Docs::Config.register_apis({
  "1.0" =>  {
    :controller_base_path => "IoTWebApi/app/controllers/api/v1/",
    # the extension used for the API
    :api_extension_type => :json,
    # the output location where your .json files are written to
    :api_file_path => "public",
    # the URL base path to your API
    :base_path => "http://localhost:3000/v1/",
    # if you want to delete all .json files at each generation
    :clean_directory => true,
    # Ability to setup base controller for each api version. Api::V1::SomeController for example.
    #:parent_controller =>Api::V1::SomeController,
    # add custom attributes to api-docs
    :attributes => {
      :info => {
        "title" => "NBOS Rails Oauth provider application",
        "description" => "Rails API documention with Swagger UI."
      }
    }
  }
})