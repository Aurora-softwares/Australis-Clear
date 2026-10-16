public class Program {
    public static int Main(string[] args) {
        if (args.Length != 0) {
            System.Console.WriteLine("Usage: clear");
            return 2;
        }
        System.Australis.Terminal.Clear();
        return 0;
    }
}
