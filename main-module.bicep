// create a hello world bicep module
			var module = new BicepFile("module.bicep", @"
param message string = 'hello world'

output result string = message");

			// create a main bicep file that uses the module
			var main = new BicepFile("main.bicep", @"
module module 'module.bicep' = {
  name: 'module'
  params: {
    message: 'hello world'
  }
}

output result string = module.outputs.result");

			var (template, _) = CompilationHelper.CompileFiles(module, main);
			var output = template.ToJToken();

			output.Should().HaveValueAtPath("$.outputs['result'].value", "hello world");
		}

		[TestMethod]
		public void Module_with_missing_required_parameter_should_be_an_error()
		{
			var module = new BicepFile("module.bicep", @"
param message string

output result string = message");

			var main = new BicepFile("main.bicep", @"
module module 'module.bicep' = {
  name: 'module'
  params: {
  }
}

output result string = module.outputs.result");

			var (template, _) = CompilationHelper.CompileFiles(module, main);
			var output = template.ToJToken();

			output.Should().NotHaveValueAtPath("$.outputs['result'].value");
		}

		[TestMethod]
		public void Module_with_extra_parameter_should_be_an_error()
		{
			var module = new BicepFile("module.bicep", @"
param message string

output result string = message");

			var main = new BicepFile("main.bicep", @"
module module 'module.bicep' = {
  name: 'module'
  params: {
    message: 'hello world'
    extra: 'extra'
  }
}

output result string = module.outputs.result");

			var (template, _) = CompilationHelper.CompileFiles(module, main);
			var output = template.ToJToken();

			output.Should().NotHaveValueAtPath("$.outputs['result'].value");
		}

		[TestMethod]
		public void Module_with_missing_required_object_parameter_should_be_an_error()
		{
			var module = new BicepFile("module.bicep", @"
param message object

output result string = message.name");

			var main = new BicepFile("main.bicep", @"
module module 'module.b
