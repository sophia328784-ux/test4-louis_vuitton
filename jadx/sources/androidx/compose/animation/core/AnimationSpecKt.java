package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AnimationSpecKt {
    public static InfiniteRepeatableSpec a(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j2, int i2) {
        if ((i2 & 2) != 0) {
            repeatMode = RepeatMode.Restart;
        }
        RepeatMode repeatMode2 = repeatMode;
        if ((i2 & 4) != 0) {
            j2 = StartOffset.a(0);
        }
        return new InfiniteRepeatableSpec(durationBasedAnimationSpec, repeatMode2, j2, (DefaultConstructorMarker) null);
    }

    public static SpringSpec b(float f2, float f3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            f2 = 1.0f;
        }
        if ((i2 & 2) != 0) {
            f3 = 1500.0f;
        }
        if ((i2 & 4) != 0) {
            obj = null;
        }
        return new SpringSpec(f2, f3, obj);
    }

    public static TweenSpec c(int i2, int i3, Easing easing, int i4) {
        if ((i4 & 1) != 0) {
            i2 = 300;
        }
        if ((i4 & 2) != 0) {
            i3 = 0;
        }
        if ((i4 & 4) != 0) {
            easing = EasingKt.f3862a;
        }
        return new TweenSpec(i2, i3, easing);
    }
}
