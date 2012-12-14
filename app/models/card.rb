class Card < ActiveRecord::Base
def self.upload(upload)
    name =  upload.original_filename
    directory = "public/upload_documents"
    # create the file path
    path = File.join(directory, name)
    # write the file
	
	
    File.open(path, "wb") { |f| f.write(upload.read) }
  end
end
