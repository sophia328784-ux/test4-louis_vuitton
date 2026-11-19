package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.widget.ConstraintAttribute;
import defpackage.n00;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public abstract class KeyCycleOscillator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CycleOscillator f11346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f11347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11348c = 0;
    public String d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11349e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f11350f = new ArrayList();

    /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator$1, reason: invalid class name */
    class AnonymousClass1 implements Comparator<WavePoint> {
        @Override // java.util.Comparator
        public final int compare(WavePoint wavePoint, WavePoint wavePoint2) {
            return Integer.compare(wavePoint.f11357a, wavePoint2.f11357a);
        }
    }

    public static class CycleOscillator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Oscillator f11351a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float[] f11352b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double[] f11353c;
        public float[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float[] f11354e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float[] f11355f;
        public CurveFit g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public double[] f11356h;
    }

    public static class WavePoint {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f11357a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f11358b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f11359c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f11360e;

        public WavePoint(float f2, float f3, float f4, float f5, int i2) {
            this.f11357a = i2;
            this.f11358b = f5;
            this.f11359c = f3;
            this.d = f2;
            this.f11360e = f4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x008f  */
    /* JADX WARN: Code duplicated, block: B:20:0x0095  */
    /* JADX WARN: Code duplicated, block: B:21:0x009d  */
    /* JADX WARN: Code duplicated, block: B:23:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:24:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:25:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:26:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:27:0x00cc  */
    public final float a(float f2) {
        double d;
        double d2;
        double dSignum;
        double dAbs;
        CycleOscillator cycleOscillator = this.f11346a;
        CurveFit curveFit = cycleOscillator.g;
        double[] dArr = cycleOscillator.f11356h;
        char c2 = 2;
        if (curveFit != null) {
            curveFit.c(f2, dArr);
        } else {
            dArr[0] = cycleOscillator.f11354e[0];
            dArr[1] = cycleOscillator.f11355f[0];
            dArr[2] = cycleOscillator.f11352b[0];
        }
        double[] dArr2 = cycleOscillator.f11356h;
        double d3 = dArr2[0];
        double d4 = dArr2[1];
        Oscillator oscillator = cycleOscillator.f11351a;
        double d5 = f2;
        oscillator.getClass();
        double d6 = 0.0d;
        if (d5 > 0.0d) {
            if (d5 >= 1.0d) {
                d6 = 1.0d;
            } else {
                int iBinarySearch = Arrays.binarySearch(oscillator.f11369b, d5);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                float[] fArr = oscillator.f11368a;
                float f3 = fArr[iBinarySearch];
                int i2 = iBinarySearch - 1;
                float f4 = fArr[i2];
                d = 2.0d;
                double d7 = f3 - f4;
                double[] dArr3 = oscillator.f11369b;
                double d8 = dArr3[iBinarySearch];
                double d9 = dArr3[i2];
                double d10 = d7 / (d8 - d9);
                c2 = 2;
                d6 = ((((d5 * d5) - (d9 * d9)) * d10) / 2.0d) + ((d5 - d9) * (((double) f4) - (d10 * d9))) + oscillator.f11370c[i2];
            }
            d2 = d6 + d4;
            switch (oscillator.f11371e) {
                case 1:
                    dSignum = Math.signum(0.5d - (d2 % 1.0d));
                    break;
                case 2:
                    dAbs = Math.abs((((d2 * 4.0d) + 1.0d) % 4.0d) - d);
                    dSignum = 1.0d - dAbs;
                    break;
                case 3:
                    dSignum = (((d2 * d) + 1.0d) % d) - 1.0d;
                    break;
                case 4:
                    dSignum = 1.0d - (((d2 * d) + 1.0d) % d);
                    break;
                case 5:
                    dSignum = Math.cos((d4 + d2) * 6.283185307179586d);
                    break;
                case 6:
                    double dAbs2 = 1.0d - Math.abs(((d2 * 4.0d) % 4.0d) - d);
                    dAbs = dAbs2 * dAbs2;
                    dSignum = 1.0d - dAbs;
                    break;
                case 7:
                    dSignum = oscillator.d.b(d2 % 1.0d);
                    break;
                default:
                    dSignum = Math.sin(6.283185307179586d * d2);
                    break;
            }
            return (float) ((dSignum * cycleOscillator.f11356h[c2]) + d3);
        }
        d = 2.0d;
        d2 = d6 + d4;
        switch (oscillator.f11371e) {
            case 1:
                dSignum = Math.signum(0.5d - (d2 % 1.0d));
                break;
            case 2:
                dAbs = Math.abs((((d2 * 4.0d) + 1.0d) % 4.0d) - d);
                dSignum = 1.0d - dAbs;
                break;
            case 3:
                dSignum = (((d2 * d) + 1.0d) % d) - 1.0d;
                break;
            case 4:
                dSignum = 1.0d - (((d2 * d) + 1.0d) % d);
                break;
            case 5:
                dSignum = Math.cos((d4 + d2) * 6.283185307179586d);
                break;
            case 6:
                double dAbs3 = 1.0d - Math.abs(((d2 * 4.0d) % 4.0d) - d);
                dAbs = dAbs3 * dAbs3;
                dSignum = 1.0d - dAbs;
                break;
            case 7:
                dSignum = oscillator.d.b(d2 % 1.0d);
                break;
            default:
                dSignum = Math.sin(6.283185307179586d * d2);
                break;
        }
        return (float) ((dSignum * cycleOscillator.f11356h[c2]) + d3);
    }

    public void b(ConstraintAttribute constraintAttribute) {
    }

    public final void c(int i2, int i3, String str, int i4, float f2, float f3, float f4, float f5) {
        this.f11350f.add(new WavePoint(f2, f3, f4, f5, i2));
        if (i4 != -1) {
            this.f11349e = i4;
        }
        this.f11348c = i3;
        this.d = str;
    }

    public final void d(int i2, int i3, String str, int i4, float f2, float f3, float f4, float f5, ConstraintAttribute constraintAttribute) {
        this.f11350f.add(new WavePoint(f2, f3, f4, f5, i2));
        if (i4 != -1) {
            this.f11349e = i4;
        }
        this.f11348c = i3;
        b(constraintAttribute);
        this.d = str;
    }

    public final void e() {
        int i2;
        int i3;
        double d;
        int i4;
        ArrayList<WavePoint> arrayList = this.f11350f;
        int size = arrayList.size();
        if (size == 0) {
            return;
        }
        Collections.sort(arrayList, new AnonymousClass1());
        double[] dArr = new double[size];
        Class cls = Double.TYPE;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) cls, size, 3);
        int i5 = this.f11348c;
        String str = this.d;
        CycleOscillator cycleOscillator = new CycleOscillator();
        Oscillator oscillator = new Oscillator();
        cycleOscillator.f11351a = oscillator;
        oscillator.f11371e = i5;
        if (str != null) {
            double[] dArr3 = new double[str.length() / 2];
            int iIndexOf = str.indexOf(40) + 1;
            i3 = 0;
            i2 = 1;
            int iIndexOf2 = str.indexOf(44, iIndexOf);
            int i6 = 0;
            d = 1.0d;
            while (iIndexOf2 != -1) {
                dArr3[i6] = Double.parseDouble(str.substring(iIndexOf, iIndexOf2).trim());
                iIndexOf = iIndexOf2 + 1;
                iIndexOf2 = str.indexOf(44, iIndexOf);
                i6++;
            }
            dArr3[i6] = Double.parseDouble(str.substring(iIndexOf, str.indexOf(41, iIndexOf)).trim());
            double[] dArrCopyOf = Arrays.copyOf(dArr3, i6 + 1);
            int length = (dArrCopyOf.length * 3) - 2;
            int length2 = dArrCopyOf.length - 1;
            double d2 = 1.0d / ((double) length2);
            double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) cls, length, 1);
            double[] dArr5 = new double[length];
            int i7 = 0;
            while (i7 < dArrCopyOf.length) {
                double d3 = dArrCopyOf[i7];
                int i8 = i7 + length2;
                dArr4[i8][0] = d3;
                double d4 = d2;
                double d5 = ((double) i7) * d4;
                dArr5[i8] = d5;
                if (i7 > 0) {
                    int i9 = (length2 * 2) + i7;
                    dArr4[i9][0] = d3 + 1.0d;
                    dArr5[i9] = d5 + 1.0d;
                    int i10 = i7 - 1;
                    dArr4[i10][0] = (d3 - 1.0d) - d4;
                    dArr5[i10] = (d5 - 1.0d) - d4;
                }
                i7++;
                d2 = d4;
            }
            oscillator.d = new MonotonicCurveFit(dArr5, dArr4);
        } else {
            i2 = 1;
            i3 = 0;
            d = 1.0d;
        }
        cycleOscillator.f11352b = new float[size];
        cycleOscillator.f11353c = new double[size];
        cycleOscillator.d = new float[size];
        cycleOscillator.f11354e = new float[size];
        cycleOscillator.f11355f = new float[size];
        float[] fArr = new float[size];
        this.f11346a = cycleOscillator;
        int i11 = i3;
        for (WavePoint wavePoint : arrayList) {
            float f2 = wavePoint.d;
            dArr[i11] = ((double) f2) * 0.01d;
            double[] dArr6 = dArr2[i11];
            float f3 = wavePoint.f11358b;
            dArr6[i3] = f3;
            float f4 = wavePoint.f11359c;
            dArr6[i2] = f4;
            float f5 = wavePoint.f11360e;
            dArr6[r4] = f5;
            CycleOscillator cycleOscillator2 = this.f11346a;
            cycleOscillator2.f11353c[i11] = ((double) wavePoint.f11357a) / 100.0d;
            cycleOscillator2.d[i11] = f2;
            cycleOscillator2.f11354e[i11] = f4;
            cycleOscillator2.f11355f[i11] = f5;
            cycleOscillator2.f11352b[i11] = f3;
            i11++;
        }
        CycleOscillator cycleOscillator3 = this.f11346a;
        float[] fArr2 = cycleOscillator3.d;
        Oscillator oscillator2 = cycleOscillator3.f11351a;
        double[] dArr7 = cycleOscillator3.f11353c;
        int length3 = dArr7.length;
        int[] iArr = new int[2];
        iArr[i2] = 3;
        iArr[i3] = length3;
        double[][] dArr8 = (double[][]) Array.newInstance((Class<?>) cls, iArr);
        float[] fArr3 = cycleOscillator3.f11352b;
        cycleOscillator3.f11356h = new double[fArr3.length + 2];
        double[] dArr9 = new double[fArr3.length + 2];
        double d6 = 0.0d;
        if (dArr7[i3] > 0.0d) {
            oscillator2.a(0.0d, fArr2[i3]);
        }
        int length4 = dArr7.length - 1;
        if (dArr7[length4] < d) {
            oscillator2.a(d, fArr2[length4]);
        }
        for (int i12 = i3; i12 < dArr8.length; i12++) {
            double[] dArr10 = dArr8[i12];
            dArr10[i3] = cycleOscillator3.f11354e[i12];
            dArr10[i2] = cycleOscillator3.f11355f[i12];
            dArr10[2] = fArr3[i12];
            oscillator2.a(dArr7[i12], fArr2[i12]);
        }
        double d7 = 0.0d;
        int i13 = i3;
        while (true) {
            float[] fArr4 = oscillator2.f11368a;
            if (i13 >= fArr4.length) {
                break;
            }
            d7 += (double) fArr4[i13];
            i13++;
        }
        double d8 = 0.0d;
        int i14 = i2;
        while (true) {
            float[] fArr5 = oscillator2.f11368a;
            if (i14 >= fArr5.length) {
                break;
            }
            int i15 = i14 - 1;
            float f6 = (fArr5[i15] + fArr5[i14]) / 2.0f;
            double[] dArr11 = oscillator2.f11369b;
            d8 = ((dArr11[i14] - dArr11[i15]) * ((double) f6)) + d8;
            i14++;
        }
        int i16 = i3;
        while (true) {
            float[] fArr6 = oscillator2.f11368a;
            if (i16 >= fArr6.length) {
                break;
            }
            fArr6[i16] = fArr6[i16] * ((float) (d7 / d8));
            i16++;
            d6 = d6;
        }
        oscillator2.f11370c[i3] = d6;
        int i17 = i2;
        while (true) {
            float[] fArr7 = oscillator2.f11368a;
            if (i17 >= fArr7.length) {
                break;
            }
            int i18 = i17 - 1;
            float f7 = (fArr7[i18] + fArr7[i17]) / 2.0f;
            double[] dArr12 = oscillator2.f11369b;
            double d9 = dArr12[i17] - dArr12[i18];
            double[] dArr13 = oscillator2.f11370c;
            dArr13[i17] = (d9 * ((double) f7)) + dArr13[i18];
            i17++;
        }
        if (dArr7.length > i2) {
            i4 = i3;
            cycleOscillator3.g = CurveFit.a(i4, dArr7, dArr8);
        } else {
            i4 = i3;
            cycleOscillator3.g = null;
        }
        CurveFit.a(i4, dArr, dArr2);
    }

    public final String toString() {
        String string = this.f11347b;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (WavePoint wavePoint : this.f11350f) {
            StringBuilder sbU = n00.u(string, "[");
            sbU.append(wavePoint.f11357a);
            sbU.append(" , ");
            sbU.append(decimalFormat.format(wavePoint.f11358b));
            sbU.append("] ");
            string = sbU.toString();
        }
        return string;
    }
}
