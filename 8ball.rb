require 'rubygems'
require 'twilio-ruby'

def usage(stdout = false)
	stream = stdout ? $stdout : $stderr
 
	bin = File.basename($0)
	indent = " " * (bin.length() + "Usage: ".length())
 
	stream.puts("Usage: #{bin} [--help|-h]")
	stream.puts(indent + " [--yes|--no|--maybe]")
	stream.puts(indent + " [<question text> [...]]")
	stream.puts <<eof
Ask the magic 8-ball a question.
 
Force an answer category with --yes, --no or --maybe.
eof
end
 
class Array
	def rand(number = 1, allow_duplicates = false)
		if (number == 1)
			fetch(Kernel.rand(length()))
		elsif (allow_duplicates)
			a = []
			number.times do
				a << fetch(Kernel.rand(length()))
			end
			a
		else
			sort_by{Kernel.rand}[0, number]
		end
	end
end
 
$answers_yes = [
	"As I see it, yes",
	"It is certain",
	"It is decidedly so",
	"Most likely",
	"Outlook good",
	"Signs point to yes",
	"Without a doubt",
	"Yes",
	"Yes - definitely",
	"You may rely on it",
]
$answers_maybe = [
	"Reply hazy, try again",
	"Ask again later",
	"Better not tell you now",
	"Cannot predict now",
	"Concentrate and ask again",
]
$answers_no = [
	"Don't count on it",
	"My reply is no",
	"My sources say no",
	"Outlook not so good",
	"Very doubtful",
]
 
nomoreoptions = false
forcecategory = nil
 
while ($*.length() > 0)
	arg = $*.shift()
	if (arg == "--")
		nomoreoptions = true
		next
	end
	if (!nomoreoptions && arg[0,1] == "-")
		if (arg == "--help" || arg == "-h")
			usage(true)
			exit(0)
		elsif (arg == "--yes")
			forcecategory = :yes
			next
		elsif (arg == "--maybe")
			forcecategory = :maybe
			next
		elsif (arg == "--no")
			forcecategory = :no
			next
		else
			$stderr.puts("Unknown option \"#{arg}\"")
		end
	else
		# ignore question text
		next
	end
 
	# problem with arguments
	usage()
	exit(1)
end
 
if (forcecategory == :yes)
	answers = $answers_yes
elsif (forcecategory == :maybe)
	answers = $answers_maybe
elsif (forcecategory == :no)
	answers = $answers_no
else
	answers = $answers_yes + $answers_maybe + $answers_no
end
 
puts("Magic 8ball says: " + answers.rand())
exit(0)

account_sid = "AC0240f7cc96cb1958fc3eed74de648f19"
auth_token = "38fc35f29cb013f58edcdd777f50151d"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
:from => "(413)248-4171",
:to => "(719)351-3785",
:body => answers.rand()
)

puts message.to