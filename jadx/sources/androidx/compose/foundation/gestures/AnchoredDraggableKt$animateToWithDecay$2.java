package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Ref$FloatRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u0002H\n"}, d2 = {"<anonymous>", "", "T", "Landroidx/compose/foundation/gestures/AnchoredDragScope;", "anchors", "Landroidx/compose/foundation/gestures/DraggableAnchors;", "latestTarget"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.AnchoredDraggableKt$animateToWithDecay$2", f = "AnchoredDraggable.kt", l = {1425, 1443, 1467}, m = "invokeSuspend", v = 1)
final class AnchoredDraggableKt$animateToWithDecay$2 extends SuspendLambda implements Function4<AnchoredDragScope, DraggableAnchors<Object>, Object, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ AnchoredDragScope f4359c;
    public /* synthetic */ DraggableAnchors d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f4360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AnchoredDraggableState f4361f;
    public final /* synthetic */ float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AnimationSpec f4362h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Ref$FloatRef f4363i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ DecayAnimationSpec f4364j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnchoredDraggableKt$animateToWithDecay$2(AnchoredDraggableState anchoredDraggableState, float f2, AnimationSpec animationSpec, Ref$FloatRef ref$FloatRef, DecayAnimationSpec decayAnimationSpec, Continuation continuation) {
        super(4, continuation);
        this.f4361f = anchoredDraggableState;
        this.g = f2;
        this.f4362h = animationSpec;
        this.f4363i = ref$FloatRef;
        this.f4364j = decayAnimationSpec;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        Ref$FloatRef ref$FloatRef = this.f4363i;
        DecayAnimationSpec decayAnimationSpec = this.f4364j;
        AnchoredDraggableKt$animateToWithDecay$2 anchoredDraggableKt$animateToWithDecay$2 = new AnchoredDraggableKt$animateToWithDecay$2(this.f4361f, this.g, this.f4362h, ref$FloatRef, decayAnimationSpec, (Continuation) obj4);
        anchoredDraggableKt$animateToWithDecay$2.f4359c = (AnchoredDragScope) obj;
        anchoredDraggableKt$animateToWithDecay$2.d = (DraggableAnchors) obj2;
        anchoredDraggableKt$animateToWithDecay$2.f4360e = obj3;
        return anchoredDraggableKt$animateToWithDecay$2.invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a5, code lost:
    
        if (androidx.compose.animation.core.SuspendAnimationKt.e(r1, r0, false, r8, r16) == r7) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b8, code lost:
    
        if (androidx.compose.foundation.gestures.AnchoredDraggableKt.b(r16.f4361f, r14, r11, r3, r5, r16.f4362h, r16) == r7) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ce, code lost:
    
        if (androidx.compose.foundation.gestures.AnchoredDraggableKt.b(r16.f4361f, r15, r11, r3, r5, r16.f4362h, r16) == r7) goto L43;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.AnchoredDraggableKt$animateToWithDecay$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
