package androidx.compose.foundation.gestures;

import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "T", "Landroidx/compose/foundation/gestures/AnchoredDragScope;", "it", "Landroidx/compose/foundation/gestures/DraggableAnchors;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.AnchoredDraggableNode$fling$2", f = "AnchoredDraggable.kt", l = {473}, m = "invokeSuspend", v = 1)
final class AnchoredDraggableNode$fling$2 extends SuspendLambda implements Function3<AnchoredDragScope, DraggableAnchors<Object>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f4388c;
    public final /* synthetic */ AnchoredDraggableNode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref$FloatRef f4389e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ float f4390f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnchoredDraggableNode$fling$2(AnchoredDraggableNode anchoredDraggableNode, Ref$FloatRef ref$FloatRef, float f2, Continuation continuation) {
        super(3, continuation);
        this.d = anchoredDraggableNode;
        this.f4389e = ref$FloatRef;
        this.f4390f = f2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Ref$FloatRef ref$FloatRef = this.f4389e;
        float f2 = this.f4390f;
        AnchoredDraggableNode$fling$2 anchoredDraggableNode$fling$2 = new AnchoredDraggableNode$fling$2(this.d, ref$FloatRef, f2, (Continuation) obj3);
        anchoredDraggableNode$fling$2.f4388c = (AnchoredDragScope) obj;
        return anchoredDraggableNode$fling$2.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref$FloatRef ref$FloatRef;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4387b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final AnchoredDragScope anchoredDragScope = (AnchoredDragScope) this.f4388c;
            final AnchoredDraggableNode anchoredDraggableNode = this.d;
            ScrollScope scrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.AnchoredDraggableNode$fling$2$scrollScope$1
                @Override // androidx.compose.foundation.gestures.ScrollScope
                public final float e(float f2) {
                    AnchoredDraggableNode anchoredDraggableNode2 = anchoredDraggableNode;
                    float fD = anchoredDraggableNode2.K.d(f2);
                    float fA = fD - ((SnapshotMutableFloatStateImpl) anchoredDraggableNode2.K.f4404j).a();
                    anchoredDragScope.a(fD, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    return fA;
                }
            };
            FlingBehavior flingBehavior = anchoredDraggableNode.Q;
            if (flingBehavior == null) {
                Intrinsics.h("resolvedFlingBehavior");
                throw null;
            }
            Ref$FloatRef ref$FloatRef2 = this.f4389e;
            this.f4388c = ref$FloatRef2;
            this.f4387b = 1;
            obj = flingBehavior.a(scrollScope, this.f4390f, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            ref$FloatRef = ref$FloatRef2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$FloatRef = (Ref$FloatRef) this.f4388c;
            ResultKt.b(obj);
        }
        ref$FloatRef.f71918b = ((Number) obj).floatValue();
        return Unit.f71739a;
    }
}
