// write a hello world example in c# 
using System;

namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }
    }

    class Speaker
    {

        public string Name { get; set; }
        public string Language { get; set; }

        public sbyte Age { get; set; }

        public int SpeakerID { get; set; }

        public Speaker(string name, string language, sbyte age)
        {
            Name = name;
            Language = language;
            Age = age;
            SpeakerID = GetSpeakerID();
        }

        private int GetSpeakerID(){
            // Generate random speaker ID from 1 to 1000
            Random random = new Random();
            int _speakerID = random.Next(1, 1000);

            return _speakerID;
        }

        public void Speak()
        {
            Console.WriteLine("Hello World!");
        }
    }
}