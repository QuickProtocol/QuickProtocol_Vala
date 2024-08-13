class Demo.HelloWorld : GLib.Object {
    public static int main(string[] args) {
        var obj = Quick.Protocol.Base.GetInstruction();
        Json.Node root = Json.gobject_serialize(obj);
        Json.Generator generator = new Json.Generator();
        generator.set_root(root);
        generator.set_pretty(true);
        string data = generator.to_data(null);

        stdout.printf(@"$data\n");
        stdout.printf("Hello, QuickProtocol.\n");
        return 0;
    }
}
