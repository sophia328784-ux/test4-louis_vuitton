package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0003"}, d2 = {"Landroidx/compose/animation/core/Animation;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Animation<T, V extends AnimationVector> {
    boolean a();

    AnimationVector b(long j2);

    default boolean c(long j2) {
        return j2 >= d();
    }

    long d();

    TwoWayConverter e();

    Object f(long j2);

    Object g();
}
