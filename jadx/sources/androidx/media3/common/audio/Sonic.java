package androidx.media3.common.audio;

import com.google.common.base.Preconditions;
import defpackage.cj;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class Sonic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f14065c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f14066e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f14067f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f14068h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SonicImpl f14069i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14070j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14071k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public double q;

    public final class SonicFloatImpl implements SonicImpl<float[]> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float[] f14072a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float[] f14073b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float[] f14074c;
        public float[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f14075e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f14076f;
        public double g;

        public SonicFloatImpl() {
            int i2 = Sonic.this.f14068h;
            this.f14072a = new float[i2];
            int i3 = i2 * Sonic.this.f14064b;
            this.f14073b = new float[i3];
            this.f14074c = new float[i3];
            this.d = new float[i3];
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void a(int i2, ByteBuffer byteBuffer) {
            FloatBuffer floatBufferAsFloatBuffer = byteBuffer.asFloatBuffer();
            float[] fArr = this.f14073b;
            Sonic sonic = Sonic.this;
            floatBufferAsFloatBuffer.get(fArr, sonic.f14070j * sonic.f14064b, i2 / 4);
            byteBuffer.position(byteBuffer.position() + i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void b(int i2, ByteBuffer byteBuffer) {
            FloatBuffer floatBufferAsFloatBuffer = byteBuffer.asFloatBuffer();
            float[] fArr = this.f14074c;
            int i3 = Sonic.this.f14064b;
            floatBufferAsFloatBuffer.put(fArr, 0, i2 * i3);
            byteBuffer.position((i2 * 4 * i3) + byteBuffer.position());
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void c(int i2, int i3) {
            for (int i4 = 0; i4 < Sonic.this.f14064b * i3; i4++) {
                this.f14073b[i2 + i4] = 0.0f;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void d(int i2, int i3) {
            Sonic sonic = Sonic.this;
            int i4 = sonic.f14068h / i3;
            int i5 = sonic.f14064b;
            int i6 = i3 * i5;
            int i7 = i2 * i5;
            for (int i8 = 0; i8 < i4; i8++) {
                double d = 0.0d;
                for (int i9 = 0; i9 < i6; i9++) {
                    d += (double) this.f14073b[cj.a(i8, i6, i7, i9)];
                }
                this.f14072a[i8] = (float) (d / ((double) i6));
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int e(int i2, int i3, int i4) {
            return s(i2, i3, i4, this.f14073b);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void f(int i2) {
            this.f14074c = r(Sonic.this.f14071k, i2, this.f14074c);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void flush() {
            this.g = 0.0d;
            this.f14075e = 0.0d;
            this.f14076f = 0.0d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final boolean g() {
            double d = this.f14075e;
            return d != 0.0d && Sonic.this.p != 0 && this.f14076f <= d * 3.0d && d * 2.0d > this.g * 3.0d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void h(int i2, int i3, int i4, int i5, int i6) {
            float[] fArr = this.f14074c;
            float[] fArr2 = this.f14073b;
            for (int i7 = 0; i7 < i3; i7++) {
                int i8 = (i4 * i3) + i7;
                int i9 = (i6 * i3) + i7;
                int i10 = (i5 * i3) + i7;
                for (int i11 = 0; i11 < i2; i11++) {
                    fArr[i8] = ((fArr2[i9] * i11) + (fArr2[i10] * (i2 - i11))) / i2;
                    i8 += i3;
                    i10 += i3;
                    i9 += i3;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void i(int i2) {
            this.f14073b = r(Sonic.this.f14070j, i2, this.f14073b);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int j(int i2, int i3) {
            return s(0, i2, i3, this.f14072a);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void k(int i2, long j2, long j3) {
            int i3 = 0;
            while (true) {
                Sonic sonic = Sonic.this;
                int i4 = sonic.f14064b;
                if (i3 >= i4) {
                    return;
                }
                float[] fArr = this.f14074c;
                int i5 = (sonic.f14071k * i4) + i3;
                float[] fArr2 = this.d;
                int i6 = (i2 * i4) + i3;
                float f2 = fArr2[i6];
                float f3 = fArr2[i6 + i4];
                long j4 = ((long) sonic.n) * j2;
                int i7 = sonic.m;
                long j5 = ((long) (i7 + 1)) * j3;
                long j6 = j5 - j4;
                long j7 = j5 - (((long) i7) * j3);
                fArr[i5] = (((j7 - j6) * f3) + (j6 * f2)) / j7;
                i3++;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void l() {
            this.g = this.f14075e;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object m() {
            return this.f14073b;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object n() {
            return this.f14074c;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object o() {
            return this.d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void p(int i2) {
            this.d = r(Sonic.this.l, i2, this.d);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int q() {
            return 4;
        }

        public final float[] r(int i2, int i3, float[] fArr) {
            int length = fArr.length;
            int i4 = Sonic.this.f14064b;
            int i5 = length / i4;
            return i2 + i3 <= i5 ? fArr : Arrays.copyOf(fArr, (((i5 * 3) / 2) + i3) * i4);
        }

        public final int s(int i2, int i3, int i4, float[] fArr) {
            int i5 = Sonic.this.f14064b * i2;
            double d = 1.0d;
            int i6 = 0;
            double d2 = 0.0d;
            int i7 = 255;
            int i8 = i3;
            while (i8 <= i4) {
                double dAbs = 0.0d;
                for (int i9 = 0; i9 < i8; i9++) {
                    dAbs += (double) Math.abs(fArr[i5 + i9] - fArr[(i5 + i8) + i9]);
                }
                int i10 = i5;
                double d3 = i8;
                if (((double) i6) * dAbs < d * d3) {
                    i6 = i8;
                    d = dAbs;
                }
                if (((double) i7) * dAbs > d3 * d2) {
                    i7 = i8;
                    d2 = dAbs;
                }
                i8++;
                i5 = i10;
            }
            this.f14075e = d / ((double) i6);
            this.f14076f = d2 / ((double) i7);
            return i6;
        }
    }

    public interface SonicImpl<T> {
        void a(int i2, ByteBuffer byteBuffer);

        void b(int i2, ByteBuffer byteBuffer);

        void c(int i2, int i3);

        void d(int i2, int i3);

        int e(int i2, int i3, int i4);

        void f(int i2);

        void flush();

        boolean g();

        void h(int i2, int i3, int i4, int i5, int i6);

        void i(int i2);

        int j(int i2, int i3);

        void k(int i2, long j2, long j3);

        void l();

        Object m();

        Object n();

        Object o();

        void p(int i2);

        int q();
    }

    public final class SonicShortImpl implements SonicImpl<short[]> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final short[] f14078a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public short[] f14079b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public short[] f14080c;
        public short[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f14081e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f14082f;
        public int g;

        public SonicShortImpl() {
            int i2 = Sonic.this.f14068h;
            this.f14078a = new short[i2];
            int i3 = i2 * Sonic.this.f14064b;
            this.f14079b = new short[i3];
            this.f14080c = new short[i3];
            this.d = new short[i3];
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void a(int i2, ByteBuffer byteBuffer) {
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            short[] sArr = this.f14079b;
            Sonic sonic = Sonic.this;
            shortBufferAsShortBuffer.get(sArr, sonic.f14070j * sonic.f14064b, i2 / 2);
            byteBuffer.position(byteBuffer.position() + i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void b(int i2, ByteBuffer byteBuffer) {
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            short[] sArr = this.f14080c;
            int i3 = Sonic.this.f14064b;
            shortBufferAsShortBuffer.put(sArr, 0, i2 * i3);
            byteBuffer.position((i2 * 2 * i3) + byteBuffer.position());
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void c(int i2, int i3) {
            for (int i4 = 0; i4 < Sonic.this.f14064b * i3; i4++) {
                this.f14079b[i2 + i4] = 0;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void d(int i2, int i3) {
            short[] sArr = this.f14079b;
            Sonic sonic = Sonic.this;
            int i4 = sonic.f14068h / i3;
            int i5 = sonic.f14064b;
            int i6 = i3 * i5;
            int i7 = i2 * i5;
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = 0;
                for (int i10 = 0; i10 < i6; i10++) {
                    i9 += sArr[cj.a(i8, i6, i7, i10)];
                }
                this.f14078a[i8] = (short) (i9 / i6);
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int e(int i2, int i3, int i4) {
            return s(this.f14079b, i2, i3, i4);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void f(int i2) {
            this.f14080c = r(this.f14080c, Sonic.this.f14071k, i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void flush() {
            this.g = 0;
            this.f14081e = 0;
            this.f14082f = 0;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final boolean g() {
            int i2 = this.f14081e;
            return i2 != 0 && Sonic.this.p != 0 && this.f14082f <= i2 * 3 && i2 * 2 > this.g * 3;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void h(int i2, int i3, int i4, int i5, int i6) {
            short[] sArr = this.f14080c;
            short[] sArr2 = this.f14079b;
            for (int i7 = 0; i7 < i3; i7++) {
                int i8 = (i4 * i3) + i7;
                int i9 = (i6 * i3) + i7;
                int i10 = (i5 * i3) + i7;
                for (int i11 = 0; i11 < i2; i11++) {
                    sArr[i8] = (short) (((sArr2[i9] * i11) + ((i2 - i11) * sArr2[i10])) / i2);
                    i8 += i3;
                    i10 += i3;
                    i9 += i3;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void i(int i2) {
            this.f14079b = r(this.f14079b, Sonic.this.f14070j, i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int j(int i2, int i3) {
            return s(this.f14078a, 0, i2, i3);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void k(int i2, long j2, long j3) {
            int i3 = 0;
            while (true) {
                Sonic sonic = Sonic.this;
                int i4 = sonic.f14064b;
                if (i3 >= i4) {
                    return;
                }
                short[] sArr = this.f14080c;
                int i5 = (sonic.f14071k * i4) + i3;
                short[] sArr2 = this.d;
                int i6 = (i2 * i4) + i3;
                short s = sArr2[i6];
                short s2 = sArr2[i6 + i4];
                long j4 = ((long) sonic.n) * j2;
                int i7 = sonic.m;
                long j5 = ((long) (i7 + 1)) * j3;
                long j6 = j5 - j4;
                long j7 = j5 - (((long) i7) * j3);
                sArr[i5] = (short) ((((j7 - j6) * ((long) s2)) + (((long) s) * j6)) / j7);
                i3++;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void l() {
            this.g = this.f14081e;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object m() {
            return this.f14079b;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object n() {
            return this.f14080c;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final Object o() {
            return this.d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final void p(int i2) {
            this.d = r(this.d, Sonic.this.l, i2);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public final int q() {
            return 2;
        }

        public final short[] r(short[] sArr, int i2, int i3) {
            int length = sArr.length;
            int i4 = Sonic.this.f14064b;
            int i5 = length / i4;
            return i2 + i3 <= i5 ? sArr : Arrays.copyOf(sArr, (((i5 * 3) / 2) + i3) * i4);
        }

        public final int s(short[] sArr, int i2, int i3, int i4) {
            int i5 = i2 * Sonic.this.f14064b;
            int i6 = 255;
            int i7 = 1;
            int i8 = 0;
            int i9 = 0;
            while (i3 <= i4) {
                int iAbs = 0;
                for (int i10 = 0; i10 < i3; i10++) {
                    iAbs += Math.abs(sArr[i5 + i10] - sArr[(i5 + i3) + i10]);
                }
                if (iAbs * i8 < i7 * i3) {
                    i8 = i3;
                    i7 = iAbs;
                }
                if (iAbs * i6 > i9 * i3) {
                    i6 = i3;
                    i9 = iAbs;
                }
                i3++;
            }
            this.f14081e = i7 / i8;
            this.f14082f = i9 / i6;
            return i8;
        }
    }

    public Sonic(int i2, int i3, float f2, float f3, int i4, boolean z) {
        this.f14063a = i2;
        this.f14064b = i3;
        this.f14065c = f2;
        this.d = f3;
        this.f14066e = i2 / i4;
        this.f14067f = i2 / 400;
        int i5 = i2 / 65;
        this.g = i5;
        this.f14068h = i5 * 2;
        this.f14069i = z ? new SonicFloatImpl() : new SonicShortImpl();
    }

    public final void a(int i2, int i3) {
        SonicImpl sonicImpl = this.f14069i;
        sonicImpl.f(i3);
        Object objM = sonicImpl.m();
        int i4 = this.f14064b;
        System.arraycopy(objM, i2 * i4, sonicImpl.n(), this.f14071k * i4, i4 * i3);
        this.f14071k += i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b() {
        float f2;
        int iJ;
        double d;
        int i2;
        int iRound;
        int i3;
        int iRound2;
        int i4;
        int i5;
        long j2;
        long j3;
        int i6 = this.f14071k;
        float f3 = this.f14065c;
        float f4 = this.d;
        double d2 = f3 / f4;
        float f5 = this.f14066e * f4;
        int i7 = this.f14063a;
        int i8 = 1;
        SonicImpl sonicImpl = this.f14069i;
        int i9 = this.f14064b;
        if (d2 > 1.0000100135803223d || d2 < 0.9999899864196777d) {
            int i10 = this.f14070j;
            int i11 = this.f14068h;
            if (i10 >= i11) {
                int i12 = 0;
                while (true) {
                    int i13 = this.o;
                    if (i13 > 0) {
                        int iMin = Math.min(i11, i13);
                        a(i12, iMin);
                        this.o -= iMin;
                        i12 += iMin;
                        f2 = f5;
                        d = d2;
                        i3 = i8;
                        i2 = i11;
                    } else {
                        int i14 = i7 > 4000 ? i7 / 4000 : i8;
                        int i15 = this.g;
                        int i16 = this.f14067f;
                        if (i9 == i8 && i14 == i8) {
                            iJ = sonicImpl.e(i12, i16, i15);
                            f2 = f5;
                        } else {
                            sonicImpl.d(i12, i14);
                            f2 = f5;
                            int iJ2 = sonicImpl.j(i16 / i14, i15 / i14);
                            if (i14 != i8) {
                                int i17 = iJ2 * i14;
                                int i18 = i14 * 4;
                                int i19 = i17 - i18;
                                int i20 = i17 + i18;
                                if (i19 >= i16) {
                                    i16 = i19;
                                }
                                if (i20 <= i15) {
                                    i15 = i20;
                                }
                                if (i9 == i8) {
                                    iJ = sonicImpl.e(i12, i16, i15);
                                } else {
                                    sonicImpl.d(i12, i8);
                                    iJ = sonicImpl.j(i16, i15);
                                }
                            } else {
                                iJ = iJ2;
                            }
                        }
                        int i21 = sonicImpl.g() ? this.p : iJ;
                        sonicImpl.l();
                        this.p = iJ;
                        double d3 = this.q;
                        if (d2 > 1.0d) {
                            if (d2 >= 2.0d) {
                                double d4 = (((double) i21) / (d2 - 1.0d)) + d3;
                                iRound2 = (int) Math.round(d4);
                                d = d2;
                                this.q = d4 - ((double) iRound2);
                                sonicImpl = sonicImpl;
                            } else {
                                d = d2;
                                double d5 = (((2.0d - d) * ((double) i21)) / (d - 1.0d)) + d3;
                                int iRound3 = (int) Math.round(d5);
                                this.o = iRound3;
                                this.q = d5 - ((double) iRound3);
                                iRound2 = i21;
                            }
                            sonicImpl.f(iRound2);
                            int i22 = i11;
                            int i23 = iRound2;
                            sonicImpl.h(i23, this.f14064b, this.f14071k, i12, i12 + i21);
                            this.f14071k += i23;
                            i12 = i21 + i23 + i12;
                            i2 = i22;
                            i3 = i8;
                        } else {
                            d = d2;
                            int i24 = i8;
                            i2 = i11;
                            if (d < 0.5d) {
                                double d6 = ((((double) i21) * d) / (1.0d - d)) + d3;
                                iRound = (int) Math.round(d6);
                                this.q = d6 - ((double) iRound);
                            } else {
                                double d7 = ((((2.0d * d) - 1.0d) * ((double) i21)) / (1.0d - d)) + d3;
                                int iRound4 = (int) Math.round(d7);
                                this.o = iRound4;
                                this.q = d7 - ((double) iRound4);
                                iRound = i21;
                            }
                            int i25 = i21 + iRound;
                            sonicImpl.f(i25);
                            i3 = i24;
                            System.arraycopy(sonicImpl.m(), i12 * i9, sonicImpl.n(), this.f14071k * i9, i21 * i9);
                            int i26 = i12;
                            sonicImpl.h(iRound, this.f14064b, this.f14071k + i21, i21 + i12, i26);
                            this.f14071k += i25;
                            i12 = i26 + iRound;
                        }
                    }
                    if (i12 + i2 > i10) {
                        break;
                    }
                    i11 = i2;
                    f5 = f2;
                    i8 = i3;
                    d2 = d;
                }
                int i27 = this.f14070j - i12;
                System.arraycopy(sonicImpl.m(), i12 * i9, sonicImpl.m(), 0, i27 * i9);
                this.f14070j = i27;
            }
            if (f2 != 1.0f || this.f14071k == i6) {
            }
            long j4 = (long) (i7 / f2);
            long j5 = i7;
            while (j4 != 0 && j5 != 0 && j4 % 2 == 0 && j5 % 2 == 0) {
                j4 /= 2;
                j5 /= 2;
            }
            int i28 = this.f14071k - i6;
            sonicImpl.p(i28);
            System.arraycopy(sonicImpl.n(), i6 * i9, sonicImpl.o(), this.l * i9, i28 * i9);
            this.f14071k = i6;
            this.l += i28;
            int i29 = 0;
            while (true) {
                i4 = this.l - 1;
                if (i29 >= i4) {
                    break;
                }
                while (true) {
                    i5 = this.m + 1;
                    j2 = i5;
                    long j6 = j2 * j4;
                    j3 = this.n;
                    if (j6 <= j3 * j5) {
                        break;
                    }
                    int i30 = i3;
                    sonicImpl.f(i30);
                    sonicImpl.k(i29, j5, j4);
                    this.n += i30;
                    this.f14071k += i30;
                }
                int i31 = i3;
                this.m = i5;
                if (j2 == j5) {
                    this.m = 0;
                    Preconditions.q(j3 == j4 ? i31 : 0);
                    this.n = 0;
                }
                i29++;
                i3 = i31;
            }
            if (i4 == 0) {
                return;
            }
            System.arraycopy(sonicImpl.o(), i4 * i9, sonicImpl.o(), 0, (this.l - i4) * i9);
            this.l -= i4;
            return;
        }
        a(0, this.f14070j);
        this.f14070j = 0;
        f2 = f5;
        i3 = 1;
        if (f2 != 1.0f) {
        }
    }
}
