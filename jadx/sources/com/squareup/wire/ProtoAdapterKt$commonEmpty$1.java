package com.squareup.wire;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonEmpty$1", "Lcom/squareup/wire/ProtoAdapter;", "", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonEmpty$1 extends ProtoAdapter<Unit> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        int iH = protoReader32.h();
        while (true) {
            int iNextTag = protoReader32.nextTag();
            if (iNextTag == -1) {
                protoReader32.l(iH);
                return Unit.f71739a;
            }
            protoReader32.f(iNextTag);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) throws IOException {
        protoReader.getClass();
        long jD = protoReader.d();
        while (true) {
            int iG = protoReader.g();
            if (iG == -1) {
                protoReader.e(jD);
                return Unit.f71739a;
            }
            protoReader.m(iG);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        protoWriter.getClass();
        ((Unit) obj).getClass();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        reverseProtoWriter.getClass();
        ((Unit) obj).getClass();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        ((Unit) obj).getClass();
        return 0;
    }
}
