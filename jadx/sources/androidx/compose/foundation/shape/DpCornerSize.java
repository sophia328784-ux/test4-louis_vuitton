package androidx.compose.foundation.shape;

import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/shape/DpCornerSize;", "Landroidx/compose/foundation/shape/CornerSize;", "Landroidx/compose/ui/platform/InspectableValue;", "Landroidx/compose/ui/unit/Dp;", "size", "<init>", "(FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class DpCornerSize implements CornerSize, InspectableValue {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5844b;

    public DpCornerSize(float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5844b = f2;
    }

    @Override // androidx.compose.foundation.shape.CornerSize
    public final float a(long j2, Density density) {
        return density.u1(this.f5844b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DpCornerSize) && Dp.b(this.f5844b, ((DpCornerSize) obj).f5844b);
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Float.hashCode(this.f5844b);
    }

    public final String toString() {
        return d21.e(this.f5844b, ".dp)", new StringBuilder("CornerSize(size = "));
    }
}
