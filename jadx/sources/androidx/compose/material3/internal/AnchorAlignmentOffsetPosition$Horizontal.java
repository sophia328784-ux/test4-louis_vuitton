package androidx.compose.material3.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"androidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Horizontal", "Landroidx/compose/material3/internal/MenuPosition$Horizontal;", "Landroidx/compose/ui/Alignment$Horizontal;", "menuAlignment", "anchorAlignment", "", "offset", "<init>", "(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Horizontal;I)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class AnchorAlignmentOffsetPosition$Horizontal implements MenuPosition$Horizontal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Alignment.Horizontal f7488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Alignment.Horizontal f7489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7490c;

    public AnchorAlignmentOffsetPosition$Horizontal(Alignment.Horizontal horizontal, Alignment.Horizontal horizontal2, int i2) {
        this.f7488a = horizontal;
        this.f7489b = horizontal2;
        this.f7490c = i2;
    }

    @Override // androidx.compose.material3.internal.MenuPosition$Horizontal
    public final int a(IntRect intRect, long j2, int i2, LayoutDirection layoutDirection) {
        int iA = this.f7489b.a(0, intRect.d(), layoutDirection);
        int i3 = -this.f7488a.a(0, i2, layoutDirection);
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        int i4 = this.f7490c;
        if (layoutDirection != layoutDirection2) {
            i4 = -i4;
        }
        return pq0.D(intRect.f11017a, iA, i3, i4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnchorAlignmentOffsetPosition$Horizontal)) {
            return false;
        }
        AnchorAlignmentOffsetPosition$Horizontal anchorAlignmentOffsetPosition$Horizontal = (AnchorAlignmentOffsetPosition$Horizontal) obj;
        return Intrinsics.c(this.f7488a, anchorAlignmentOffsetPosition$Horizontal.f7488a) && Intrinsics.c(this.f7489b, anchorAlignmentOffsetPosition$Horizontal.f7489b) && this.f7490c == anchorAlignmentOffsetPosition$Horizontal.f7490c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f7490c) + ((this.f7489b.hashCode() + (this.f7488a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Horizontal(menuAlignment=");
        sb.append(this.f7488a);
        sb.append(", anchorAlignment=");
        sb.append(this.f7489b);
        sb.append(", offset=");
        return tr.k(sb, this.f7490c, ')');
    }
}
