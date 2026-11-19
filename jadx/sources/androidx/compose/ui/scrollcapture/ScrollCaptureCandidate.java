package androidx.compose.ui.scrollcapture;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.unit.IntRect;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/ui/scrollcapture/ScrollCaptureCandidate;", "", "Landroidx/compose/ui/semantics/SemanticsNode;", "node", "", "depth", "Landroidx/compose/ui/unit/IntRect;", "viewportBoundsInWindow", "Landroidx/compose/ui/layout/LayoutCoordinates;", "coordinates", "<init>", "(Landroidx/compose/ui/semantics/SemanticsNode;ILandroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/layout/LayoutCoordinates;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ScrollCaptureCandidate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SemanticsNode f10266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IntRect f10268c;
    public final LayoutCoordinates d;

    public ScrollCaptureCandidate(SemanticsNode semanticsNode, int i2, IntRect intRect, LayoutCoordinates layoutCoordinates) {
        this.f10266a = semanticsNode;
        this.f10267b = i2;
        this.f10268c = intRect;
        this.d = layoutCoordinates;
    }

    public final String toString() {
        return "ScrollCaptureCandidate(node=" + this.f10266a + ", depth=" + this.f10267b + ", viewportBoundsInWindow=" + this.f10268c + ", coordinates=" + this.d + ')';
    }
}
