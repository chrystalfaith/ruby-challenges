<html>

<head><title>Magic 8 Ball</title></head>

<body>
<h2>Magic 8 Ball</h2><p>

<?

If ($question)
	{
	$result = Rand (1,20);
	Echo "Your question: $question <p>";
	if ($result ==1)
		{Echo "The 8 ball says: It is certain.";}
	if ($result ==2)
		{Echo "The 8 ball says: It is decidedly so.";}
	if ($result ==3)
		{Echo "The 8 ball says: Without a doubt.";}
	if ($result ==4)
		{Echo "The 8 ball says: Yes, definitely.";}
	if ($result ==5)
		{Echo "The 8 ball says: You may rely on it.";}
	if ($result ==6)
		{Echo "The 8 ball says: As I see it, yes.";}
	if ($result ==7)
		{Echo "The 8 ball says: Most likely.";}
	if ($result ==8)
		{Echo "The 8 ball says: Outlook good.";}
	if ($result ==9)
		{Echo "The 8 ball says: Yes.";}
	if ($result ==10)
		{Echo "The 8 ball says: Signs point to yes.";}
	if ($result ==11)
		{Echo "The 8 ball says: Reply hazy. Try again.";}
	if ($result ==12)
		{Echo "The 8 ball says: Ask again later.";}
	if ($result ==13)
		{Echo "The 8 ball says: Better not tell you now.";}
	if ($result ==14)
		{Echo "The 8 ball says: Cannot predict now.";}
	if ($result ==15)
		{Echo "The 8 ball says: Concentrate and ask again.";}
	if ($result ==16)
		{Echo "The 8 ball says: Don't count on it.";}
	if ($result ==17)
		{Echo "The 8 ball says: My reply is no.";}
	if ($result ==18)
		{Echo "The 8 ball says: My sources say no.";}
	if ($result ==19)
		{Echo "The 8 ball says: Outlook not so good.";}
	if ($result ==20)
		{Echo "The 8 ball says: Very doubtful.";}
	}
?>

<form action = "<?php echo $_SERVER[PHP_SELF]; ?>" method = "post">
<p>
Question: <input type="text" name="question" />
<input type = "submit" name = "Ask" />
</form>
</body>
</html>