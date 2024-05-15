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

    // Conference class
    class Conference
    {
        public string Name { get; set; }
        public string Location { get; set; }
        public string Date { get; set; }

        public Speakers<Speaker> Speakers { get; set; }

        public Conference(string name, string location, string date)
        {
            Name = name;
            Location = location;
            Date = date;
        }

        public void PrintConferenceDetails()
        {
            Console.WriteLine("Conference Name: {0}", Name);
            Console.WriteLine("Conference Location: {0}", Location);
            Console.WriteLine("Conference Date: {0}", Date);
        }

        // Method to add a speaker to the conference
        public void AddSpeaker(Speaker speaker)
        {
            // Add speaker to the list of speakers
            Speakers.Add(speaker);

            Console.WriteLine("Speaker {0} added to conference {1}", speaker.Name, Name);
        }

        // Method to remove a speaker from the conference
        public void RemoveSpeaker(Speaker speaker)
        {
            // Remove speaker from the list of speakers
            Speakers.Remove(speaker);

            Console.WriteLine("Speaker {0} removed from conference {1}", speaker.Name, Name);
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

    class Tests
    {
        // Generate a method to test the Conference class
        public void TestConference()
        {
            // Create a new conference
            Conference conference = new Conference("Tech Summit", "New York", "2021-10-10");

            // Print conference details
            conference.PrintConferenceDetails();

            // Create a new speaker
            Speaker speaker = new Speaker("John Doe", "English", 30);

            // Add speaker to the conference
            conference.AddSpeaker(speaker);

            // Remove speaker from the conference
            conference.RemoveSpeaker(speaker);
        }
    }

    class Speakers<T>
    {
        private List<T> _speakers = new List<T>();

        public void Add(T speaker)
        {
            _speakers.Add(speaker);
        }

        public void Remove(T speaker)
        {
            _speakers.Remove(speaker);
        }
    }

    //  Main method
    class MainClass
    {
        static void Main(string[] args)
        {
            // Create a new instance of the Tests class
            Tests tests = new Tests();

            // Run the TestConference method

            tests.TestConference();

            //  Create a new instance of the Speaker class
            Speaker speaker = new Speaker("John Doe", "English", 30);

        }
    }



}