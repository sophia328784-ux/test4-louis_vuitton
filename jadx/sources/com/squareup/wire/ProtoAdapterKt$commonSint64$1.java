package com.squareup.wire;

import java.io.IOException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonSint64$1", "Lcom/squareup/wire/ProtoAdapter;", "", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonSint64$1 extends ProtoAdapter<Long> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        ProtoWriter.Companion companion = ProtoWriter.f43473b;
        long jM = protoReader32.m();
        companion.getClass();
        return Long.valueOf((jM >>> 1) ^ (-(jM & 1)));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        ProtoWriter.Companion companion = ProtoWriter.f43473b;
        long jO = protoReader.o();
        companion.getClass();
        return Long.valueOf((jO >>> 1) ^ (-(jO & 1)));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        long jLongValue = ((Number) obj).longValue();
        protoWriter.getClass();
        ProtoWriter.f43473b.getClass();
        protoWriter.c((jLongValue >> 63) ^ (jLongValue << 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        long jLongValue = ((Number) obj).longValue();
        reverseProtoWriter.getClass();
        ProtoWriter.f43473b.getClass();
        reverseProtoWriter.h((jLongValue >> 63) ^ (jLongValue << 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        long jLongValue = ((Number) obj).longValue();
        ProtoWriter.f43473b.getClass();
        return ProtoWriter.Companion.b((jLongValue >> 63) ^ (jLongValue << 1));
    }
}
