namespace Quick.Protocol {
    public interface IQpSerializer : Object {
        public abstract string Serialize(Object obj);
        public abstract Object Deserialize(Type type, string value);
    }

    public interface IQpModel<T>: IQpSerializer {
        public abstract string SerializeT(T obj);
        public abstract T DeserializeT(string value);
    }
}
