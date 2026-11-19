package com.googlecode.mp4parser.util;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class Matrix {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Matrix f35737j = new Matrix(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Matrix f35738k = new Matrix(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix l = new Matrix(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix m = new Matrix(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f35739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f35740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f35741c;
    public final double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f35742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f35743f;
    public final double g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final double f35744h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final double f35745i;

    public Matrix(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f35739a = d5;
        this.f35740b = d6;
        this.f35741c = d7;
        this.d = d;
        this.f35742e = d2;
        this.f35743f = d3;
        this.g = d4;
        this.f35744h = d8;
        this.f35745i = d9;
    }

    public static Matrix a(ByteBuffer byteBuffer) {
        double d = IsoTypeReader.d(byteBuffer);
        double d2 = IsoTypeReader.d(byteBuffer);
        double dC = IsoTypeReader.c(byteBuffer);
        return new Matrix(d, d2, IsoTypeReader.d(byteBuffer), IsoTypeReader.d(byteBuffer), dC, IsoTypeReader.c(byteBuffer), IsoTypeReader.c(byteBuffer), IsoTypeReader.d(byteBuffer), IsoTypeReader.d(byteBuffer));
    }

    public final void b(ByteBuffer byteBuffer) {
        IsoTypeWriter.b(byteBuffer, this.d);
        IsoTypeWriter.b(byteBuffer, this.f35742e);
        IsoTypeWriter.a(byteBuffer, this.f35739a);
        IsoTypeWriter.b(byteBuffer, this.f35743f);
        IsoTypeWriter.b(byteBuffer, this.g);
        IsoTypeWriter.a(byteBuffer, this.f35740b);
        IsoTypeWriter.b(byteBuffer, this.f35744h);
        IsoTypeWriter.b(byteBuffer, this.f35745i);
        IsoTypeWriter.a(byteBuffer, this.f35741c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Matrix matrix = (Matrix) obj;
        return Double.compare(matrix.d, this.d) == 0 && Double.compare(matrix.f35742e, this.f35742e) == 0 && Double.compare(matrix.f35743f, this.f35743f) == 0 && Double.compare(matrix.g, this.g) == 0 && Double.compare(matrix.f35744h, this.f35744h) == 0 && Double.compare(matrix.f35745i, this.f35745i) == 0 && Double.compare(matrix.f35739a, this.f35739a) == 0 && Double.compare(matrix.f35740b, this.f35740b) == 0 && Double.compare(matrix.f35741c, this.f35741c) == 0;
    }

    public final int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f35739a);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f35740b);
        int i2 = (((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.f35741c);
        int i3 = (i2 * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.d);
        int i4 = (i3 * 31) + ((int) (jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32)));
        long jDoubleToLongBits5 = Double.doubleToLongBits(this.f35742e);
        int i5 = (i4 * 31) + ((int) (jDoubleToLongBits5 ^ (jDoubleToLongBits5 >>> 32)));
        long jDoubleToLongBits6 = Double.doubleToLongBits(this.f35743f);
        int i6 = (i5 * 31) + ((int) (jDoubleToLongBits6 ^ (jDoubleToLongBits6 >>> 32)));
        long jDoubleToLongBits7 = Double.doubleToLongBits(this.g);
        int i7 = (i6 * 31) + ((int) (jDoubleToLongBits7 ^ (jDoubleToLongBits7 >>> 32)));
        long jDoubleToLongBits8 = Double.doubleToLongBits(this.f35744h);
        int i8 = (i7 * 31) + ((int) (jDoubleToLongBits8 ^ (jDoubleToLongBits8 >>> 32)));
        long jDoubleToLongBits9 = Double.doubleToLongBits(this.f35745i);
        return (i8 * 31) + ((int) ((jDoubleToLongBits9 >>> 32) ^ jDoubleToLongBits9));
    }

    public final String toString() {
        if (equals(f35737j)) {
            return "Rotate 0°";
        }
        if (equals(f35738k)) {
            return "Rotate 90°";
        }
        if (equals(l)) {
            return "Rotate 180°";
        }
        if (equals(m)) {
            return "Rotate 270°";
        }
        return "Matrix{u=" + this.f35739a + ", v=" + this.f35740b + ", w=" + this.f35741c + ", a=" + this.d + ", b=" + this.f35742e + ", c=" + this.f35743f + ", d=" + this.g + ", tx=" + this.f35744h + ", ty=" + this.f35745i + '}';
    }
}
