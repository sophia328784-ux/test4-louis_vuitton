package com.squareup.wire;

import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/squareup/wire/IntArrayProtoAdapter;", "Lcom/squareup/wire/ProtoAdapter;", "", "", "originalAdapter", "<init>", "(Lcom/squareup/wire/ProtoAdapter;)V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class IntArrayProtoAdapter extends ProtoAdapter<int[]> {
    public final ProtoAdapter u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntArrayProtoAdapter(ProtoAdapter<Integer> protoAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(int[].class), null, protoAdapter.f43460c, new int[0], null, 32, null);
        protoAdapter.getClass();
        this.u = protoAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return new int[]{((Number) this.u.b(protoReader32)).intValue()};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return new int[]{((Number) this.u.c(protoReader)).intValue()};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        int[] iArr = (int[]) obj;
        protoWriter.getClass();
        iArr.getClass();
        for (int i2 : iArr) {
            this.u.d(protoWriter, Integer.valueOf(i2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        int[] iArr = (int[]) obj;
        reverseProtoWriter.getClass();
        iArr.getClass();
        int length = iArr.length;
        while (true) {
            length--;
            if (-1 >= length) {
                return;
            }
            this.u.e(reverseProtoWriter, Integer.valueOf(iArr[length]));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i2, Object obj) {
        int[] iArr = (int[]) obj;
        protoWriter.getClass();
        if (iArr == null || iArr.length == 0) {
            return;
        }
        super.f(protoWriter, i2, iArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i2, Object obj) {
        int[] iArr = (int[]) obj;
        reverseProtoWriter.getClass();
        if (iArr == null || iArr.length == 0) {
            return;
        }
        super.g(reverseProtoWriter, i2, iArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        int iH = 0;
        for (int i2 : iArr) {
            iH += this.u.h(Integer.valueOf(i2));
        }
        return iH;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i2, Object obj) {
        int[] iArr = (int[]) obj;
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        return super.i(i2, iArr);
    }
}
