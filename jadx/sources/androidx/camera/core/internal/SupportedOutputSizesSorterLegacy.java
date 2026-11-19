package androidx.camera.core.internal;

import android.util.Rational;
import android.util.Size;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.utils.CameraOrientationUtil;

/* JADX INFO: loaded from: classes.dex */
class SupportedOutputSizesSorterLegacy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rational f2497c;
    public final boolean d;

    public SupportedOutputSizesSorterLegacy(CameraInfoInternal cameraInfoInternal, Rational rational) {
        this.f2495a = cameraInfoInternal.d();
        this.f2496b = cameraInfoInternal.g();
        this.f2497c = rational;
        boolean z = true;
        if (rational != null && rational.getNumerator() < rational.getDenominator()) {
            z = false;
        }
        this.d = z;
    }

    public final Size a(ImageOutputConfig imageOutputConfig) {
        int iG = imageOutputConfig.G(0);
        Size sizeV = imageOutputConfig.v();
        if (sizeV != null) {
            int iA = CameraOrientationUtil.a(CameraOrientationUtil.b(iG), this.f2495a, 1 == this.f2496b);
            if (iA == 90 || iA == 270) {
                return new Size(sizeV.getHeight(), sizeV.getWidth());
            }
        }
        return sizeV;
    }
}
