class Demo.HelloWorld : GLib.Object {
    public static int main(string[] args) {
        QuickProtocol.MyLib.hello();
        QuickProtocol.Tcp.MyLib.hello();

        stdout.printf("Hello, Vala\n");
        return 0;
    }
}
