package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
abstract class MapFieldSchemas {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MapFieldSchema f12968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MapFieldSchemaLite f12969b;

    static {
        Protobuf protobuf = Protobuf.f12985c;
        MapFieldSchema mapFieldSchema = null;
        try {
            mapFieldSchema = (MapFieldSchema) Class.forName("androidx.datastore.preferences.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f12968a = mapFieldSchema;
        f12969b = new MapFieldSchemaLite();
    }
}
