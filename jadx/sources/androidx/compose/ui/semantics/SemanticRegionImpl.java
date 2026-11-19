package androidx.compose.ui.semantics;

import android.graphics.Rect;
import android.graphics.Region;
import androidx.compose.ui.unit.IntRect;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/semantics/SemanticRegionImpl;", "Landroidx/compose/ui/semantics/SemanticsRegion;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SemanticRegionImpl implements SemanticsRegion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Region f10301a = new Region();

    public final boolean a(IntRect intRect) {
        return this.f10301a.op(intRect.f11017a, intRect.f11018b, intRect.f11019c, intRect.d, Region.Op.DIFFERENCE);
    }

    public final IntRect b() {
        Rect bounds = this.f10301a.getBounds();
        return new IntRect(bounds.left, bounds.top, bounds.right, bounds.bottom);
    }

    public final boolean c(SemanticsRegion semanticsRegion) {
        return this.f10301a.op(((SemanticRegionImpl) semanticsRegion).f10301a, Region.Op.INTERSECT);
    }

    public final void d(IntRect intRect) {
        this.f10301a.set(intRect.f11017a, intRect.f11018b, intRect.f11019c, intRect.d);
    }
}
