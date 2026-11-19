package com.google.crypto.tink.shaded.protobuf;

import defpackage.r81;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@CheckReturnValue
class MapFieldSchemaLite implements MapFieldSchema {
    @Override // com.google.crypto.tink.shaded.protobuf.MapFieldSchema
    public final MapFieldLite a(Object obj, Object obj2) {
        MapFieldLite mapFieldLite;
        MapFieldLite mapFieldLite2 = (MapFieldLite) obj;
        MapFieldLite mapFieldLite3 = (MapFieldLite) obj2;
        if (!mapFieldLite3.isEmpty()) {
            if (!mapFieldLite2.f34209b) {
                if (mapFieldLite2.isEmpty()) {
                    mapFieldLite = new MapFieldLite();
                } else {
                    mapFieldLite = new MapFieldLite(mapFieldLite2);
                    mapFieldLite.f34209b = true;
                }
                mapFieldLite2 = mapFieldLite;
            }
            mapFieldLite2.c();
            if (!mapFieldLite3.isEmpty()) {
                mapFieldLite2.putAll(mapFieldLite3);
            }
        }
        return mapFieldLite2;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MapFieldSchema
    public final MapEntryLite$Metadata b(Object obj) {
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MapFieldSchema
    public final MapFieldLite c(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MapFieldSchema
    public final MapFieldLite d(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MapFieldSchema
    public final Object e(Object obj) {
        ((MapFieldLite) obj).f34209b = false;
        return obj;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MapFieldSchema
    public final MapFieldLite f() {
        MapFieldLite mapFieldLite = MapFieldLite.f34208c;
        if (mapFieldLite.isEmpty()) {
            return new MapFieldLite();
        }
        MapFieldLite mapFieldLite2 = new MapFieldLite(mapFieldLite);
        mapFieldLite2.f34209b = true;
        return mapFieldLite2;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MapFieldSchema
    public final boolean g(Object obj) {
        return !((MapFieldLite) obj).f34209b;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.MapFieldSchema
    public final void h(Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        if (obj2 != null) {
            r81.h();
            return;
        }
        if (mapFieldLite.isEmpty()) {
            return;
        }
        Iterator it = mapFieldLite.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw null;
        }
    }
}
