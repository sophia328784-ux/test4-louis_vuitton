package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
abstract class ExtensionSchemas {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExtensionSchemaLite f12934a = new ExtensionSchemaLite();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ExtensionSchema f12935b;

    static {
        Protobuf protobuf = Protobuf.f12985c;
        ExtensionSchema extensionSchema = null;
        try {
            extensionSchema = (ExtensionSchema) Class.forName("androidx.datastore.preferences.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f12935b = extensionSchema;
    }
}
