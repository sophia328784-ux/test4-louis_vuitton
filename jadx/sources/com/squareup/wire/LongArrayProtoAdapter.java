package com.squareup.wire;

import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0016\n\u0002\u0010\t\n\u0002\b\u0004\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/squareup/wire/LongArrayProtoAdapter;", "Lcom/squareup/wire/ProtoAdapter;", "", "", "originalAdapter", "<init>", "(Lcom/squareup/wire/ProtoAdapter;)V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LongArrayProtoAdapter extends ProtoAdapter<long[]> {
    public final ProtoAdapter u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongArrayProtoAdapter(ProtoAdapter<Long> protoAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(long[].class), null, protoAdapter.f43460c, new long[0], null, 32, null);
        protoAdapter.getClass();
        this.u = protoAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return new long[]{((Number) this.u.b(protoReader32)).longValue()};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return new long[]{((Number) this.u.c(protoReader)).longValue()};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        long[] jArr = (long[]) obj;
        protoWriter.getClass();
        jArr.getClass();
        for (long j2 : jArr) {
            this.u.d(protoWriter, Long.valueOf(j2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        long[] jArr = (long[]) obj;
        reverseProtoWriter.getClass();
        jArr.getClass();
        int length = jArr.length;
        while (true) {
            length--;
            if (-1 >= length) {
                return;
            }
            this.u.e(reverseProtoWriter, Long.valueOf(jArr[length]));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i2, Object obj) {
        long[] jArr = (long[]) obj;
        protoWriter.getClass();
        if (jArr == null || jArr.length == 0) {
            return;
        }
        super.f(protoWriter, i2, jArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i2, Object obj) {
        long[] jArr = (long[]) obj;
        reverseProtoWriter.getClass();
        if (jArr == null || jArr.length == 0) {
            return;
        }
        super.g(reverseProtoWriter, i2, jArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        int iH = 0;
        for (long j2 : jArr) {
            iH += this.u.h(Long.valueOf(j2));
        }
        return iH;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i2, Object obj) {
        long[] jArr = (long[]) obj;
        if (jArr == null || jArr.length == 0) {
            return 0;
        }
        return super.i(i2, jArr);
    }
}
