package androidx.compose.ui.platform;

import defpackage.md;
import defpackage.os;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0001\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/platform/PlatformTextInputSessionScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$2", f = "PlatformTextInputModifierNode.kt", l = {248}, m = "invokeSuspend", v = 1)
final class ChainedPlatformTextInputInterceptor$textInputSession$2 extends SuspendLambda implements Function2<PlatformTextInputSessionScope, Continuation<?>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f9989c;
    public final /* synthetic */ Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ChainedPlatformTextInputInterceptor f9990e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChainedPlatformTextInputInterceptor$textInputSession$2(Function2 function2, ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor, Continuation continuation) {
        super(2, continuation);
        this.d = function2;
        this.f9990e = chainedPlatformTextInputInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ChainedPlatformTextInputInterceptor$textInputSession$2 chainedPlatformTextInputInterceptor$textInputSession$2 = new ChainedPlatformTextInputInterceptor$textInputSession$2(this.d, this.f9990e, continuation);
        chainedPlatformTextInputInterceptor$textInputSession$2.f9989c = obj;
        return chainedPlatformTextInputInterceptor$textInputSession$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ChainedPlatformTextInputInterceptor$textInputSession$2) create((PlatformTextInputSessionScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f9988b;
        if (i2 == 0) {
            ResultKt.b(obj);
            ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1((PlatformTextInputSessionScope) this.f9989c, new AtomicReference(null), this.f9990e);
            this.f9988b = 1;
            if (this.d.invoke(chainedPlatformTextInputInterceptor$textInputSession$2$scope$1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
