package androidx.compose.animation.core;

import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/animation/core/MonoSpline;", "", "", "time", "", "y", "", "periodicBias", "<init>", "([F[[FF)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MonoSpline {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f3903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[][] f3904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[][] f3905c;
    public final float[] d;

    public MonoSpline(float[] fArr, float[][] fArr2, float f2) {
        int i2;
        int length = fArr.length;
        int i3 = 0;
        int length2 = fArr2[0].length;
        this.d = new float[length2];
        int i4 = length - 1;
        float[][] fArr3 = new float[i4][];
        for (int i5 = 0; i5 < i4; i5++) {
            fArr3[i5] = new float[length2];
        }
        float[][] fArr4 = new float[length][];
        for (int i6 = 0; i6 < length; i6++) {
            fArr4[i6] = new float[length2];
        }
        for (int i7 = 0; i7 < length2; i7++) {
            int i8 = 0;
            while (i8 < i4) {
                int i9 = i8 + 1;
                float f3 = fArr[i9] - fArr[i8];
                float[] fArr5 = fArr3[i8];
                float f4 = (fArr2[i9][i7] - fArr2[i8][i7]) / f3;
                fArr5[i7] = f4;
                if (i8 == 0) {
                    fArr4[i8][i7] = f4;
                } else {
                    fArr4[i8][i7] = (fArr3[i8 - 1][i7] + f4) * 0.5f;
                }
                i8 = i9;
            }
            fArr4[i4][i7] = fArr3[length - 2][i7];
        }
        if (!Float.isNaN(f2)) {
            for (int i10 = 0; i10 < length2; i10++) {
                float[] fArr6 = fArr3[length - 2];
                float f5 = (1.0f - f2) * fArr6[i10];
                float[] fArr7 = fArr3[0];
                float f6 = (fArr7[i10] * f2) + f5;
                fArr7[i10] = f6;
                fArr6[i10] = f6;
                fArr4[i4][i10] = f6;
                fArr4[0][i10] = f6;
            }
        }
        int i11 = 0;
        while (i11 < i4) {
            int i12 = i3;
            while (i12 < length2) {
                float f7 = fArr3[i11][i12];
                if (f7 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fArr4[i11][i12] = 0.0f;
                    fArr4[i11 + 1][i12] = 0.0f;
                    i2 = length2;
                } else {
                    float f8 = fArr4[i11][i12] / f7;
                    int i13 = i11 + 1;
                    float f9 = fArr4[i13][i12] / f7;
                    i2 = length2;
                    float fHypot = (float) Math.hypot(f8, f9);
                    if (fHypot > 9.0d) {
                        float f10 = 3.0f / fHypot;
                        float[] fArr8 = fArr4[i11];
                        float[] fArr9 = fArr3[i11];
                        fArr8[i12] = f8 * f10 * fArr9[i12];
                        fArr4[i13][i12] = f10 * f9 * fArr9[i12];
                    }
                }
                i12++;
                length2 = i2;
            }
            i11++;
            i3 = 0;
        }
        this.f3903a = fArr;
        this.f3904b = fArr2;
        this.f3905c = fArr4;
    }
}
