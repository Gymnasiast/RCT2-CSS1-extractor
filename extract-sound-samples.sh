#!/bin/bash
# Separate the CSS1 metadata from the samples
dd if=css1.dat ibs=260 skip=1 of=samples.dat

# Extract the samples (metadata plus raw pcm data) from the samples file
dd if=samples.dat of=lift1.sample ibs=80652 count=1
dd if=samples.dat of=straight-running.sample ibs=1 skip=80652 count=62444
dd if=samples.dat of=running-fast.sample ibs=1 skip=143096 count=63912
dd if=samples.dat of=scream1.sample ibs=1 skip=207008 count=148776
dd if=samples.dat of=click1.sample ibs=1 skip=355784 count=1692
dd if=samples.dat of=click2.sample ibs=1 skip=357476 count=568
dd if=samples.dat of=place-item.sample ibs=1 skip=358044 count=1312
dd if=samples.dat of=scream2.sample ibs=1 skip=359356 count=104044
dd if=samples.dat of=scream3.sample ibs=1 skip=463400 count=96840
dd if=samples.dat of=scream4.sample ibs=1 skip=560240 count=159944
dd if=samples.dat of=scream5.sample ibs=1 skip=720184 count=174640
dd if=samples.dat of=scream6.sample ibs=1 skip=894824 count=209788
dd if=samples.dat of=lift2.sample ibs=1 skip=1104612 count=44436
dd if=samples.dat of=kaching.sample ibs=1 skip=1149048 count=25412
dd if=samples.dat of=crash.sample ibs=1 skip=1174460 count=206804
dd if=samples.dat of=water1.sample ibs=1 skip=1381264 count=19676
dd if=samples.dat of=water2.sample ibs=1 skip=1400940 count=50848
dd if=samples.dat of=water3.sample ibs=1 skip=1451788 count=40168
dd if=samples.dat of=steam-train-whistle.sample ibs=1 skip=1491956 count=149584
dd if=samples.dat of=steam-train-departing.sample ibs=1 skip=1641540 count=228564
dd if=samples.dat of=splash.sample ibs=1 skip=1870104 count=90568
dd if=samples.dat of=go-kart-engine.sample ibs=1 skip=1960672 count=11776
dd if=samples.dat of=launch1.sample ibs=1 skip=1972448 count=45428
dd if=samples.dat of=launch2.sample ibs=1 skip=2017876 count=68904
dd if=samples.dat of=cough1.sample ibs=1 skip=2086780 count=38940
dd if=samples.dat of=cough2.sample ibs=1 skip=2125720 count=34052
dd if=samples.dat of=cough3.sample ibs=1 skip=2159772 count=25516
dd if=samples.dat of=cough4.sample ibs=1 skip=2185288 count=29176
dd if=samples.dat of=rain1.sample ibs=1 skip=2214464 count=403320
dd if=samples.dat of=thunder1.sample ibs=1 skip=2617784 count=120728
dd if=samples.dat of=thunder2.sample ibs=1 skip=2738512 count=205692
dd if=samples.dat of=rain2.sample ibs=1 skip=2944204 count=94276
dd if=samples.dat of=rain3.sample ibs=1 skip=3038480 count=83500
dd if=samples.dat of=balloon-pop.sample ibs=1 skip=3121980 count=10616
dd if=samples.dat of=hammer.sample ibs=1 skip=3132596 count=15208
dd if=samples.dat of=scream7.sample ibs=1 skip=3147804 count=113412
dd if=samples.dat of=toilet-flush.sample ibs=1 skip=3261216 count=118388
dd if=samples.dat of=click3.sample ibs=1 skip=3379604 count=2368
dd if=samples.dat of=duck-quack.sample ibs=1 skip=3381972 count=31164
dd if=samples.dat of=message.sample ibs=1 skip=3413136 count=9964
dd if=samples.dat of=open-window.sample ibs=1 skip=3423100 count=8216
dd if=samples.dat of=laugh1.sample ibs=1 skip=3431316 count=25288
dd if=samples.dat of=laugh2.sample ibs=1 skip=3456604 count=28292
dd if=samples.dat of=laugh3.sample ibs=1 skip=3484896 count=37788
dd if=samples.dat of=won-scenario.sample ibs=1 skip=3522684 count=882800
dd if=samples.dat of=haunted-house1.sample ibs=1 skip=4405484 count=141616
dd if=samples.dat of=haunted-house2.sample ibs=1 skip=4547100 count=43236
dd if=samples.dat of=cry1.sample ibs=1 skip=4590336 count=60704
dd if=samples.dat of=brake1.sample ibs=1 skip=4651040 count=17244
dd if=samples.dat of=brake2.sample ibs=1 skip=4668284 count=18460
dd if=samples.dat of=error.sample ibs=1 skip=4686744 count=3004
dd if=samples.dat of=brake3.sample ibs=1 skip=4689748 count=11108
dd if=samples.dat of=lift3.sample ibs=1 skip=4700856 count=74036
dd if=samples.dat of=lift4-woodenrc.sample ibs=1 skip=4774892 count=78828
dd if=samples.dat of=woodenrc-running.sample ibs=1 skip=4853720 count=57232
dd if=samples.dat of=lift5-steelmouse.sample ibs=1 skip=4910952 count=66020
dd if=samples.dat of=lift6-bm.sample ibs=1 skip=4976972 count=193012
dd if=samples.dat of=straight-running-bm.sample ibs=1 skip=5169984 count=103456
dd if=samples.dat of=cry2.sample ibs=1 skip=5273440 count=78908
dd if=samples.dat of=tram.sample ibs=1 skip=5352348 count=41632
dd if=samples.dat of=door1.sample ibs=1 skip=5393980 count=12564
dd if=samples.dat of=door2.sample ibs=1 skip=5406544 count=12564
dd if=samples.dat of=door3.sample ibs=1 skip=5419108

# Separate the sample metadata from the raw PCM data
dd if=lift1.sample of=lift1.pcm ibs=16 skip=1
dd if=straight-running.sample of=straight-running.pcm ibs=16 skip=1
dd if=running-fast.sample of=running-fast.pcm ibs=16 skip=1
dd if=scream1.sample of=scream1.pcm ibs=16 skip=1
dd if=click1.sample of=click1.pcm ibs=16 skip=1
dd if=click2.sample of=click2.pcm ibs=16 skip=1
dd if=place-item.sample of=place-item.pcm ibs=16 skip=1
dd if=scream2.sample of=scream2.pcm ibs=16 skip=1
dd if=scream3.sample of=scream3.pcm ibs=16 skip=1
dd if=scream4.sample of=scream4.pcm ibs=16 skip=1
dd if=scream5.sample of=scream5.pcm ibs=16 skip=1
dd if=scream6.sample of=scream6.pcm ibs=16 skip=1
dd if=lift2.sample of=lift2.pcm ibs=16 skip=1
dd if=kaching.sample of=kaching.pcm ibs=16 skip=1
dd if=crash.sample of=crash.pcm ibs=16 skip=1
dd if=water1.sample of=water1.pcm ibs=16 skip=1
dd if=water2.sample of=water2.pcm ibs=16 skip=1
dd if=water3.sample of=water3.pcm ibs=16 skip=1
dd if=steam-train-whistle.sample of=steam-train-whistle.pcm ibs=16 skip=1
dd if=steam-train-departing.sample of=steam-train-departing.pcm ibs=16 skip=1
dd if=splash.sample of=splash.pcm ibs=16 skip=1
dd if=go-kart-engine.sample of=go-kart-engine.pcm ibs=16 skip=1
dd if=launch1.sample of=launch1.pcm ibs=16 skip=1
dd if=launch2.sample of=launch2.pcm ibs=16 skip=1
dd if=cough1.sample of=cough1.pcm ibs=16 skip=1
dd if=cough2.sample of=cough2.pcm ibs=16 skip=1
dd if=cough3.sample of=cough3.pcm ibs=16 skip=1
dd if=cough4.sample of=cough4.pcm ibs=16 skip=1
dd if=rain1.sample of=rain1.pcm ibs=16 skip=1
dd if=thunder1.sample of=thunder1.pcm ibs=16 skip=1
dd if=thunder2.sample of=thunder2.pcm ibs=16 skip=1
dd if=rain2.sample of=rain2.pcm ibs=16 skip=1
dd if=rain3.sample of=rain3.pcm ibs=16 skip=1
dd if=balloon-pop.sample of=balloon-pop.pcm ibs=16 skip=1
dd if=hammer.sample of=hammer.pcm ibs=16 skip=1
dd if=scream7.sample of=scream7.pcm ibs=16 skip=1
dd if=toilet-flush.sample of=toilet-flush.pcm ibs=16 skip=1
dd if=click3.sample of=click3.pcm ibs=16 skip=1
dd if=duck-quack.sample of=duck-quack.pcm ibs=16 skip=1
dd if=message.sample of=message.pcm ibs=16 skip=1
dd if=open-window.sample of=open-window.pcm ibs=16 skip=1
dd if=laugh1.sample of=laugh1.pcm ibs=16 skip=1
dd if=laugh2.sample of=laugh2.pcm ibs=16 skip=1
dd if=laugh3.sample of=laugh3.pcm ibs=16 skip=1
dd if=won-scenario.sample of=won-scenario.pcm ibs=16 skip=1
dd if=haunted-house1.sample of=haunted-house1.pcm ibs=16 skip=1
dd if=haunted-house2.sample of=haunted-house2.pcm ibs=16 skip=1
dd if=cry1.sample of=cry1.pcm ibs=16 skip=1
dd if=brake1.sample of=brake1.pcm ibs=16 skip=1
dd if=brake2.sample of=brake2.pcm ibs=16 skip=1
dd if=error.sample of=error.pcm ibs=16 skip=1
dd if=brake3.sample of=brake3.pcm ibs=16 skip=1
dd if=lift3.sample of=lift3.pcm ibs=16 skip=1
dd if=lift4-woodenrc.sample of=lift4-woodenrc.pcm ibs=16 skip=1
dd if=woodenrc-running.sample of=woodenrc-running.pcm ibs=16 skip=1
dd if=lift5-steelmouse.sample of=lift5-steelmouse.pcm ibs=16 skip=1
dd if=lift6-bm.sample of=lift6-bm.pcm ibs=16 skip=1
dd if=straight-running-bm.sample of=straight-running-bm.pcm ibs=16 skip=1
dd if=cry2.sample of=cry2.pcm ibs=16 skip=1
dd if=tram.sample of=tram.pcm ibs=16 skip=1
dd if=door1.sample of=door1.pcm ibs=16 skip=1
dd if=door2.sample of=door2.pcm ibs=16 skip=1
dd if=door3.sample of=door3.pcm ibs=16 skip=1

# Convert the raw pcm data to wav files
ffmpeg -f s16le -ar 22050 -ac 1 -i lift1.pcm lift1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i straight-running.pcm straight-running.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i running-fast.pcm running-fast.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i scream1.pcm scream1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i click1.pcm click1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i click2.pcm click2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i place-item.pcm place-item.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i scream2.pcm scream2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i scream3.pcm scream3.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i scream4.pcm scream4.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i scream5.pcm scream5.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i scream6.pcm scream6.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i lift2.pcm lift2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i kaching.pcm kaching.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i crash.pcm crash.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i water1.pcm water1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i water2.pcm water2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i water3.pcm water3.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i steam-train-whistle.pcm steam-train-whistle.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i steam-train-departing.pcm steam-train-departing.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i splash.pcm splash.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i go-kart-engine.pcm go-kart-engine.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i launch1.pcm launch1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i launch2.pcm launch2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i cough1.pcm cough1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i cough2.pcm cough2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i cough3.pcm cough3.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i cough4.pcm cough4.wav
#This one is in stereo!
ffmpeg -f s16le -ar 22050 -ac 2 -i rain1.pcm rain1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i thunder1.pcm thunder1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i thunder2.pcm thunder2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i rain2.pcm rain2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i rain3.pcm rain3.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i balloon-pop.pcm balloon-pop.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i hammer.pcm hammer.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i scream7.pcm scream7.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i toilet-flush.pcm toilet-flush.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i click3.pcm click3.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i duck-quack.pcm duck-quack.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i message.pcm message.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i open-window.pcm open-window.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i laugh1.pcm laugh1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i laugh2.pcm laugh2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i laugh3.pcm laugh3.wav
#This one is in stereo!
ffmpeg -f s16le -ar 22050 -ac 2 -i won-scenario.pcm won-scenario.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i haunted-house1.pcm haunted-house1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i haunted-house2.pcm haunted-house2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i cry1.pcm cry1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i brake1.pcm brake1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i brake2.pcm brake2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i error.pcm error.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i brake3.pcm brake3.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i lift3.pcm lift3.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i lift4-woodenrc.pcm lift4-woodenrc.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i woodenrc-running.pcm woodenrc-running.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i lift5-steelmouse.pcm lift5-steelmouse.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i lift6-bm.pcm lift6-bm.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i straight-running-bm.pcm straight-running-bm.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i cry2.pcm cry2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i tram.pcm tram.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i door1.pcm door1.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i door2.pcm door2.wav
ffmpeg -f s16le -ar 22050 -ac 1 -i door3.pcm door3.wav

# Remove temporary files
rm samples.dat
rm lift1.sample lift1.pcm
rm straight-running.sample straight-running.pcm
rm running-fast.sample running-fast.pcm
rm scream1.sample scream1.pcm
rm click1.sample click1.pcm
rm click2.sample click2.pcm
rm place-item.sample place-item.pcm
rm scream2.sample scream2.pcm
rm scream3.sample scream3.pcm
rm scream4.sample scream4.pcm
rm scream5.sample scream5.pcm
rm scream6.sample scream6.pcm
rm lift2.sample lift2.pcm
rm kaching.sample kaching.pcm
rm crash.sample crash.pcm
rm water1.sample water1.pcm
rm water2.sample water2.pcm
rm water3.sample water3.pcm
rm steam-train-whistle.sample steam-train-whistle.pcm
rm steam-train-departing.sample steam-train-departing.pcm
rm splash.sample splash.pcm
rm go-kart-engine.sample go-kart-engine.pcm
rm launch1.sample launch1.pcm
rm launch2.sample launch2.pcm
rm cough1.sample cough1.pcm
rm cough2.sample cough2.pcm
rm cough3.sample cough3.pcm
rm cough4.sample cough4.pcm
rm rain1.sample rain1.pcm
rm thunder1.sample thunder1.pcm
rm thunder2.sample thunder2.pcm
rm rain2.sample rain2.pcm
rm rain3.sample rain3.pcm
rm balloon-pop.sample balloon-pop.pcm
rm hammer.sample hammer.pcm
rm scream7.sample scream7.pcm
rm toilet-flush.sample toilet-flush.pcm
rm click3.sample click3.pcm
rm duck-quack.sample duck-quack.pcm
rm message.sample message.pcm
rm open-window.sample open-window.pcm
rm laugh1.sample laugh1.pcm
rm laugh2.sample laugh2.pcm
rm laugh3.sample laugh3.pcm
rm won-scenario.sample won-scenario.pcm
rm haunted-house1.sample haunted-house1.pcm
rm haunted-house2.sample haunted-house2.pcm
rm cry1.sample cry1.pcm
rm brake1.sample brake1.pcm
rm brake2.sample brake2.pcm
rm error.sample error.pcm
rm brake3.sample brake3.pcm
rm lift3.sample lift3.pcm
rm lift4-woodenrc.sample lift4-woodenrc.pcm
rm woodenrc-running.sample woodenrc-running.pcm
rm lift5-steelmouse.sample lift5-steelmouse.pcm
rm lift6-bm.sample lift6-bm.pcm
rm straight-running-bm.sample straight-running-bm.pcm
rm cry2.sample cry2.pcm
rm tram.sample tram.pcm
rm door1.sample door1.pcm
rm door2.sample door2.pcm
rm door3.sample door3.pcm

exit 0
