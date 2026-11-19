package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.PreviewUnderExposureQuirk;
import androidx.camera.core.impl.UseCaseConfigFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class TemplateTypeUtil {

    /* JADX INFO: renamed from: androidx.camera.camera2.internal.TemplateTypeUtil$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1647a;

        static {
            int[] iArr = new int[UseCaseConfigFactory.CaptureType.values().length];
            f1647a = iArr;
            try {
                iArr[UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1647a[UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1647a[UseCaseConfigFactory.CaptureType.STREAM_SHARING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1647a[UseCaseConfigFactory.CaptureType.PREVIEW.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1647a[UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static int a(UseCaseConfigFactory.CaptureType captureType, int i2) {
        int i3 = AnonymousClass1.f1647a[captureType.ordinal()];
        if (i3 != 1) {
            return (i3 == 2 && DeviceQuirks.f1731a.b(PreviewUnderExposureQuirk.class) == null) ? 3 : 1;
        }
        return i2 == 2 ? 5 : 1;
    }
}
