package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.PreferencesProto$Value;

/* JADX INFO: loaded from: classes.dex */
public class MapEntryLite<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Metadata f12962a;

    public static class Metadata<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WireFormat$FieldType f12963a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f12964b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WireFormat$FieldType f12965c;
        public final Object d;

        public Metadata(WireFormat$FieldType wireFormat$FieldType, K k2, WireFormat$FieldType wireFormat$FieldType2, V v) {
            this.f12963a = wireFormat$FieldType;
            this.f12964b = k2;
            this.f12965c = wireFormat$FieldType2;
            this.d = v;
        }
    }

    public MapEntryLite(WireFormat$FieldType wireFormat$FieldType, WireFormat$FieldType wireFormat$FieldType2, PreferencesProto$Value preferencesProto$Value) {
        this.f12962a = new Metadata(wireFormat$FieldType, "", wireFormat$FieldType2, preferencesProto$Value);
    }

    public static int a(Metadata metadata, Object obj, Object obj2) {
        return FieldSet.b(metadata.f12963a, 1, obj) + FieldSet.b(metadata.f12965c, 2, obj2);
    }

    public static void b(CodedOutputStream codedOutputStream, Metadata metadata, Object obj, Object obj2) {
        FieldSet.n(codedOutputStream, metadata.f12963a, 1, obj);
        FieldSet.n(codedOutputStream, metadata.f12965c, 2, obj2);
    }
}
