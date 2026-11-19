package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyLayoutItemAnimationKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpringSpec f5453a;

    static {
        IntOffset.Companion companion = IntOffset.f11012b;
        Rect rect = VisibilityThresholdsKt.f4089a;
        f5453a = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntOffset(4294967297L));
    }
}
