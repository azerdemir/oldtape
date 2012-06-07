class Clementine < ActiveRecord::Base
  self.establish_connection(
    {  :adapter => 'sqlite3',
	   :database => 'db/clementine.db',
	   :pool => 5,
	   :timeout => 5000
	}
 )
end