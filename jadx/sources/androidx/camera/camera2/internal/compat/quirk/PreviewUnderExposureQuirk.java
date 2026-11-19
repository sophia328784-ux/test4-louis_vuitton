package androidx.camera.camera2.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/camera/camera2/internal/compat/quirk/PreviewUnderExposureQuirk;", "Landroidx/camera/core/impl/Quirk;", "camera-camera2_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PreviewUnderExposureQuirk implements Quirk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PreviewUnderExposureQuirk f1753a = new PreviewUnderExposureQuirk();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f1754b = StringsKt.s(Build.BRAND, "TCL", true);
}
