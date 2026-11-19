package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
abstract class NewInstanceSchemas {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NewInstanceSchema f12983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final NewInstanceSchemaLite f12984b;

    static {
        Protobuf protobuf = Protobuf.f12985c;
        NewInstanceSchema newInstanceSchema = null;
        try {
            newInstanceSchema = (NewInstanceSchema) Class.forName("androidx.datastore.preferences.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f12983a = newInstanceSchema;
        f12984b = new NewInstanceSchemaLite();
    }
}
