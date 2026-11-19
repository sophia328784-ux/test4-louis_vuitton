package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;", "Landroidx/camera/core/impl/Quirk;", "camera-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PrematureEndOfStreamVideoQuirk implements Quirk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PrematureEndOfStreamVideoQuirk f2950a = new PrematureEndOfStreamVideoQuirk();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f2951b;

    static {
        f2951b = n.a.f38812e.equalsIgnoreCase(Build.BRAND) && "CPH1931".equalsIgnoreCase(Build.MODEL);
    }
}
