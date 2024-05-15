using System;
using System.Collections.Generic;
using NUnit.Framework;

namespace HelloWorld.Tests
{
    [TestFixture]
    public class ConferenceTests
    {
        [Test]
        public void AddSpeaker_ShouldAddSpeakerToConference()
        {
            // Arrange
            var conference = new Conference("Test Conference", "Test Location", "Test Date");
            var speaker = new Speaker("Test Speaker", "Test Language", 30);

            // Act
            conference.AddSpeaker(speaker);

            // Assert
            Assert.Contains(speaker, conference.Speakers);
        }

        [Test]
        public void RemoveSpeaker_ShouldRemoveSpeakerFromConference()
        {
            // Arrange
            var conference = new Conference("Test Conference", "Test Location", "Test Date");
            var speaker = new Speaker("Test Speaker", "Test Language", 30);
            conference.AddSpeaker(speaker);

            // Act
            conference.RemoveSpeaker(speaker);

            // Assert
            Assert.DoesNotContain(speaker, conference.Speakers);
        }

        [Test]
        public void PrintConferenceDetails_ShouldPrintCorrectDetails()
        {
            // Arrange
            var conference = new Conference("Test Conference", "Test Location", "Test Date");

            // Act
            using (var consoleOutput = new ConsoleOutput())
            {
                conference.PrintConferenceDetails();
                var output = consoleOutput.GetOuput();

                // Assert
                Assert.IsTrue(output.Contains("Conference Name: Test Conference"));
                Assert.IsTrue(output.Contains("Conference Location: Test Location"));
                Assert.IsTrue(output.Contains("Conference Date: Test Date"));
            }
        }
    }

    public class ConsoleOutput : IDisposable
    {
        private StringWriter stringWriter;
        private TextWriter originalOutput;

        public ConsoleOutput()
        {
            stringWriter = new StringWriter();
            originalOutput = Console.Out;
            Console.SetOut(stringWriter);
        }

        public string GetOuput()
        {
            return stringWriter.ToString();
        }

        public void Dispose()
        {
            Console.SetOut(originalOutput);
            stringWriter.Dispose();
        }
    }
}
