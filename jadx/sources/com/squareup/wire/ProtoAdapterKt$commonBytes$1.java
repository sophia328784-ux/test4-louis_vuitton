package com.squareup.wire;

import kotlin.Metadata;
import okio.ByteString;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"com/squareup/wire/ProtoAdapterKt$commonBytes$1", "Lcom/squareup/wire/ProtoAdapter;", "Lokio/ByteString;", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProtoAdapterKt$commonBytes$1 extends ProtoAdapter<ByteString> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return protoReader32.b();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return protoReader.i();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        ByteString byteString = (ByteString) obj;
        protoWriter.getClass();
        byteString.getClass();
        protoWriter.a(byteString);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        ByteString byteString = (ByteString) obj;
        reverseProtoWriter.getClass();
        byteString.getClass();
        reverseProtoWriter.d(byteString);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        ByteString byteString = (ByteString) obj;
        byteString.getClass();
        return byteString.e();
    }
}
