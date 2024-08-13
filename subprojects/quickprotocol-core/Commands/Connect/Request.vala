namespace Quick.Protocol.Commands.Connect
{
    /// <summary>
    /// 连接请求命令
    /// </summary>
    [Description (nick = "连接")]
    public class Request : AbstractQpSerializer<Request>, IQpCommandRequest<Request, Response>
    {
        /// <summary>
        /// 指令集编号数组
        /// </summary>
        public string[] InstructionIds { get; set; }
    }
}
