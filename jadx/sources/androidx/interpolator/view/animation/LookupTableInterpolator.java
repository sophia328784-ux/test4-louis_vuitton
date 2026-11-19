package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;
import defpackage.tr;
import net.rtccloud.sdk.Call;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract class LookupTableInterpolator implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f13401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f13402b;

    public LookupTableInterpolator(float[] fArr) {
        this.f13401a = fArr;
        this.f13402b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        if (f2 >= 1.0f) {
            return 1.0f;
        }
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float[] fArr = this.f13401a;
        int iMin = Math.min((int) ((fArr.length - 1) * f2), fArr.length - 2);
        float f3 = this.f13402b;
        float f4 = (f2 - (iMin * f3)) / f3;
        float f5 = fArr[iMin];
        return tr.a(fArr[iMin + 1], f5, f4, f5);
    }
}
