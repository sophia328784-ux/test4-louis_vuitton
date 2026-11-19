package androidx.compose.ui.layout;

import androidx.compose.ui.unit.Constraints;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "measurable", "Landroidx/compose/ui/layout/IntrinsicMinMax;", "minMax", "Landroidx/compose/ui/layout/IntrinsicWidthHeight;", "widthHeight", "<init>", "(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMinMax;Landroidx/compose/ui/layout/IntrinsicWidthHeight;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DefaultIntrinsicMeasurable implements Measurable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IntrinsicMeasurable f9454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IntrinsicMinMax f9455c;
    public final IntrinsicWidthHeight d;

    public DefaultIntrinsicMeasurable(IntrinsicMeasurable intrinsicMeasurable, IntrinsicMinMax intrinsicMinMax, IntrinsicWidthHeight intrinsicWidthHeight) {
        this.f9454b = intrinsicMeasurable;
        this.f9455c = intrinsicMinMax;
        this.d = intrinsicWidthHeight;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int H(int i2) {
        return this.f9454b.H(i2);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int M(int i2) {
        return this.f9454b.M(i2);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int S(int i2) {
        return this.f9454b.S(i2);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final Placeable T(long j2) {
        IntrinsicWidthHeight intrinsicWidthHeight = IntrinsicWidthHeight.Width;
        IntrinsicMeasurable intrinsicMeasurable = this.f9454b;
        IntrinsicWidthHeight intrinsicWidthHeight2 = this.d;
        IntrinsicMinMax intrinsicMinMax = this.f9455c;
        if (intrinsicWidthHeight2 == intrinsicWidthHeight) {
            return new FixedSizeIntrinsicsPlaceable(intrinsicMinMax == IntrinsicMinMax.Max ? intrinsicMeasurable.S(Constraints.g(j2)) : intrinsicMeasurable.M(Constraints.g(j2)), Constraints.c(j2) ? Constraints.g(j2) : 32767);
        }
        return new FixedSizeIntrinsicsPlaceable(Constraints.d(j2) ? Constraints.h(j2) : 32767, intrinsicMinMax == IntrinsicMinMax.Max ? intrinsicMeasurable.l(Constraints.h(j2)) : intrinsicMeasurable.H(Constraints.h(j2)));
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    /* JADX INFO: renamed from: e */
    public final Object getT() {
        return this.f9454b.getT();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int l(int i2) {
        return this.f9454b.l(i2);
    }
}
