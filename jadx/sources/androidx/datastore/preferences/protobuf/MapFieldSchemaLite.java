package androidx.datastore.preferences.protobuf;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@CheckReturnValue
final class MapFieldSchemaLite implements MapFieldSchema {
    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public final MapFieldLite a(Object obj, Object obj2) {
        MapFieldLite mapFieldLiteD = (MapFieldLite) obj;
        MapFieldLite mapFieldLite = (MapFieldLite) obj2;
        if (!mapFieldLite.isEmpty()) {
            if (!mapFieldLiteD.f12967b) {
                mapFieldLiteD = mapFieldLiteD.d();
            }
            mapFieldLiteD.c();
            if (!mapFieldLite.isEmpty()) {
                mapFieldLiteD.putAll(mapFieldLite);
            }
        }
        return mapFieldLiteD;
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public final MapEntryLite.Metadata b(Object obj) {
        return ((MapEntryLite) obj).f12962a;
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public final MapFieldLite c(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public final MapFieldLite d(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public final Object e(Object obj) {
        ((MapFieldLite) obj).f12967b = false;
        return obj;
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public final MapFieldLite f() {
        return MapFieldLite.f12966c.d();
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public final boolean g(Object obj) {
        return !((MapFieldLite) obj).f12967b;
    }

    @Override // androidx.datastore.preferences.protobuf.MapFieldSchema
    public final int h(Object obj, Object obj2, int i2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        MapEntryLite mapEntryLite = (MapEntryLite) obj2;
        int iF = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry entry : mapFieldLite.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            mapEntryLite.getClass();
            int iE = CodedOutputStream.e(i2);
            int iA = MapEntryLite.a(mapEntryLite.f12962a, key, value);
            iF += CodedOutputStream.f(iA) + iA + iE;
        }
        return iF;
    }
}
