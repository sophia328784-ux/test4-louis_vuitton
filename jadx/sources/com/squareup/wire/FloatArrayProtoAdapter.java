package com.squareup.wire;

import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/squareup/wire/FloatArrayProtoAdapter;", "Lcom/squareup/wire/ProtoAdapter;", "", "", "originalAdapter", "<init>", "(Lcom/squareup/wire/ProtoAdapter;)V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FloatArrayProtoAdapter extends ProtoAdapter<float[]> {
    public final ProtoAdapter u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatArrayProtoAdapter(ProtoAdapter<Float> protoAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(float[].class), null, protoAdapter.f43460c, new float[0], null, 32, null);
        protoAdapter.getClass();
        this.u = protoAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return new float[]{Float.intBitsToFloat(protoReader32.c())};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return new float[]{Float.intBitsToFloat(protoReader.j())};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        float[] fArr = (float[]) obj;
        protoWriter.getClass();
        fArr.getClass();
        for (float f2 : fArr) {
            this.u.d(protoWriter, Float.valueOf(f2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        float[] fArr = (float[]) obj;
        reverseProtoWriter.getClass();
        fArr.getClass();
        int length = fArr.length;
        while (true) {
            length--;
            if (-1 >= length) {
                return;
            } else {
                reverseProtoWriter.e(Float.floatToIntBits(fArr[length]));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i2, Object obj) {
        float[] fArr = (float[]) obj;
        protoWriter.getClass();
        if (fArr == null || fArr.length == 0) {
            return;
        }
        super.f(protoWriter, i2, fArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i2, Object obj) {
        float[] fArr = (float[]) obj;
        reverseProtoWriter.getClass();
        if (fArr == null || fArr.length == 0) {
            return;
        }
        super.g(reverseProtoWriter, i2, fArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        int iH = 0;
        for (float f2 : fArr) {
            iH += this.u.h(Float.valueOf(f2));
        }
        return iH;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i2, Object obj) {
        float[] fArr = (float[]) obj;
        if (fArr == null || fArr.length == 0) {
            return 0;
        }
        return super.i(i2, fArr);
    }
}
