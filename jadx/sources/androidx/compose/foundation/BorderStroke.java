package androidx.compose.foundation;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.unit.Dp;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/BorderStroke;", "", "Landroidx/compose/ui/unit/Dp;", "width", "Landroidx/compose/ui/graphics/Brush;", "brush", "<init>", "(FLandroidx/compose/ui/graphics/Brush;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BorderStroke {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f4154a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Brush f4155b;

    public BorderStroke(float f2, Brush brush, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4154a = f2;
        this.f4155b = brush;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderStroke)) {
            return false;
        }
        BorderStroke borderStroke = (BorderStroke) obj;
        return Dp.b(this.f4154a, borderStroke.f4154a) && Intrinsics.c(this.f4155b, borderStroke.f4155b);
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return this.f4155b.hashCode() + (Float.hashCode(this.f4154a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BorderStroke(width=");
        fc.w(this.f4154a, ", brush=", sb);
        sb.append(this.f4155b);
        sb.append(')');
        return sb.toString();
    }
}
