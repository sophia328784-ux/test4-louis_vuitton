package com.squareup.wire;

import defpackage.md;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0003B%\b\u0000\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/squareup/wire/MapProtoAdapter;", "K", "V", "Lcom/squareup/wire/ProtoAdapter;", "", "keyAdapter", "valueAdapter", "<init>", "(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MapProtoAdapter<K, V> extends ProtoAdapter<Map<K, ? extends V>> {
    public final MapEntryProtoAdapter u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MapProtoAdapter(ProtoAdapter<K> protoAdapter, ProtoAdapter<V> protoAdapter2) {
        super(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(Map.class), null, protoAdapter2.f43460c, MapsKt.c(), null, 32, null);
        protoAdapter.getClass();
        protoAdapter2.getClass();
        this.u = new MapEntryProtoAdapter(protoAdapter, protoAdapter2);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        MapEntryProtoAdapter mapEntryProtoAdapter = this.u;
        Object objB = mapEntryProtoAdapter.u.d;
        ProtoAdapter protoAdapter = mapEntryProtoAdapter.v;
        Object objB2 = protoAdapter.d;
        int iH = protoReader32.h();
        while (true) {
            int iNextTag = protoReader32.nextTag();
            if (iNextTag == -1) {
                break;
            }
            if (iNextTag == 1) {
                objB = mapEntryProtoAdapter.u.b(protoReader32);
            } else if (iNextTag == 2) {
                objB2 = protoAdapter.b(protoReader32);
            }
        }
        protoReader32.l(iH);
        if (objB == null) {
            md.k("Map entry with null key");
            return null;
        }
        if (objB2 != null) {
            return MapsKt.h(new Pair(objB, objB2));
        }
        md.k("Map entry with null value");
        return null;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        MapEntryProtoAdapter mapEntryProtoAdapter = this.u;
        Object objC = mapEntryProtoAdapter.u.d;
        ProtoAdapter protoAdapter = mapEntryProtoAdapter.v;
        Object objC2 = protoAdapter.d;
        long jD = protoReader.d();
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                break;
            }
            if (iG == 1) {
                objC = mapEntryProtoAdapter.u.c(protoReader);
            } else if (iG == 2) {
                objC2 = protoAdapter.c(protoReader);
            }
        }
        protoReader.e(jD);
        if (objC == null) {
            md.k("Map entry with null key");
            return null;
        }
        if (objC2 != null) {
            return MapsKt.h(new Pair(objC, objC2));
        }
        md.k("Map entry with null value");
        return null;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        protoWriter.getClass();
        ((Map) obj).getClass();
        throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        reverseProtoWriter.getClass();
        ((Map) obj).getClass();
        throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i2, Object obj) {
        Map map = (Map) obj;
        protoWriter.getClass();
        if (map == null) {
            return;
        }
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            this.u.f(protoWriter, i2, it.next());
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i2, Object obj) {
        Map map = (Map) obj;
        reverseProtoWriter.getClass();
        if (map == null) {
            return;
        }
        Map.Entry[] entryArr = (Map.Entry[]) map.entrySet().toArray(new Map.Entry[0]);
        ArraysKt.O(entryArr);
        for (Map.Entry entry : entryArr) {
            this.u.g(reverseProtoWriter, i2, entry);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        ((Map) obj).getClass();
        throw new UnsupportedOperationException("Repeated values can only be sized with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i2, Object obj) {
        Map map = (Map) obj;
        int i3 = 0;
        if (map == null) {
            return 0;
        }
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            i3 += this.u.i(i2, it.next());
        }
        return i3;
    }
}
