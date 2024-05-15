using System;
using System.IO;
using NUnit.Framework;

namespace HelloWorld.Tests
{
    [TestFixture]
    public class SpeakerTests
    {
        [Test]
        public void Speak_ShouldPrintHelloWorld()
        {
            // Arrange
            var speaker = new Speaker("Test Speaker", "Test Language", 30);

            // Act
            using (var consoleOutput = new ConsoleOutput())
            {
                speaker.Speak();
                var output = consoleOutput.GetOuput();

                // Assert
                Assert.IsTrue(output.Contains("Hello World!"));
            }
        }

        [Test]
        public void GetSpeakerID_ShouldReturnIDInRange()
        {
            // Arrange
            var speaker = new Speaker("Test Speaker", "Test Language", 30);

            // Act
            var id = speaker.SpeakerID;

            // Assert
            Assert.GreaterOrEqual(id, 1);
            Assert.LessOrEqual(id, 1000);
        }
    }
}
