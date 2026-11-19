package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B8\u0012!\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/animation/Slide;", "", "Lkotlin/Function1;", "Landroidx/compose/ui/unit/IntSize;", "Lkotlin/ParameterName;", "name", "fullSize", "Landroidx/compose/ui/unit/IntOffset;", "slideOffset", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "animationSpec", "<init>", "(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Slide {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f3746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FiniteAnimationSpec f3747b;

    public Slide(Function1<? super IntSize, IntOffset> function1, FiniteAnimationSpec<IntOffset> finiteAnimationSpec) {
        this.f3746a = function1;
        this.f3747b = finiteAnimationSpec;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Slide)) {
            return false;
        }
        Slide slide = (Slide) obj;
        return Intrinsics.c(this.f3746a, slide.f3746a) && Intrinsics.c(this.f3747b, slide.f3747b);
    }

    public final int hashCode() {
        return this.f3747b.hashCode() + (this.f3746a.hashCode() * 31);
    }

    public final String toString() {
        return "Slide(slideOffset=" + this.f3746a + ", animationSpec=" + this.f3747b + ')';
    }
}
