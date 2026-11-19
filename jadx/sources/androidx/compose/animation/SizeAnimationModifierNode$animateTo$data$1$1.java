package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationEndReason;
import androidx.compose.animation.core.AnimationResult;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.unit.IntSize;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.animation.SizeAnimationModifierNode$animateTo$data$1$1", f = "AnimationModifier.kt", l = {242}, m = "invokeSuspend", v = 1)
final class SizeAnimationModifierNode$animateTo$data$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SizeAnimationModifierNode.AnimData f3728c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SizeAnimationModifierNode f3729e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeAnimationModifierNode$animateTo$data$1$1(SizeAnimationModifierNode.AnimData animData, long j2, SizeAnimationModifierNode sizeAnimationModifierNode, Continuation continuation) {
        super(2, continuation);
        this.f3728c = animData;
        this.d = j2;
        this.f3729e = sizeAnimationModifierNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SizeAnimationModifierNode$animateTo$data$1$1(this.f3728c, this.d, this.f3729e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SizeAnimationModifierNode$animateTo$data$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Function2 function2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f3727b;
        SizeAnimationModifierNode sizeAnimationModifierNode = this.f3729e;
        SizeAnimationModifierNode.AnimData animData = this.f3728c;
        if (i2 == 0) {
            ResultKt.b(obj);
            Animatable animatable = animData.f3725a;
            IntSize intSize = new IntSize(this.d);
            AnimationSpec animationSpec = sizeAnimationModifierNode.p;
            this.f3727b = 1;
            obj = Animatable.c(animatable, intSize, animationSpec, null, null, this, 12);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        AnimationResult animationResult = (AnimationResult) obj;
        if (animationResult.f3809b == AnimationEndReason.Finished && (function2 = sizeAnimationModifierNode.r) != null) {
            function2.invoke(new IntSize(animData.f3726b), ((SnapshotMutableStateImpl) animationResult.f3808a.f3818c).getF10755b());
        }
        return Unit.f71739a;
    }
}
