package com.vuitton.android.designkit.ui.theme;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/LVShape;", "", "Landroidx/compose/foundation/shape/RoundedCornerShape;", "radius2", "radius4", "radius8", "radius16", "radius40", "<init>", "(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVShape {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoundedCornerShape f48409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RoundedCornerShape f48410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RoundedCornerShape f48411c;
    public final RoundedCornerShape d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RoundedCornerShape f48412e;

    /* JADX WARN: Illegal instructions before constructor call */
    public LVShape(RoundedCornerShape roundedCornerShape, RoundedCornerShape roundedCornerShape2, RoundedCornerShape roundedCornerShape3, RoundedCornerShape roundedCornerShape4, RoundedCornerShape roundedCornerShape5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            Dp.Companion companion = Dp.f11004c;
            roundedCornerShape = RoundedCornerShapeKt.a(2.0f);
        }
        if ((i2 & 2) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            roundedCornerShape2 = RoundedCornerShapeKt.a(4.0f);
        }
        if ((i2 & 4) != 0) {
            Dp.Companion companion3 = Dp.f11004c;
            roundedCornerShape3 = RoundedCornerShapeKt.a(8.0f);
        }
        if ((i2 & 8) != 0) {
            Dp.Companion companion4 = Dp.f11004c;
            roundedCornerShape4 = RoundedCornerShapeKt.a(16.0f);
        }
        if ((i2 & 16) != 0) {
            Dp.Companion companion5 = Dp.f11004c;
            roundedCornerShape5 = RoundedCornerShapeKt.a(40.0f);
        }
        RoundedCornerShape roundedCornerShape6 = roundedCornerShape5;
        RoundedCornerShape roundedCornerShape7 = roundedCornerShape3;
        RoundedCornerShape roundedCornerShape8 = roundedCornerShape;
        this(roundedCornerShape8, roundedCornerShape2, roundedCornerShape7, roundedCornerShape4, roundedCornerShape6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVShape)) {
            return false;
        }
        LVShape lVShape = (LVShape) obj;
        return Intrinsics.c(this.f48409a, lVShape.f48409a) && Intrinsics.c(this.f48410b, lVShape.f48410b) && Intrinsics.c(this.f48411c, lVShape.f48411c) && Intrinsics.c(this.d, lVShape.d) && Intrinsics.c(this.f48412e, lVShape.f48412e);
    }

    public final int hashCode() {
        return this.f48412e.hashCode() + ((this.d.hashCode() + ((this.f48411c.hashCode() + ((this.f48410b.hashCode() + (this.f48409a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LVShape(radius2=" + this.f48409a + ", radius4=" + this.f48410b + ", radius8=" + this.f48411c + ", radius16=" + this.d + ", radius40=" + this.f48412e + ")";
    }

    public LVShape(RoundedCornerShape roundedCornerShape, RoundedCornerShape roundedCornerShape2, RoundedCornerShape roundedCornerShape3, RoundedCornerShape roundedCornerShape4, RoundedCornerShape roundedCornerShape5) {
        roundedCornerShape.getClass();
        roundedCornerShape2.getClass();
        roundedCornerShape3.getClass();
        roundedCornerShape4.getClass();
        roundedCornerShape5.getClass();
        this.f48409a = roundedCornerShape;
        this.f48410b = roundedCornerShape2;
        this.f48411c = roundedCornerShape3;
        this.d = roundedCornerShape4;
        this.f48412e = roundedCornerShape5;
    }

    public LVShape() {
        this(null, null, null, null, null, 31, null);
    }
}
