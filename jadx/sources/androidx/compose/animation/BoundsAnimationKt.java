package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BoundsAnimationKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpringSpec f3543a;

    static {
        Rect.Companion companion = Rect.f8809e;
        f3543a = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, VisibilityThresholdsKt.f4089a);
    }
}
