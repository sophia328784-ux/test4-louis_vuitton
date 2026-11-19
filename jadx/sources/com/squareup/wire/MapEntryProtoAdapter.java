package com.squareup.wire;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0003B%\b\u0000\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/squareup/wire/MapEntryProtoAdapter;", "K", "V", "Lcom/squareup/wire/ProtoAdapter;", "", "keyAdapter", "valueAdapter", "<init>", "(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class MapEntryProtoAdapter<K, V> extends ProtoAdapter<Map.Entry<? extends K, ? extends V>> {
    public final ProtoAdapter u;
    public final ProtoAdapter v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MapEntryProtoAdapter(ProtoAdapter<K> protoAdapter, ProtoAdapter<V> protoAdapter2) {
        super(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(Map.Entry.class), null, protoAdapter2.f43460c, null, null, 48, null);
        protoAdapter.getClass();
        protoAdapter2.getClass();
        this.u = protoAdapter;
        this.v = protoAdapter2;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        throw new UnsupportedOperationException();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        protoWriter.getClass();
        entry.getClass();
        this.u.f(protoWriter, 1, entry.getKey());
        this.v.f(protoWriter, 2, entry.getValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        reverseProtoWriter.getClass();
        entry.getClass();
        this.v.g(reverseProtoWriter, 2, entry.getValue());
        this.u.g(reverseProtoWriter, 1, entry.getKey());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        return this.v.i(2, entry.getValue()) + this.u.i(1, entry.getKey());
    }
}
