package com.squareup.wire;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonUint64$1", "Lcom/squareup/wire/ProtoAdapter;", "", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonUint64$1 extends ProtoAdapter<Long> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return Long.valueOf(protoReader32.m());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return Long.valueOf(protoReader.o());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        long jLongValue = ((Number) obj).longValue();
        protoWriter.getClass();
        protoWriter.c(jLongValue);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        long jLongValue = ((Number) obj).longValue();
        reverseProtoWriter.getClass();
        reverseProtoWriter.h(jLongValue);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        long jLongValue = ((Number) obj).longValue();
        ProtoWriter.f43473b.getClass();
        return ProtoWriter.Companion.b(jLongValue);
    }
}
