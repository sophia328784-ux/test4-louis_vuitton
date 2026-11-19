package androidx.lifecycle.compose;

import androidx.lifecycle.Lifecycle;
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
@DebugMetadata(c = "androidx.lifecycle.compose.RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1", f = "RememberLifecycleOwner.kt", l = {}, m = "invokeSuspend", v = 1)
final class RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ComposeLifecycleOwner f13563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Lifecycle.State f13564c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1(ComposeLifecycleOwner composeLifecycleOwner, Lifecycle.State state, Continuation continuation) {
        super(2, continuation);
        this.f13563b = composeLifecycleOwner;
        this.f13564c = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1(this.f13563b, this.f13564c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Lifecycle.State state = this.f13564c;
        ComposeLifecycleOwner composeLifecycleOwner = this.f13563b;
        composeLifecycleOwner.d = state;
        composeLifecycleOwner.a();
        return Unit.f71739a;
    }
}
