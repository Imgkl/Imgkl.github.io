$("#type").typeIt({
		speed: 50,

	})
	.tiType("01001001 00100000 01")
	.tiPause(200)
	.tiDelete(30)
	.tiType('I am Sai Gokula Krishnan,');



$("#type2").typeIt({
		speed: 75,
		loop: true,

	})
	.tiType("Flutter dev")
	.tiPause(200)
	.tiDelete(30)
	.tiType("Front-end Dev")
	.tiPause(200)
	.tiDelete(30)
	.tiType("Android Dev");