package androidx.compose.material3.internal;

import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/material3/internal/AnchoredDraggableState$anchoredDragScope$1", "Landroidx/compose/material3/internal/AnchoredDragScope;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AnchoredDraggableState$anchoredDragScope$1 implements AnchoredDragScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AnchoredDraggableState f7540a;

    public AnchoredDraggableState$anchoredDragScope$1(AnchoredDraggableState anchoredDraggableState) {
        this.f7540a = anchoredDraggableState;
    }

    @Override // androidx.compose.material3.internal.AnchoredDragScope
    public final void a(float f2, float f3) {
        int i2 = AnchoredDraggableState.p;
        AnchoredDraggableState anchoredDraggableState = this.f7540a;
        ((SnapshotMutableFloatStateImpl) anchoredDraggableState.f7523j).w(f2);
        ((SnapshotMutableFloatStateImpl) anchoredDraggableState.l).w(f3);
    }
}
