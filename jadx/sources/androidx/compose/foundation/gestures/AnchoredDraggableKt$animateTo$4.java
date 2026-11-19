package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", "", "T", "Landroidx/compose/foundation/gestures/AnchoredDragScope;", "anchors", "Landroidx/compose/foundation/gestures/DraggableAnchors;", "latestTarget"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.AnchoredDraggableKt$animateTo$4", f = "AnchoredDraggable.kt", l = {1378}, m = "invokeSuspend", v = 1)
final class AnchoredDraggableKt$animateTo$4 extends SuspendLambda implements Function4<AnchoredDragScope, DraggableAnchors<Object>, Object, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ AnchoredDragScope f4352c;
    public /* synthetic */ DraggableAnchors d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f4353e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AnchoredDraggableState f4354f;
    public final /* synthetic */ AnimationSpec g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnchoredDraggableKt$animateTo$4(AnchoredDraggableState anchoredDraggableState, AnimationSpec animationSpec, Continuation continuation) {
        super(4, continuation);
        this.f4354f = anchoredDraggableState;
        this.g = animationSpec;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        AnchoredDraggableKt$animateTo$4 anchoredDraggableKt$animateTo$4 = new AnchoredDraggableKt$animateTo$4(this.f4354f, this.g, (Continuation) obj4);
        anchoredDraggableKt$animateTo$4.f4352c = (AnchoredDragScope) obj;
        anchoredDraggableKt$animateTo$4.d = (DraggableAnchors) obj2;
        anchoredDraggableKt$animateTo$4.f4353e = obj3;
        return anchoredDraggableKt$animateTo$4.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4351b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AnchoredDragScope anchoredDragScope = this.f4352c;
            DraggableAnchors draggableAnchors = this.d;
            Object obj2 = this.f4353e;
            AnchoredDraggableState anchoredDraggableState = this.f4354f;
            float fA = ((SnapshotMutableFloatStateImpl) anchoredDraggableState.l).a();
            this.f4352c = null;
            this.d = null;
            this.f4351b = 1;
            if (AnchoredDraggableKt.b(anchoredDraggableState, fA, anchoredDragScope, draggableAnchors, obj2, this.g, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
