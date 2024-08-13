namespace Quick.Protocol {
    public class Base : Object {
        private static QpInstruction _Instruction;
        public static QpInstruction GetInstruction() {
            if (_Instruction == null) {
                _Instruction = new QpInstruction();
                _Instruction.Id = "Quick.Protocol.Base";
                _Instruction.Name = "基础指令集";
                _Instruction.NoticeInfos = {
                    // QpNoticeInfo.Create (new Notices.PrivateNotice ())
                };
                _Instruction.CommandInfos = {
                    QpCommandInfo.Create<Commands.Connect.Request, Commands.Connect.Response> (),
                    QpCommandInfo.Create<Commands.Authenticate.Request, Commands.Authenticate.Response> (),
                    // QpCommandInfo.Create (new Commands.HandShake.Request ()),
                    // QpCommandInfo.Create (new Commands.PrivateCommand.Request ()),
                    // QpCommandInfo.Create (new Commands.GetQpInstructions.Request ())
                };
            }
            return _Instruction;
        }
    }
}
