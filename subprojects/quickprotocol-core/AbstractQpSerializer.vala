namespace Quick.Protocol {
    public abstract class AbstractQpSerializer<T>: Object, IQpSerializer, IQpModel<T> {
        public Object Deserialize(Type type, string value) {
            return Json.gobject_from_data(type, value, value.length);
        }

        public string Serialize(Object obj) {
            size_t gobject_to_data_length;
            return Json.gobject_to_data(obj, out gobject_to_data_length);
        }

        public T DeserializeT(string value) {
            return (T) Deserialize(typeof (T), value);
        }

        public string SerializeT(T obj) {
            return Serialize((Object)obj);
        }
    }
}
