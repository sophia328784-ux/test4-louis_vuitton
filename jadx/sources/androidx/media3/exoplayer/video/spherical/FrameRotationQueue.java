package androidx.media3.exoplayer.video.spherical;

import android.opengl.Matrix;
import androidx.media3.common.util.TimedValueQueue;

/* JADX INFO: loaded from: classes.dex */
final class FrameRotationQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f15998a = new float[16];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f15999b = new float[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TimedValueQueue f16000c = new TimedValueQueue();
    public boolean d;

    public static void a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float f2 = fArr2[10];
        float f3 = fArr2[8];
        float fSqrt = (float) Math.sqrt((f3 * f3) + (f2 * f2));
        float f4 = fArr2[10] / fSqrt;
        fArr[0] = f4;
        float f5 = fArr2[8];
        fArr[2] = f5 / fSqrt;
        fArr[8] = (-f5) / fSqrt;
        fArr[10] = f4;
    }
}
