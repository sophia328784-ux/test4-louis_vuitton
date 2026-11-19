package androidx.compose.material3.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntRect;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"androidx/compose/material3/internal/AnchorAlignmentOffsetPosition$Vertical", "Landroidx/compose/material3/internal/MenuPosition$Vertical;", "Landroidx/compose/ui/Alignment$Vertical;", "menuAlignment", "anchorAlignment", "", "offset", "<init>", "(Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Vertical;I)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class AnchorAlignmentOffsetPosition$Vertical implements MenuPosition$Vertical {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Alignment.Vertical f7491a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Alignment.Vertical f7492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7493c;

    public AnchorAlignmentOffsetPosition$Vertical(Alignment.Vertical vertical, Alignment.Vertical vertical2, int i2) {
        this.f7491a = vertical;
        this.f7492b = vertical2;
        this.f7493c = i2;
    }

    @Override // androidx.compose.material3.internal.MenuPosition$Vertical
    public final int a(IntRect intRect, long j2, int i2) {
        int iA = this.f7492b.a(0, intRect.b());
        return intRect.f11018b + iA + (-this.f7491a.a(0, i2)) + this.f7493c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnchorAlignmentOffsetPosition$Vertical)) {
            return false;
        }
        AnchorAlignmentOffsetPosition$Vertical anchorAlignmentOffsetPosition$Vertical = (AnchorAlignmentOffsetPosition$Vertical) obj;
        return Intrinsics.c(this.f7491a, anchorAlignmentOffsetPosition$Vertical.f7491a) && Intrinsics.c(this.f7492b, anchorAlignmentOffsetPosition$Vertical.f7492b) && this.f7493c == anchorAlignmentOffsetPosition$Vertical.f7493c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f7493c) + ((this.f7492b.hashCode() + (this.f7491a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Vertical(menuAlignment=");
        sb.append(this.f7491a);
        sb.append(", anchorAlignment=");
        sb.append(this.f7492b);
        sb.append(", offset=");
        return tr.k(sb, this.f7493c, ')');
    }
}
