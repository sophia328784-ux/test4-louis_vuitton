package androidx.compose.ui.node;

import androidx.compose.ui.layout.MeasureResult;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/node/PlaceableResult;", "Landroidx/compose/ui/node/OwnerScope;", "Landroidx/compose/ui/layout/MeasureResult;", "result", "Landroidx/compose/ui/node/LookaheadCapablePlaceable;", "placeable", "<init>", "(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class PlaceableResult implements OwnerScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MeasureResult f9826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LookaheadCapablePlaceable f9827c;

    public PlaceableResult(MeasureResult measureResult, LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        this.f9826b = measureResult;
        this.f9827c = lookaheadCapablePlaceable;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean T0() {
        return this.f9827c.w().c();
    }
}
