package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001BO\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012<\u0010\u000b\u001a8\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\n0\u0004¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/animation/SizeTransformImpl;", "Landroidx/compose/animation/SizeTransform;", "", "clip", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/IntSize;", "Lkotlin/ParameterName;", "name", "initialSize", "targetSize", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "sizeAnimationSpec", "<init>", "(ZLkotlin/jvm/functions/Function2;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SizeTransformImpl implements SizeTransform {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f3734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function2 f3735b;

    public /* synthetic */ SizeTransformImpl(boolean z, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z, function2);
    }

    @Override // androidx.compose.animation.SizeTransform
    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getF3734a() {
        return this.f3734a;
    }

    @Override // androidx.compose.animation.SizeTransform
    public final FiniteAnimationSpec c(long j2, long j3) {
        return (FiniteAnimationSpec) this.f3735b.invoke(new IntSize(j2), new IntSize(j3));
    }

    public SizeTransformImpl(boolean z, Function2<? super IntSize, ? super IntSize, ? extends FiniteAnimationSpec<IntSize>> function2) {
        this.f3734a = z;
        this.f3735b = function2;
    }
}
