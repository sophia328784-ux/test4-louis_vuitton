package androidx.datastore.preferences.protobuf;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
interface Reader {
    long a();

    ByteString b();

    int c();

    String d();

    int e();

    int f();

    boolean g();

    int getTag();

    long h();

    String i();

    void j(Map map, MapEntryLite.Metadata metadata, ExtensionRegistryLite extensionRegistryLite);
}
