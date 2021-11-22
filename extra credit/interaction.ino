int speakerPin = 12;
int playPin = 8;
int tone_idx = 0;
unsigned char for_processing_tone_idx;
int old_tone_idx;
//int tones[]={1915, 1700, 1519, 1432, 1275, 1136, 1014, 956, 852, 759, 716, 638, 568, 506, 478, 426};
int tones[] = {1915, 1700, 1519, 1432, 1275, 1136, 1014, 956, 852, 759}; //10 Tones
char* tone_str[] = {"Do", "Re", "Mi", "Fa", "So", "La", "Si", "Do+", "Re+", "Me+"};
int old_playPin_ST, cur_playPin_ST;

void setup()
{
  Serial.begin(9600);
  pinMode(speakerPin, OUTPUT);
  pinMode(playPin, INPUT_PULLUP);
}

void loop()
{
  int av;
  tone_idx = analogRead(0); //Reas A0 for tone
  av = tone_idx;
  tone_idx = map(tone_idx, 0, 1023, 0, 10); //0~9 are used.
  if (tone_idx == 10) tone_idx = 9; //10 tones
  if (old_tone_idx != tone_idx || tone_idx == 80) {
    for_processing_tone_idx = tone_idx;
    Serial.write(tone_idx);
  }
  cur_playPin_ST = digitalRead(playPin);
  if (old_playPin_ST == HIGH && cur_playPin_ST == LOW) Serial.write('P');
  if (old_playPin_ST == LOW && cur_playPin_ST == HIGH) Serial.write('Q');
  if (cur_playPin_ST == LOW) playTone(tone_idx);
  old_playPin_ST = cur_playPin_ST;
  old_tone_idx = tone_idx;
}

void playTone(int tone_idx)
{
  int duration = 1;
  int tone;
  tone = tones[tone_idx];
  for (long i = 0; i < duration * 1000L; i += tone * 2) {
    digitalWrite(speakerPin, HIGH);
    delayMicroseconds(tone);
    digitalWrite(speakerPin, LOW);
    delayMicroseconds(tone);
  }
}
