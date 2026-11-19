package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.AnchoredDraggableNode", f = "AnchoredDraggable.kt", l = {459, 462}, m = "fling", v = 1)
final class AnchoredDraggableNode$fling$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$FloatRef f4384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f4385c;
    public final /* synthetic */ AnchoredDraggableNode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4386e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnchoredDraggableNode$fling$1(AnchoredDraggableNode anchoredDraggableNode, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = anchoredDraggableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f4385c = obj;
        this.f4386e |= Integer.MIN_VALUE;
        return AnchoredDraggableNode.C2(this.d, Call.Parameters.DEFAULT_CAMERA_ZOOM, this);
    }
}
