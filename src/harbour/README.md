![image](https://github.com/user-attachments/assets/82e4acd7-bea0-4839-96e8-d0f945ca980e)
```
Shuffled:
-------------
Shuffle('1',0)=> 1 OK Esperado: 1
Shuffle('12',0)=> 12 OK Esperado: 12
Shuffle('123',0)=> 231 OK Esperado: 231
Shuffle('1234',0)=> 4321 OK Esperado: 4321
Shuffle('12345',0)=> 32154 OK Esperado: 32154
Shuffle('123456',0)=> 246135 OK Esperado: 246135
Shuffle('1234567',0)=> 4613572 OK Esperado: 4613572
Shuffle('12345678',0)=> 75318642 OK Esperado: 75318642
Shuffle('123456789',0)=> 531864297 OK Esperado: 531864297
Shuffle('1234567890',0)=> 3691470258 OK: Esperado: 3691470258
Shuffle('ABCDEF',0)=> BDFACE OK: Esperado: BDFACE
UnShuffled:
-------------
Shuffle(Shuffle('1',0),1)=> 1 OK Esperado: 1
Shuffle(Shuffle('12',0),1)=> 12 OK Esperado: 12
Shuffle(Shuffle('123',0),1)=> 123 OK Esperado: 123
Shuffle(Shuffle('1234',0),1)=> 1234 OK Esperado: 1234
Shuffle(Shuffle('12345',0),1)=> 12345 OK Esperado: 12345
Shuffle(Shuffle('123456',0),1)=> 123456 OK Esperado: 123456
Shuffle(Shuffle('1234567',0),1)=> 1234567 OK Esperado: 1234567
Shuffle(Shuffle('12345678',0),1)=> 12345678 OK Esperado: 12345678
Shuffle(Shuffle('123456789',0),1)=> 123456789 OK Esperado: 123456789
Shuffle(Shuffle('1234567890',0),1)=> 1234567890 OK: Esperado: 1234567890
Shuffle(Shuffle('ABCDEF',0),1)=> ABCDEF OK: Esperado: ABCDEF
```
