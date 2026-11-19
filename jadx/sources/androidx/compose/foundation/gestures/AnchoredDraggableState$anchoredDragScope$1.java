package androidx.compose.foundation.gestures;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/gestures/AnchoredDraggableState$anchoredDragScope$1", "Landroidx/compose/foundation/gestures/AnchoredDragScope;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnchoredDraggableState$anchoredDragScope$1 implements AnchoredDragScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f4419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f4420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f4421c = Float.NaN;
    public final /* synthetic */ AnchoredDraggableState d;

    public AnchoredDraggableState$anchoredDragScope$1(AnchoredDraggableState anchoredDraggableState) {
        this.d = anchoredDraggableState;
    }

    @Override // androidx.compose.foundation.gestures.AnchoredDragScope
    public final void a(float f2, float f3) {
        AnchoredDraggableState anchoredDraggableState = this.d;
        MutableFloatState mutableFloatState = anchoredDraggableState.f4404j;
        float fA = ((SnapshotMutableFloatStateImpl) mutableFloatState).a();
        ((SnapshotMutableFloatStateImpl) mutableFloatState).w(f2);
        ((SnapshotMutableFloatStateImpl) anchoredDraggableState.l).w(f3);
        if (Float.isNaN(fA)) {
            return;
        }
        boolean z = f2 >= fA;
        DraggableAnchors draggableAnchorsB = anchoredDraggableState.b();
        SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) anchoredDraggableState.g;
        SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) mutableFloatState;
        if (snapshotMutableFloatStateImpl.a() == draggableAnchorsB.c(snapshotMutableStateImpl.getF10755b())) {
            Object objA = anchoredDraggableState.b().a(snapshotMutableFloatStateImpl.a() + (z ? 1.0f : -1.0f), z);
            if (objA == null) {
                objA = snapshotMutableStateImpl.getF10755b();
            }
            if (z) {
                this.f4419a = snapshotMutableStateImpl.getF10755b();
                this.f4420b = objA;
            } else {
                this.f4419a = objA;
                this.f4420b = snapshotMutableStateImpl.getF10755b();
            }
        } else {
            Object objA2 = anchoredDraggableState.b().a(snapshotMutableFloatStateImpl.a(), false);
            if (objA2 == null) {
                objA2 = snapshotMutableStateImpl.getF10755b();
            }
            Object objA3 = anchoredDraggableState.b().a(snapshotMutableFloatStateImpl.a(), true);
            if (objA3 == null) {
                objA3 = snapshotMutableStateImpl.getF10755b();
            }
            this.f4419a = objA2;
            this.f4420b = objA3;
        }
        DraggableAnchors draggableAnchorsB2 = anchoredDraggableState.b();
        Object obj = this.f4419a;
        obj.getClass();
        float fC = draggableAnchorsB2.c(obj);
        DraggableAnchors draggableAnchorsB3 = anchoredDraggableState.b();
        Object obj2 = this.f4420b;
        obj2.getClass();
        this.f4421c = Math.abs(fC - draggableAnchorsB3.c(obj2));
        if (Math.abs(snapshotMutableFloatStateImpl.a() - anchoredDraggableState.b().c(snapshotMutableStateImpl.getF10755b())) >= this.f4421c / 2.0f) {
            Object f10755b = z ? this.f4420b : this.f4419a;
            if (f10755b == null) {
                f10755b = snapshotMutableStateImpl.getF10755b();
            }
            if (((Boolean) anchoredDraggableState.f4397a.invoke(f10755b)).booleanValue()) {
                anchoredDraggableState.f(f10755b);
            }
        }
    }
}
