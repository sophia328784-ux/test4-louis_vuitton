package androidx.compose.foundation.shape;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import defpackage.d21;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/shape/PercentCornerSize;", "Landroidx/compose/foundation/shape/CornerSize;", "Landroidx/compose/ui/platform/InspectableValue;", "", "percent", "<init>", "(F)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class PercentCornerSize implements CornerSize, InspectableValue {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5845b;

    public PercentCornerSize(float f2) {
        this.f5845b = f2;
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 > 100.0f) {
            InlineClassHelperKt.a("The percent should be in the range of [0, 100]");
        }
    }

    @Override // androidx.compose.foundation.shape.CornerSize
    public final float a(long j2, Density density) {
        return (this.f5845b / 100.0f) * Size.c(j2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PercentCornerSize) && Float.compare(this.f5845b, ((PercentCornerSize) obj).f5845b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f5845b);
    }

    public final String toString() {
        return d21.e(this.f5845b, "%)", new StringBuilder("CornerSize(size = "));
    }
}
