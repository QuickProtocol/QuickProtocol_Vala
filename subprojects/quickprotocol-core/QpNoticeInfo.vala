namespace Quick.Protocol {
    /// <summary>
    /// 通知信息
    /// </summary>
    public class QpNoticeInfo : Object {
        private Type noticeType;

        /// <summary>
        /// 名称
        /// </summary>
        [Description (nick = "名称")]
        public string Name { get; set; }
        /// <summary>
        /// 描述
        /// </summary>
        [Description (nick = "描述")]
        public string Description { get; set; }
        /// <summary>
        /// 通知类型名称
        /// </summary>
        [Description (nick = "类型")]
        public string NoticeTypeName { get; set; }

        private IQpSerializer noticeSerializer;
        public IQpSerializer GetNoticeSerializer () {
            return noticeSerializer;
        }

        public QpNoticeInfo () {}
        public QpNoticeInfo.withParameters (string name, string description, Type noticeType, Object defaultNoticeTypeInstance, IQpSerializer noticeSerializer) {
            Name = name;
            Description = description;
            this.noticeType = noticeType;
            NoticeTypeName = noticeType.name ();
            this.noticeSerializer = noticeSerializer;
            size_t serialize_gobject_length;
            NoticeTypeSchemaSample = Json.gobject_to_data (defaultNoticeTypeInstance, out serialize_gobject_length);
        }

        /// <summary>
        /// 获取通知类型
        /// </summary>
        public Type GetNoticeType () {
            return noticeType;
        }

        /// <summary>
        /// 示例
        /// </summary>
        [Description (nick = "示例")]
        public string NoticeTypeSchemaSample { get; set; }

        /// <summary>
        /// 创建通知信息实例
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static QpNoticeInfo Create<T> () {
            return CreateWithInstance (Object.new (typeof (T)));
        }

        /// <summary>
        /// 创建通知信息实例
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static QpNoticeInfo CreateWithInstance<T> (T instance) {
            var type = typeof (T);
            string name = null;
            if (name == null)
                name = type.name ();

            return new QpNoticeInfo.withParameters (name, "",
                                                    type,
                                                    (Object) instance,
                                                    (IQpSerializer) instance);
        }
    }
}
