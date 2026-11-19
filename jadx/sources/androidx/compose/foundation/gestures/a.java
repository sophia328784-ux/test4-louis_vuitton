package androidx.compose.foundation.gestures;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AnchoredDraggableNode f4834c;
    public final /* synthetic */ AnchoredDragScope d;

    public /* synthetic */ a(AnchoredDraggableNode anchoredDraggableNode, AnchoredDragScope anchoredDragScope, int i2) {
        this.f4833b = i2;
        this.f4834c = anchoredDraggableNode;
        this.d = anchoredDragScope;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f4833b;
        AnchoredDragScope anchoredDragScope = this.d;
        AnchoredDraggableNode anchoredDraggableNode = this.f4834c;
        switch (i2) {
            case 0:
                long jG = Offset.g(anchoredDraggableNode.E2() ? -1.0f : 1.0f, ((DragEvent.DragDelta) obj).f4482a);
                float fIntBitsToFloat = Float.intBitsToFloat((int) (anchoredDraggableNode.L == Orientation.Vertical ? jG & BodyPartID.bodyIdMax : jG >> 32));
                OverscrollEffect overscrollEffect = anchoredDraggableNode.N;
                if (overscrollEffect == null) {
                    anchoredDragScope.a(anchoredDraggableNode.K.d(fIntBitsToFloat), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                } else {
                    long jD2 = AnchoredDraggableNode.D2(anchoredDraggableNode, fIntBitsToFloat);
                    NestedScrollSource.f9260a.getClass();
                    overscrollEffect.o(jD2, NestedScrollSource.f9261b, new a(anchoredDraggableNode, anchoredDragScope, 1));
                }
                return Unit.f71739a;
            default:
                AnchoredDraggableState anchoredDraggableState = anchoredDraggableNode.K;
                long j2 = ((Offset) obj).f8808a;
                float fD = anchoredDraggableState.d(Float.intBitsToFloat((int) (anchoredDraggableNode.L == Orientation.Vertical ? j2 & BodyPartID.bodyIdMax : j2 >> 32)));
                long jD3 = AnchoredDraggableNode.D2(anchoredDraggableNode, fD - anchoredDraggableNode.K.e());
                anchoredDragScope.a(fD, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                return new Offset(jD3);
        }
    }
}
