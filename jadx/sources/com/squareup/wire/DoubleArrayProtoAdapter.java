package com.squareup.wire;

import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0013\n\u0002\u0010\u0006\n\u0002\b\u0004\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/squareup/wire/DoubleArrayProtoAdapter;", "Lcom/squareup/wire/ProtoAdapter;", "", "", "originalAdapter", "<init>", "(Lcom/squareup/wire/ProtoAdapter;)V", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DoubleArrayProtoAdapter extends ProtoAdapter<double[]> {
    public final ProtoAdapter u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DoubleArrayProtoAdapter(ProtoAdapter<Double> protoAdapter) {
        super(FieldEncoding.LENGTH_DELIMITED, Reflection.f71922a.b(double[].class), null, protoAdapter.f43460c, new double[0], null, 32, null);
        protoAdapter.getClass();
        this.u = protoAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return new double[]{Double.longBitsToDouble(protoReader32.a())};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return new double[]{Double.longBitsToDouble(protoReader.k())};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        double[] dArr = (double[]) obj;
        protoWriter.getClass();
        dArr.getClass();
        for (double d : dArr) {
            this.u.d(protoWriter, Double.valueOf(d));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        double[] dArr = (double[]) obj;
        reverseProtoWriter.getClass();
        dArr.getClass();
        int length = dArr.length;
        while (true) {
            length--;
            if (-1 >= length) {
                return;
            } else {
                reverseProtoWriter.f(Double.doubleToLongBits(dArr[length]));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i2, Object obj) {
        double[] dArr = (double[]) obj;
        protoWriter.getClass();
        if (dArr == null || dArr.length == 0) {
            return;
        }
        super.f(protoWriter, i2, dArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i2, Object obj) {
        double[] dArr = (double[]) obj;
        reverseProtoWriter.getClass();
        if (dArr == null || dArr.length == 0) {
            return;
        }
        super.g(reverseProtoWriter, i2, dArr);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        int iH = 0;
        for (double d : dArr) {
            iH += this.u.h(Double.valueOf(d));
        }
        return iH;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i2, Object obj) {
        double[] dArr = (double[]) obj;
        if (dArr == null || dArr.length == 0) {
            return 0;
        }
        return super.i(i2, dArr);
    }
}
