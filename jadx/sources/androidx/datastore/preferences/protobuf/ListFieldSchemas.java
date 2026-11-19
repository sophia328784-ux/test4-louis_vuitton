package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
abstract class ListFieldSchemas {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ListFieldSchema f12956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ListFieldSchemaLite f12957b;

    static {
        Protobuf protobuf = Protobuf.f12985c;
        ListFieldSchema listFieldSchema = null;
        try {
            listFieldSchema = (ListFieldSchema) Class.forName("androidx.datastore.preferences.protobuf.ListFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f12956a = listFieldSchema;
        f12957b = new ListFieldSchemaLite();
    }
}
