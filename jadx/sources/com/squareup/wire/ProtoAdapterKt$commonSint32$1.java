package com.squareup.wire;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonSint32$1", "Lcom/squareup/wire/ProtoAdapter;", "", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonSint32$1 extends ProtoAdapter<Integer> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        ProtoWriter.Companion companion = ProtoWriter.f43473b;
        int iJ = protoReader32.j();
        companion.getClass();
        return Integer.valueOf((iJ >>> 1) ^ (-(iJ & 1)));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        ProtoWriter.Companion companion = ProtoWriter.f43473b;
        int iN = protoReader.n();
        companion.getClass();
        return Integer.valueOf((iN >>> 1) ^ (-(iN & 1)));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        int iIntValue = ((Number) obj).intValue();
        protoWriter.getClass();
        ProtoWriter.f43473b.getClass();
        protoWriter.b((iIntValue >> 31) ^ (iIntValue << 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        int iIntValue = ((Number) obj).intValue();
        reverseProtoWriter.getClass();
        ProtoWriter.f43473b.getClass();
        reverseProtoWriter.g((iIntValue >> 31) ^ (iIntValue << 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        int iIntValue = ((Number) obj).intValue();
        ProtoWriter.f43473b.getClass();
        return ProtoWriter.Companion.a((iIntValue >> 31) ^ (iIntValue << 1));
    }
}
