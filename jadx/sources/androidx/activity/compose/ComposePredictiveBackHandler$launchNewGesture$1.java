package androidx.activity.compose;

import androidx.activity.BackEventCompat;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.activity.compose.ComposePredictiveBackHandler$launchNewGesture$1", f = "PredictiveBackHandler.kt", l = {231}, m = "invokeSuspend", v = 1)
final class ComposePredictiveBackHandler$launchNewGesture$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$BooleanRef f706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f707c;
    public final /* synthetic */ ComposePredictiveBackHandler d;

    /* JADX INFO: renamed from: androidx.activity.compose.ComposePredictiveBackHandler$launchNewGesture$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Landroidx/activity/BackEventCompat;", "it", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.activity.compose.ComposePredictiveBackHandler$launchNewGesture$1$1", f = "PredictiveBackHandler.kt", l = {}, m = "invokeSuspend", v = 1)
    final class AnonymousClass1 extends SuspendLambda implements Function3<FlowCollector<? super BackEventCompat>, Throwable, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Ref$BooleanRef f708b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Ref$BooleanRef ref$BooleanRef, Continuation continuation) {
            super(3, continuation);
            this.f708b = ref$BooleanRef;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object A(Object obj, Object obj2, Object obj3) {
            return new AnonymousClass1(this.f708b, (Continuation) obj3).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            this.f708b.f71917b = true;
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposePredictiveBackHandler$launchNewGesture$1(ComposePredictiveBackHandler composePredictiveBackHandler, Continuation continuation) {
        super(2, continuation);
        this.d = composePredictiveBackHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ComposePredictiveBackHandler$launchNewGesture$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ComposePredictiveBackHandler$launchNewGesture$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref$BooleanRef ref$BooleanRef;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f707c;
        if (i2 == 0) {
            ResultKt.b(obj);
            ComposePredictiveBackHandler composePredictiveBackHandler = this.d;
            if (composePredictiveBackHandler.a()) {
                Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
                Function2 function2 = composePredictiveBackHandler.d;
                BufferedChannel bufferedChannel = composePredictiveBackHandler.f704e;
                bufferedChannel.getClass();
                FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(FlowKt.i(bufferedChannel), new AnonymousClass1(ref$BooleanRef2, null));
                this.f706b = ref$BooleanRef2;
                this.f707c = 1;
                if (function2.invoke(flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                ref$BooleanRef = ref$BooleanRef2;
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ref$BooleanRef = this.f706b;
        ResultKt.b(obj);
        if (!ref$BooleanRef.f71917b) {
            md.k("You must collect the progress flow");
            return null;
        }
        return Unit.f71739a;
    }
}
