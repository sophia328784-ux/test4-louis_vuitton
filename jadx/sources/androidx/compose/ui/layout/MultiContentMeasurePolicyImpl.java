package androidx.compose.ui.layout;

import androidx.compose.ui.node.MeasureScopeWithLayoutNodeKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;", "Landroidx/compose/ui/layout/MeasurePolicy;", "Landroidx/compose/ui/layout/MultiContentMeasurePolicy;", "measurePolicy", "<init>", "(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class MultiContentMeasurePolicyImpl implements MeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MultiContentMeasurePolicy f9540a;

    public MultiContentMeasurePolicyImpl(MultiContentMeasurePolicy multiContentMeasurePolicy) {
        this.f9540a = multiContentMeasurePolicy;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MultiContentMeasurePolicyImpl) && Intrinsics.c(this.f9540a, ((MultiContentMeasurePolicyImpl) obj).f9540a);
    }

    public final int hashCode() {
        return this.f9540a.hashCode();
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return this.f9540a.maxIntrinsicHeight(intrinsicMeasureScope, MeasureScopeWithLayoutNodeKt.a(intrinsicMeasureScope), i2);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return this.f9540a.maxIntrinsicWidth(intrinsicMeasureScope, MeasureScopeWithLayoutNodeKt.a(intrinsicMeasureScope), i2);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
        return this.f9540a.mo2measure3p2s80s(measureScope, MeasureScopeWithLayoutNodeKt.a(measureScope), j2);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return this.f9540a.minIntrinsicHeight(intrinsicMeasureScope, MeasureScopeWithLayoutNodeKt.a(intrinsicMeasureScope), i2);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
        return this.f9540a.minIntrinsicWidth(intrinsicMeasureScope, MeasureScopeWithLayoutNodeKt.a(intrinsicMeasureScope), i2);
    }

    public final String toString() {
        return "MultiContentMeasurePolicyImpl(measurePolicy=" + this.f9540a + ')';
    }
}
