package androidx.compose.material3.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntRect;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"androidx/compose/material3/internal/WindowAlignmentMarginPosition$Vertical", "Landroidx/compose/material3/internal/MenuPosition$Vertical;", "Landroidx/compose/ui/Alignment$Vertical;", "alignment", "", "margin", "<init>", "(Landroidx/compose/ui/Alignment$Vertical;I)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class WindowAlignmentMarginPosition$Vertical implements MenuPosition$Vertical {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Alignment.Vertical f7681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7682b;

    public WindowAlignmentMarginPosition$Vertical(Alignment.Vertical vertical, int i2) {
        this.f7681a = vertical;
        this.f7682b = i2;
    }

    @Override // androidx.compose.material3.internal.MenuPosition$Vertical
    public final int a(IntRect intRect, long j2, int i2) {
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        int i4 = this.f7682b;
        if (i2 < i3 - (i4 * 2)) {
            return RangesKt.d(this.f7681a.a(i2, i3), i4, (i3 - i4) - i2);
        }
        Alignment.f8582a.getClass();
        return Alignment.Companion.l.a(i2, i3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WindowAlignmentMarginPosition$Vertical)) {
            return false;
        }
        WindowAlignmentMarginPosition$Vertical windowAlignmentMarginPosition$Vertical = (WindowAlignmentMarginPosition$Vertical) obj;
        return Intrinsics.c(this.f7681a, windowAlignmentMarginPosition$Vertical.f7681a) && this.f7682b == windowAlignmentMarginPosition$Vertical.f7682b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f7682b) + (this.f7681a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Vertical(alignment=");
        sb.append(this.f7681a);
        sb.append(", margin=");
        return tr.k(sb, this.f7682b, ')');
    }
}
