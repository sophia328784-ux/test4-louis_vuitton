package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/PaddingValuesImpl;", "Landroidx/compose/foundation/layout/PaddingValues;", "Landroidx/compose/ui/unit/Dp;", "start", "top", "end", "bottom", "<init>", "(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PaddingValuesImpl implements PaddingValues {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f5030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f5032c;
    public final float d;

    public PaddingValuesImpl(float f2, float f3, float f4, float f5, DefaultConstructorMarker defaultConstructorMarker) {
        this.f5030a = f2;
        this.f5031b = f3;
        this.f5032c = f4;
        this.d = f5;
        if (!((f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) & (f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) & (f4 >= Call.Parameters.DEFAULT_CAMERA_ZOOM)) || !(f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
            InlineClassHelperKt.a("Padding must be non-negative");
        }
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: a, reason: from getter */
    public final float getD() {
        return this.d;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float b(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.f5030a : this.f5032c;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float c(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.f5032c : this.f5030a;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: d, reason: from getter */
    public final float getF5031b() {
        return this.f5031b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PaddingValuesImpl)) {
            return false;
        }
        PaddingValuesImpl paddingValuesImpl = (PaddingValuesImpl) obj;
        return Dp.b(this.f5030a, paddingValuesImpl.f5030a) && Dp.b(this.f5031b, paddingValuesImpl.f5031b) && Dp.b(this.f5032c, paddingValuesImpl.f5032c) && Dp.b(this.d, paddingValuesImpl.d);
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f5030a) * 31, 31, this.f5031b), 31, this.f5032c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PaddingValues(start=");
        fc.w(this.f5030a, ", top=", sb);
        fc.w(this.f5031b, ", end=", sb);
        fc.w(this.f5032c, ", bottom=", sb);
        sb.append((Object) Dp.c(this.d));
        sb.append(')');
        return sb.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PaddingValuesImpl(float f2, float f3, float f4, float f5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        float f6;
        float f7;
        float f8;
        float f9;
        if ((i2 & 1) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f6 = 0.0f;
        } else {
            f6 = f2;
        }
        if ((i2 & 2) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            f7 = 0.0f;
        } else {
            f7 = f3;
        }
        if ((i2 & 4) != 0) {
            Dp.Companion companion3 = Dp.f11004c;
            f8 = 0.0f;
        } else {
            f8 = f4;
        }
        if ((i2 & 8) != 0) {
            Dp.Companion companion4 = Dp.f11004c;
            f9 = 0.0f;
        } else {
            f9 = f5;
        }
        this(f6, f7, f8, f9, null);
    }
}
