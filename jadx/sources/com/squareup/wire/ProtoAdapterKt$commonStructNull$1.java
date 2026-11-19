package com.squareup.wire;

import defpackage.az;
import defpackage.pq0;
import java.io.IOException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonStructNull$1", "Lcom/squareup/wire/ProtoAdapter;", "", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonStructNull$1 extends ProtoAdapter {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) throws IOException {
        protoReader32.getClass();
        int iJ = protoReader32.j();
        if (iJ == 0) {
            return null;
        }
        az.o(pq0.k(iJ, "expected 0 but was "));
        return null;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        int iN = protoReader.n();
        if (iN == 0) {
            return null;
        }
        az.o(pq0.k(iN, "expected 0 but was "));
        return null;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        protoWriter.getClass();
        protoWriter.b(0);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        reverseProtoWriter.getClass();
        reverseProtoWriter.g(0);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i2, Object obj) {
        protoWriter.getClass();
        FieldEncoding fieldEncoding = this.f43458a;
        fieldEncoding.getClass();
        ProtoWriter.f43473b.getClass();
        protoWriter.b(fieldEncoding.getValue() | (i2 << 3));
        protoWriter.b(0);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i2, Object obj) {
        reverseProtoWriter.getClass();
        reverseProtoWriter.g(0);
        FieldEncoding fieldEncoding = this.f43458a;
        fieldEncoding.getClass();
        ProtoWriter.f43473b.getClass();
        reverseProtoWriter.g(fieldEncoding.getValue() | (i2 << 3));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        ProtoWriter.f43473b.getClass();
        return ProtoWriter.Companion.a(0);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i2, Object obj) {
        ProtoWriter.Companion companion = ProtoWriter.f43473b;
        companion.getClass();
        int iA = ProtoWriter.Companion.a(0);
        companion.getClass();
        FieldEncoding fieldEncoding = FieldEncoding.VARINT;
        fieldEncoding.getClass();
        return ProtoWriter.Companion.a(iA) + ProtoWriter.Companion.a(fieldEncoding.getValue() | (i2 << 3));
    }
}
