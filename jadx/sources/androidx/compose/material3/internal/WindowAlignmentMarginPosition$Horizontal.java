package androidx.compose.material3.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"androidx/compose/material3/internal/WindowAlignmentMarginPosition$Horizontal", "Landroidx/compose/material3/internal/MenuPosition$Horizontal;", "Landroidx/compose/ui/Alignment$Horizontal;", "alignment", "", "margin", "<init>", "(Landroidx/compose/ui/Alignment$Horizontal;I)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class WindowAlignmentMarginPosition$Horizontal implements MenuPosition$Horizontal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Alignment.Horizontal f7679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7680b;

    public WindowAlignmentMarginPosition$Horizontal(Alignment.Horizontal horizontal, int i2) {
        this.f7679a = horizontal;
        this.f7680b = i2;
    }

    @Override // androidx.compose.material3.internal.MenuPosition$Horizontal
    public final int a(IntRect intRect, long j2, int i2, LayoutDirection layoutDirection) {
        int i3 = (int) (j2 >> 32);
        int i4 = this.f7680b;
        if (i2 < i3 - (i4 * 2)) {
            return RangesKt.d(this.f7679a.a(i2, i3, layoutDirection), i4, (i3 - i4) - i2);
        }
        Alignment.f8582a.getClass();
        return Alignment.Companion.o.a(i2, i3, layoutDirection);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowAlignmentMarginPosition$Horizontal)) {
            return false;
        }
        WindowAlignmentMarginPosition$Horizontal windowAlignmentMarginPosition$Horizontal = (WindowAlignmentMarginPosition$Horizontal) obj;
        return Intrinsics.c(this.f7679a, windowAlignmentMarginPosition$Horizontal.f7679a) && this.f7680b == windowAlignmentMarginPosition$Horizontal.f7680b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f7680b) + (this.f7679a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Horizontal(alignment=");
        sb.append(this.f7679a);
        sb.append(", margin=");
        return tr.k(sb, this.f7680b, ')');
    }
}
