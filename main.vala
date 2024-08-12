class Demo.HelloWorld : GLib.Object {
    public static int main(string[] args) {
        var mylib = new MyLib();
        mylib.hello();
        stdout.printf("Hello, World\n");
        return 0;
    }
}
