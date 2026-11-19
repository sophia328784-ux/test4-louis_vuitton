package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AnimationModifierKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f3534a;

    static {
        IntSize.Companion companion = IntSize.f11020b;
        f3534a = -9223372034707292160L;
    }

    public static final Modifier a(Modifier modifier, FiniteAnimationSpec finiteAnimationSpec, Function2 function2) {
        Modifier modifierB = ClipKt.b(modifier);
        Alignment.f8582a.getClass();
        return modifierB.o(new SizeAnimationModifierElement(finiteAnimationSpec, Alignment.Companion.f8584b, function2));
    }

    public static Modifier b(Modifier modifier, TweenSpec tweenSpec, int i2) {
        FiniteAnimationSpec finiteAnimationSpecB = tweenSpec;
        if ((i2 & 1) != 0) {
            IntSize.Companion companion = IntSize.f11020b;
            Rect rect = VisibilityThresholdsKt.f4089a;
            finiteAnimationSpecB = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
        }
        return a(modifier, finiteAnimationSpecB, null);
    }

    public static final boolean c(long j2) {
        return !IntSize.b(j2, f3534a);
    }
}
