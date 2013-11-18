SinOsc beep => Envelope envelope => dac;
1.0 => beep.gain;
880 => beep.freq;
envelope.keyOff();

120.0 => float tempo;
(60.0/tempo)::second => dur corchea;

while(1){
    0.9::corchea => now;
    envelope.keyOn();
   0.1::corchea => now;
   envelope.keyOff();

}

