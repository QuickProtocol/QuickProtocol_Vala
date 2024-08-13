namespace Quick.Protocol {
    /// <summary>
    /// 命令信息
    /// </summary>
    public class QpCommandInfo : Object {
        /// <summary>
        /// 名称
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 描述
        /// </summary>
        public string Description { get; set; }
        /// <summary>
        /// 命令请求类型名称
        /// </summary>
        public string RequestTypeName { get; set; }
        /// <summary>
        /// 请求示例
        /// </summary>
        public string RequestTypeSchemaSample { get; set; }
        /// <summary>
        /// 命令响应类型名称
        /// </summary>
        public string ResponseTypeName { get; set; }
        /// <summary>
        /// 响应示例
        /// </summary>
        public string ResponseTypeSchemaSample { get; set; }
        private IQpSerializer requestSerializer;
        private IQpSerializer responseSerializer;

        public IQpSerializer GetRequestSeriliazer() {
            return requestSerializer;
        }

        public IQpSerializer GetResponseSeriliazer() {
            return responseSerializer;
        }

        private Type requestType;
        private Type responseType;

        public QpCommandInfo() {}

        public QpCommandInfo.withParameters(string name, string description,
                                            Type requestType, Type responseType,
                                            Object defaultRequestTypeInstance, Object defaultResponseTypeInstance,
                                            IQpSerializer requestSerializer, IQpSerializer responseSerializer)
        {
            Name = name;
            Description = description;
            this.requestSerializer = requestSerializer;
            this.responseSerializer = responseSerializer;

            this.requestType = requestType;
            requestType.name();
            RequestTypeName = requestType.name();
            size_t serialize_gobject_length;
            RequestTypeSchemaSample = Json.gobject_to_data(defaultRequestTypeInstance, out serialize_gobject_length);
            this.responseType = responseType;
            ResponseTypeName = responseType.name();
            ResponseTypeSchemaSample = Json.gobject_to_data(defaultResponseTypeInstance, out serialize_gobject_length);
        }

        /// <summary>
        /// 获取命令请求类型
        /// </summary>
        /// <returns></returns>
        public Type GetRequestType() {
            return requestType;
        }

        /// <summary>
        /// 获取命令响应类型
        /// </summary>
        /// <returns></returns>
        public Type GetResponseType() {
            return responseType;
        }

        /// <summary>
        /// 创建命令信息实例
        /// </summary>
        public static QpCommandInfo Create<TRequest, TResponse> () {
            var requestType = typeof (TRequest);
            var responseType = typeof (TResponse);
            return CreateWithRequestAndResponse(Object.new(requestType), Object.new(responseType));
        }

        public static QpCommandInfo CreateWithRequestAndResponse<TRequest, TResponse> (TRequest request, TResponse response) {
            var requestType = typeof (TRequest);
            var responseType = typeof (TResponse);
            string name = null;
            if (name == null)
                name = requestType.name();

            return new QpCommandInfo.withParameters(name, "",
                                                    requestType, responseType,
                                                    (Object) request, (Object) response,
                                                    (IQpSerializer) request, (IQpSerializer) response);
        }
    }
}
