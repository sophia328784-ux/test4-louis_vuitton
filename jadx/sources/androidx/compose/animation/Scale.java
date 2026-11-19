package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.graphics.TransformOrigin;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/animation/Scale;", "", "", "scale", "Landroidx/compose/ui/graphics/TransformOrigin;", "transformOrigin", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "animationSpec", "<init>", "(FJLandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Scale {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FiniteAnimationSpec f3644c;

    public Scale(float f2, long j2, FiniteAnimationSpec finiteAnimationSpec, DefaultConstructorMarker defaultConstructorMarker) {
        this.f3642a = f2;
        this.f3643b = j2;
        this.f3644c = finiteAnimationSpec;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scale)) {
            return false;
        }
        Scale scale = (Scale) obj;
        return Float.compare(this.f3642a, scale.f3642a) == 0 && TransformOrigin.a(this.f3643b, scale.f3643b) && Intrinsics.c(this.f3644c, scale.f3644c);
    }

    public final int hashCode() {
        int iHashCode = Float.hashCode(this.f3642a) * 31;
        TransformOrigin.Companion companion = TransformOrigin.f8941b;
        return this.f3644c.hashCode() + fc.a(iHashCode, 31, this.f3643b);
    }

    public final String toString() {
        return "Scale(scale=" + this.f3642a + ", transformOrigin=" + ((Object) TransformOrigin.d(this.f3643b)) + ", animationSpec=" + this.f3644c + ')';
    }
}
