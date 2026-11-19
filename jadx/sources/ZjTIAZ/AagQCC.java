package ZjTIAZ;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AagQCC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f101a = CNATAC.a("#\u00149\u001e\u0002\u001e\u0002\u0011=\u001c\u0004\u0010\u0018\u0007\u001b\u0015\u0018\u0006\u0006\u001d\u0001\u0003\u001e\u001c\f\u0013");

    public static String a() {
        long j2;
        int i2;
        long j3;
        int i3;
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            int i4 = 1;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                j2 = 2;
                i2 = 1000000;
                if (i4 >= 1000000) {
                    break;
                }
                if (((4508713 % i4) * 11) % i4 == 0) {
                    i5++;
                }
                if (i4 % 100 == 0 && SystemClock.uptimeMillis() - jUptimeMillis > 2) {
                    break;
                }
                i6++;
                i4++;
            }
            int i7 = i6 / 100;
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            float f2 = 33.34f;
            int i8 = 0;
            int i9 = 0;
            for (int i10 = 1; i10 < 1000000; i10++) {
                f2 += i10;
                if ((19.239f * f2) / 3.56f < 10000.0f) {
                    i8++;
                }
                if (i10 % 100 == 0 && SystemClock.uptimeMillis() - jUptimeMillis2 > 2) {
                    break;
                }
                i9++;
            }
            int i11 = i9 / 100;
            long jUptimeMillis3 = SystemClock.uptimeMillis();
            int i12 = 0;
            int i13 = 0;
            for (double d = 1.0d; d < 1000000.0d; d += 1.0d) {
                if (Math.sqrt(d) > 30.0d) {
                    i12++;
                }
                if (((int) d) % 100 == 0 && SystemClock.uptimeMillis() - jUptimeMillis3 > 2) {
                    break;
                }
                i13++;
            }
            int i14 = i12;
            int i15 = i13 / 100;
            long jUptimeMillis4 = SystemClock.uptimeMillis();
            int i16 = 1;
            int i17 = 0;
            int i18 = 0;
            while (true) {
                if (i16 >= i2) {
                    j3 = j2;
                    i3 = i2;
                    break;
                }
                j3 = j2;
                i3 = i2;
                if (Math.acos(i16 / i2) + Math.asin(i16 / i2) + Math.atan(i16 / i3) > 1.5d) {
                    i17++;
                }
                if (i16 % 100 == 0 && SystemClock.uptimeMillis() - jUptimeMillis4 > j3) {
                    break;
                }
                i18++;
                i16++;
                j2 = j3;
                i2 = i3;
            }
            int i19 = i18 / 100;
            long jUptimeMillis5 = SystemClock.uptimeMillis();
            int i20 = i3;
            int i21 = 0;
            for (int i22 = 1; i22 < i20 && SystemClock.uptimeMillis() - jUptimeMillis5 <= j3; i22++) {
                i21++;
            }
            return i5 + "," + i7 + "," + i8 + "," + i11 + "," + i14 + "," + i15 + "," + i17 + "," + i19 + "," + i21;
        } catch (Exception e2) {
            GWINqE.b(e2);
            return f101a;
        }
    }
}
