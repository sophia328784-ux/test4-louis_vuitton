package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.j5;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/gestures/AnchoredDraggableKt$AnchoredDraggableLayoutInfoProvider$1", "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnchoredDraggableKt$AnchoredDraggableLayoutInfoProvider$1 implements SnapLayoutInfoProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AnchoredDraggableState f4348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f4349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j5 f4350c;

    public AnchoredDraggableKt$AnchoredDraggableLayoutInfoProvider$1(AnchoredDraggableState anchoredDraggableState, Function1 function1, j5 j5Var) {
        this.f4348a = anchoredDraggableState;
        this.f4349b = function1;
        this.f4350c = j5Var;
    }

    @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
    public final float a(float f2) {
        AnchoredDraggableState anchoredDraggableState = this.f4348a;
        float fE = anchoredDraggableState.e();
        Object objC = AnchoredDraggableKt.c(anchoredDraggableState.b(), fE, f2, this.f4349b, this.f4350c);
        if (!((Boolean) anchoredDraggableState.f4397a.invoke(objC)).booleanValue()) {
            objC = ((SnapshotMutableStateImpl) anchoredDraggableState.f4402h).getF10755b();
        }
        return anchoredDraggableState.b().c(objC) - fE;
    }

    @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
    public final float b(float f2, float f3) {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }
}
