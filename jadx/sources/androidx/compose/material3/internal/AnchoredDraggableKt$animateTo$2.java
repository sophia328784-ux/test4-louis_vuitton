package androidx.compose.material3.internal;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import defpackage.k5;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", "", "T", "Landroidx/compose/material3/internal/AnchoredDragScope;", "anchors", "Landroidx/compose/material3/internal/DraggableAnchors;", "latestTarget"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.internal.AnchoredDraggableKt$animateTo$2", f = "AnchoredDraggable.kt", l = {682}, m = "invokeSuspend")
final class AnchoredDraggableKt$animateTo$2 extends SuspendLambda implements Function4<AnchoredDragScope, DraggableAnchors<Object>, Object, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ AnchoredDragScope f7499c;
    public /* synthetic */ DraggableAnchors d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f7500e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AnchoredDraggableState f7501f;
    public final /* synthetic */ float g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnchoredDraggableKt$animateTo$2(AnchoredDraggableState anchoredDraggableState, float f2, Continuation continuation) {
        super(4, continuation);
        this.f7501f = anchoredDraggableState;
        this.g = f2;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        AnchoredDraggableKt$animateTo$2 anchoredDraggableKt$animateTo$2 = new AnchoredDraggableKt$animateTo$2(this.f7501f, this.g, (Continuation) obj4);
        anchoredDraggableKt$animateTo$2.f7499c = (AnchoredDragScope) obj;
        anchoredDraggableKt$animateTo$2.d = (DraggableAnchors) obj2;
        anchoredDraggableKt$animateTo$2.f7500e = obj3;
        return anchoredDraggableKt$animateTo$2.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f7498b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AnchoredDragScope anchoredDragScope = this.f7499c;
            float fC = this.d.c(this.f7500e);
            if (!Float.isNaN(fC)) {
                Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
                AnchoredDraggableState anchoredDraggableState = this.f7501f;
                float fA = Float.isNaN(((SnapshotMutableFloatStateImpl) anchoredDraggableState.f7523j).a()) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : ((SnapshotMutableFloatStateImpl) anchoredDraggableState.f7523j).a();
                ref$FloatRef.f71918b = fA;
                AnimationSpec animationSpec = (AnimationSpec) anchoredDraggableState.f7518c.mo47invoke();
                k5 k5Var = new k5(anchoredDragScope, ref$FloatRef, 0);
                this.f7499c = null;
                this.d = null;
                this.f7498b = 1;
                if (SuspendAnimationKt.a(fA, fC, this.g, animationSpec, k5Var, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
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
