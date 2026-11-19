package androidx.camera.camera2.internal;

import android.content.Context;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.PreviewUnderExposureQuirk;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2UseCaseConfigFactory implements UseCaseConfigFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DisplayInfoManager f1533b;

    public Camera2UseCaseConfigFactory(Context context) {
        this.f1533b = DisplayInfoManager.b(context);
    }

    @Override // androidx.camera.core.impl.UseCaseConfigFactory
    public final Config a(UseCaseConfigFactory.CaptureType captureType, int i2) {
        MutableOptionsBundle mutableOptionsBundleD0 = MutableOptionsBundle.d0();
        SessionConfig.Builder builder = new SessionConfig.Builder();
        builder.w(TemplateTypeUtil.a(captureType, i2));
        mutableOptionsBundleD0.o(UseCaseConfig.u, builder.k());
        mutableOptionsBundleD0.o(UseCaseConfig.w, Camera2SessionOptionUnpacker.f1532a);
        CaptureConfig.Builder builder2 = new CaptureConfig.Builder();
        int i3 = TemplateTypeUtil.AnonymousClass1.f1647a[captureType.ordinal()];
        int i4 = 2;
        if (i3 != 1) {
            i4 = (i3 == 2 && DeviceQuirks.f1731a.b(PreviewUnderExposureQuirk.class) == null) ? 3 : 1;
        } else if (i2 == 2) {
            i4 = 5;
        }
        builder2.f2276c = i4;
        mutableOptionsBundleD0.o(UseCaseConfig.v, builder2.e());
        mutableOptionsBundleD0.o(UseCaseConfig.x, captureType == UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE ? ImageCaptureOptionUnpacker.f1594b : Camera2CaptureOptionUnpacker.f1480a);
        if (captureType == UseCaseConfigFactory.CaptureType.PREVIEW) {
            mutableOptionsBundleD0.o(ImageOutputConfig.q, this.f1533b.e());
        }
        mutableOptionsBundleD0.o(ImageOutputConfig.l, Integer.valueOf(this.f1533b.c(true).getRotation()));
        if (captureType == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE || captureType == UseCaseConfigFactory.CaptureType.STREAM_SHARING) {
            mutableOptionsBundleD0.o(UseCaseConfig.C, Boolean.TRUE);
        }
        return OptionsBundle.c0(mutableOptionsBundleD0);
    }
}
