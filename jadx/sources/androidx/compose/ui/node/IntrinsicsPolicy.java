package androidx.compose.ui.node;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.layout.MeasurePolicy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/node/IntrinsicsPolicy;", "", "Landroidx/compose/ui/node/LayoutNode;", "layoutNode", "Landroidx/compose/ui/layout/MeasurePolicy;", "policy", "<init>", "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/MeasurePolicy;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class IntrinsicsPolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LayoutNode f9676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f9677b;

    public IntrinsicsPolicy(LayoutNode layoutNode, MeasurePolicy measurePolicy) {
        this.f9676a = layoutNode;
        this.f9677b = SnapshotStateKt.g(measurePolicy);
    }

    public final MeasurePolicy a() {
        return (MeasurePolicy) ((SnapshotMutableStateImpl) this.f9677b).getF10755b();
    }
}
