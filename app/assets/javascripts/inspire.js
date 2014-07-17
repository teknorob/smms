function generateInspiration()
{
	var inspirationArray = [
	"The only way to prove that you’re a good sport is to lose.",
	"Only he who can see the invisible can do the impossible.",
	"When you're riding, only the race in which you're riding is important.",
	"Age is no barrier. It's a limitation you put on your mind.",
	"I always felt that my greatest asset was not my physical ability, it was my mental ability.",
	"A trophy carries dust. Memories last forever.",
	"Number one is just to gain a passion for running. To love the morning, to love the trail, to love the pace on the track. And if some kid gets really good at it, that’s cool too.",
	"Most people give up just when they're about to achieve success. They quit on the one yard line. They give up at the last minute of the game one foot from a winning touchdown.",
	"You have to do something in your life that is honourable and not cowardly if you are to live in peace with yourself.",
	"There may be people that have more talent than you, but there's no excuse for anyone to work harder than you do.",
	"Baseball is the only field of endeavour where a man can succeed three times out of ten and be considered a good performer.",
	"One man practising sportsmanship is far better than 50 preaching it.",
	"The five S’s of sports training are: stamina, speed, strength, skill, and spirit; but the greatest of these is spirit.",
	"An athlete cannot run with money in his pockets. He must run with hope in his heart and dreams in his head.",
	"Somewhere behind the athlete you've become and the hours of practice and the coaches who have pushed you is a little girl who fell in love with the game and never looked back... play for her.",
	"When you’ve got something to prove, there’s nothing greater than a challenge.",
	"Never give up, never give in, and when the upper hand is ours, may we have the ability to handle the win with the dignity that we absorbed the loss.",
	"It’s not the will to win that matters—everyone has that. It’s the will to prepare to win that matters.",
	"Persistence can change failure into extraordinary achievement.",
	"I've learned that something constructive comes from every defeat.",
	"Make sure your worst enemy doesn't live between your own two ears.",
	"Set your goals high, and don't stop till you get there.",
	"I became a good pitcher when I stopped trying to make them miss the ball and started trying to make them hit it.",
	"If you can’t outplay them, outwork them.",
	"People ask me what I do in winter when there's no baseball. I'll tell you what I do. I stare out the window and wait for spring.",
	"Most people never run far enough on their first wind to find out they’ve got a second.",
	"Do you know what my favourite part of the game is? The opportunity to play.",
	"If at first you don't succeed, you are running about average.",
	"Continuous effort — not strength or intelligence — is the key to unlocking our potential.",
	"Good is not good when better is expected.",
	"The difference between the impossible and the possible lies in a person's determination.",
	"Champions keep playing until they get it right.",
	"You were born to be a player. You were meant to be here. This moment is yours.",
	"What you lack in talent can be made up with desire, hustle, and giving 110 percent all the time.",
	"If you fail to prepare, you're prepared to fail.",
	"How you respond to the challenge in the second half will determine what you become after the game, whether you are a winner or a loser.",
	"Persistence can change failure into extraordinary achievement.",
	"Sports serve society by providing vivid examples of excellence.",
	"The principle is competing against yourself. It's about self-improvement, about being better than you were the day before.",
	"The road to Easy Street goes through the sewer.",
	"The road to Easy Street goes through the sewer.",
	"You are never really playing an opponent. You are playing yourself, your own highest standards, and when you reach your limits, that is real joy.",
	"What makes something special is not just what you have to gain, but what you feel there is to lose.",
	"The more difficult the victory, the greater the happiness in winning.",
	"One man can be a crucial ingredient on a team, but one man cannot make a team. ",
	"Nobody who ever gave his best regretted it.",
	"Stubbornness usually is considered a negative; but I think that trait has been a positive for me.",
	"You’ve got to take the initiative and play your game. In a decisive set, confidence is the difference.",
	"When you win, say nothing, when you lose, say less.",
	"The hardest skill to acquire in this sport is the one where you compete all out, give it all you have, and you are still getting beat no matter what you do. When you have the killer instinct to fight through that, it is very special.",
	"The mind is the limit. As long as the mind can envision the fact that you can do something, you can do it, as long as you really believe 100 percent.",
	"When I go out there, I have no pity on my brother. I am out there to win.",
	"When I go out there, I have no pity on my brother. I am out there to win.",
	"During my 18 years I came to bat almost 10,000 times. I struck out about 1,700 times and walked maybe 1,800 times. You figure a ballplayer will average about 500 at bats a season. That means I played seven years without ever hitting the ball.",
	"I never left the field saying I could have done more to get ready and that gives me piece of mind.",
	"Leadership, like coaching, is fighting for the hearts and souls of men and getting them to believe in you.",
	"You win some, you lose some, and some get rained out, but you gotta suit up for them all.",
	"Always make a total effort, even when the odds are against you.",
	"Most talented players don't always succeed. Some don't even make the team. It's more what's inside.",
	"You have to expect things of yourself before you can do them.",
	"To uncover your true potential you must first find your own limits and then you have to have the courage to blow past them.",
	"Show me a guy who's afraid to look bad, and I'll show you a guy you can beat every time.",
	"You can motivate by fear, and you can motivate by reward. But both those methods are only temporary. The only lasting thing is self motivation.",
	"You find that you have peace of mind and can enjoy yourself, get more sleep, and rest when you know that it was a one hundred percent effort that you gave–win or lose.",
	"My motto was always to keep swinging. Whether I was in a slump or feeling badly or having trouble off the field, the only thing to do was keep swinging.",
	"I didn't believe in team motivation. I believe in getting a team prepared so it knows it will have the necessary confidence when it steps on the field and be prepared to play a good game.",
	"If you train hard, you'll not only be hard, you'll be hard to beat.",
	"Your biggest opponent isn't the other guy. It's human nature.",
	"If you don’t have confidence, you’ll always find a way not to win.",
	"If you can believe it, the mind can achieve it.",
	"Without self-discipline, success is impossible, period.",
	"If you don’t have confidence, you’ll always find a way not to win.",
	"Obstacles don’t have to stop you. If you run into a wall, don’t turn around and give up. Figure out how to climb it, go through it, or work around it.",
	"Make each day your masterpiece.",
	"Excellence is the gradual result of always striving to do better.",
	"Win If You Can, Lose If You Must, But NEVER QUIT!",
	"Do you know what my favourite part of the game is? The opportunity to play.",
	"If you have everything under control, you're not moving fast enough.",
	"Just keep going. Everybody gets better if they keep at it.",
	"What do do with a mistake: recognize it, admit it, learn from it, forget it.",
	"Push yourself again and again. Don't give an inch until the final buzzer sounds.",
	"If you aren't going all the way, why go at all?",
	"You can’t put a limit on anything. The more you dream, the farther you get.",
	"Do not let what you can not do interfere with what you can do.",
	"Pain is temporary. It may last a minute, or an hour, or a day, or a year, but eventually it will subside and something else will take its place. If I quit, however, it lasts forever.",
	"Wisdom is always an over-match for strength.",
	"The will to win is important, but the will to prepare is vital.",
	"Adversity cause some men to break; others to break records.",
	"Never let your head hang down. Never give up and sit down and grieve. Find another way.",
	"Some people say I have attitude - maybe I do...but I think you have to. You have to believe in yourself when no one else does - that makes you a winner right there. ",
	"Never let the fear of striking out get in your way.",
	"It is not the size of a man but the size of his heart that matters.",
	"I hated every minute of training, but I said, 'Don’t quit. Suffer now and live the rest of your life as a champion.'",
	"There are only two options regarding commitment. You're either IN or you're OUT. There is no such thing as life in-between.",
	"A champion is someone who gets up when he can't.",
	"It ain't over till it's over.",
	"You're never a loser until you quit trying.",
	"Never give up! Failure and rejection are only the first step to succeeding.",
	"I've missed more than 9,000 shots in my career. I've lost almost 300 games. 26 times, I've been trusted to take the game winning shot and missed. I've failed over and over and over again in my life. And that is why I succeed.",
	"You miss 100 percent of the shots you don't take.",
	"The highest compliment that you can pay me is to say that I work hard every day, that I never dog it.",
	"Gold medals aren’t really made of gold. They’re made of sweat, determination, and a hard-to-find alloy called guts.",
	"I've missed more than 9,000 shots in my career. I've lost almost 300 games. 26 times, I've been trusted to take the game winning shot and missed. I've failed over and over and over again in my life. And that is why I succeed.",
	"It's not whether you get knocked down; it's whether you get up."
	]
	var inspirationIndex = Math.floor(Math.random()*inspirationArray.length);
	
	return inspirationArray[inspirationIndex];
	
}