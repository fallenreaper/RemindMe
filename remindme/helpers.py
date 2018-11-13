
# ---------------------------------

def open_connection():
	pass

def close_connection():
	pass
	
# ---------------------------------

def tweet(tweet):
	pass
	
class Twitter:
	__API = ""
	__API_ID = ""
	__TOKEN = None
	
	@staticmethod
	def tweet(api_id, message):
		pass
	
	def __init__(self):
		pass
		
	def chk_token(self):
		if self.__TOKEN is None:
			self.connect()
		self.validate_token()
		
	sef validate_token(self):
		test = False
		if test is False:
			self.connect()
	
	def tweet_message (self, message):
		self.chk_token()
		
		
	def connect(self):
		self.__TOKEN = 123		
	