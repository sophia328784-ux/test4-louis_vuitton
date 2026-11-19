package androidx.compose.animation.core;

import defpackage.tr;
import java.util.Arrays;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\nB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/compose/animation/core/ArcSpline;", "", "", "arcModes", "", "timePoints", "", "y", "<init>", "([I[F[[F)V", "Arc", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ArcSpline {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Arc[][] f3838a;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001BA\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/animation/core/ArcSpline$Arc;", "", "", "mode", "", "time1", "time2", "x1", "y1", "x2", "y2", "<init>", "(IFFFFFF)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Arc {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f3839a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f3840b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f3841c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f3842e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final float f3843f;
        public final float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f3844h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f3845i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final float[] f3846j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final float f3847k;
        public final float l;
        public final float m;
        public final float n;
        public final float o;
        public final boolean p;
        public final float q;
        public final float r;

        public Arc(int i2, float f2, float f3, float f4, float f5, float f6, float f7) {
            boolean z;
            int i3;
            float[] fArr;
            this.f3839a = f2;
            this.f3840b = f3;
            this.f3841c = f4;
            this.d = f5;
            this.f3842e = f6;
            this.f3843f = f7;
            float f8 = f6 - f4;
            float f9 = f7 - f5;
            int i4 = 1;
            boolean z2 = i2 == 1 || (i2 == 4 ? f9 > Call.Parameters.DEFAULT_CAMERA_ZOOM : !(i2 != 5 || f9 >= Call.Parameters.DEFAULT_CAMERA_ZOOM));
            float f10 = z2 ? -1.0f : 1.0f;
            this.m = f10;
            float f11 = 1.0f / (f3 - f2);
            this.f3847k = f11;
            float[] fArr2 = new float[101];
            this.f3846j = fArr2;
            boolean z3 = i2 == 3;
            if (z3 || Math.abs(f8) < 0.001f || Math.abs(f9) < 0.001f) {
                float fHypot = (float) Math.hypot(f9, f8);
                this.g = fHypot;
                this.l = fHypot * f11;
                this.q = f8 * f11;
                this.r = f9 * f11;
                this.n = Float.NaN;
                this.o = Float.NaN;
                z = true;
            } else {
                this.n = f8 * f10;
                this.o = f9 * (-f10);
                this.q = z2 ? f6 : f4;
                this.r = z2 ? f5 : f7;
                float f12 = f6 - f4;
                float f13 = f5 - f7;
                float f14 = f13;
                float fHypot2 = 0.0f;
                float f15 = 0.0f;
                int i5 = 1;
                while (true) {
                    double d = (float) (((((double) i5) * 90.0d) / 90.0d) * 0.017453292519943295d);
                    i3 = i4;
                    float fSin = ((float) Math.sin(d)) * f12;
                    float fCos = ((float) Math.cos(d)) * f13;
                    fHypot2 += (float) Math.hypot(fSin - f15, fCos - f14);
                    fArr = ArcSplineKt.f3848a;
                    fArr[i5] = fHypot2;
                    if (i5 == 90) {
                        break;
                    }
                    i5++;
                    f15 = fSin;
                    f14 = fCos;
                    i4 = i3;
                }
                this.g = fHypot2;
                int i6 = i3;
                while (true) {
                    fArr[i6] = fArr[i6] / fHypot2;
                    if (i6 == 90) {
                        break;
                    } else {
                        i6++;
                    }
                }
                int length = fArr2.length;
                for (int i7 = 0; i7 < length; i7++) {
                    float f16 = i7 / 100.0f;
                    int iBinarySearch = Arrays.binarySearch(fArr, 0, 91, f16);
                    if (iBinarySearch >= 0) {
                        fArr2[i7] = iBinarySearch / 90.0f;
                    } else if (iBinarySearch == -1) {
                        fArr2[i7] = 0.0f;
                    } else {
                        int i8 = -iBinarySearch;
                        int i9 = i8 - 2;
                        float f17 = i9;
                        float f18 = fArr[i9];
                        fArr2[i7] = (((f16 - f18) / (fArr[i8 - i3] - f18)) + f17) / 90.0f;
                    }
                }
                this.l = this.g * this.f3847k;
                z = z3;
            }
            this.p = z;
        }

        public final float a() {
            float f2 = this.n * this.f3845i;
            return f2 * this.m * (this.l / ((float) Math.hypot(f2, (-this.o) * this.f3844h)));
        }

        public final float b() {
            float f2 = this.n * this.f3845i;
            float f3 = (-this.o) * this.f3844h;
            return f3 * this.m * (this.l / ((float) Math.hypot(f2, f3)));
        }

        public final void c(float f2) {
            float f3 = (this.m == -1.0f ? this.f3840b - f2 : f2 - this.f3839a) * this.f3847k;
            float fA = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                fA = 1.0f;
                if (f3 < 1.0f) {
                    float f4 = f3 * 100.0f;
                    int i2 = (int) f4;
                    float[] fArr = this.f3846j;
                    float f5 = fArr[i2];
                    fA = tr.a(fArr[i2 + 1], f5, f4 - i2, f5);
                }
            }
            double d = fA * 1.5707964f;
            this.f3844h = (float) Math.sin(d);
            this.f3845i = (float) Math.cos(d);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0024 A[PHI: r9
      0x0024: PHI (r9v1 int) = (r9v0 int), (r9v3 int), (r9v4 int) binds: [B:5:0x0014, B:10:0x001d, B:12:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:19:0x002d  */
    public ArcSpline(int[] iArr, float[] fArr, float[][] fArr2) {
        int i2;
        int length = fArr.length - 1;
        Arc[][] arcArr = new Arc[length][];
        int i3 = 1;
        int i4 = 1;
        int i5 = 0;
        while (i5 < length) {
            int i6 = iArr[i5];
            int i7 = 3;
            if (i6 == 0) {
                i2 = i7;
            } else if (i6 == 1) {
                i3 = 1;
                i2 = i3;
            } else {
                if (i6 != 2) {
                    if (i6 != 3) {
                        i7 = 4;
                        if (i6 != 4) {
                            i7 = 5;
                            if (i6 != 5) {
                                i2 = i4;
                            } else {
                                i2 = i7;
                            }
                        } else {
                            i2 = i7;
                        }
                    } else {
                        if (i3 != 1) {
                            i3 = 1;
                        }
                        i2 = i3;
                    }
                }
                i3 = 2;
                i2 = i3;
            }
            float[] fArr3 = fArr2[i5];
            int i8 = i5 + 1;
            float[] fArr4 = fArr2[i8];
            float f2 = fArr[i5];
            float f3 = fArr[i8];
            int length2 = (fArr3.length % 2) + (fArr3.length / 2);
            Arc[] arcArr2 = new Arc[length2];
            int i9 = 0;
            while (i9 < length2) {
                int i10 = i9 * 2;
                Arc[] arcArr3 = arcArr2;
                int i11 = i9;
                int i12 = i10 + 1;
                arcArr3[i11] = new Arc(i2, f2, f3, fArr3[i10], fArr3[i12], fArr4[i10], fArr4[i12]);
                i9 = i11 + 1;
                arcArr2 = arcArr3;
            }
            arcArr[i5] = arcArr2;
            i5 = i8;
            i4 = i2;
        }
        this.f3838a = arcArr;
    }
}
