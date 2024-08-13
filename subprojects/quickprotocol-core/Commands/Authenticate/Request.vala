namespace Quick.Protocol.Commands.Authenticate
{
    [Description (nick = "认证")]
    public class Request : AbstractQpSerializer<Request>, IQpCommandRequest<Request, Response>
    {
        /// 认证回答
        /// </summary>
        public string Answer { get; set; }
    }
}
