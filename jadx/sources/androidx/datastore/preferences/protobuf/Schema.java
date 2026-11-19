package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
interface Schema<T> {
    void a(Object obj, Object obj2);

    Object b();

    void c(Object obj);

    boolean d(Object obj);

    int e(AbstractMessageLite abstractMessageLite);

    void f(Object obj, CodedInputStreamReader codedInputStreamReader, ExtensionRegistryLite extensionRegistryLite);

    int g(GeneratedMessageLite generatedMessageLite);

    void h(Object obj, Writer writer);

    boolean i(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2);
}
