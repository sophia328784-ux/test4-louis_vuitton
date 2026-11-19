package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/camera/video/internal/compat/quirk/PreviewFreezeAfterHighSpeedRecordingQuirk;", "Landroidx/camera/core/impl/Quirk;", "camera-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PreviewFreezeAfterHighSpeedRecordingQuirk implements Quirk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PreviewFreezeAfterHighSpeedRecordingQuirk f2955a = new PreviewFreezeAfterHighSpeedRecordingQuirk();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f2956b;

    /* JADX WARN: Code duplicated, block: B:7:0x0020  */
    static {
        boolean z;
        if (StringsKt.s(Build.BRAND, Payload.SOURCE_GOOGLE, true)) {
            String str = Build.MODEL;
            str.getClass();
            z = StringsKt.P(str, "Pixel", true);
        }
        f2956b = z;
    }
}
