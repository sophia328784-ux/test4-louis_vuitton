package kotlinx.coroutines.flow;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", "value", "Lkotlinx/coroutines/channels/ChannelResult;", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2", f = "Delay.kt", l = {236}, m = "invokeSuspend", v = 1)
final class FlowKt__DelayKt$debounceInternal$1$3$2 extends SuspendLambda implements Function2<ChannelResult<? extends Object>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$ObjectRef f74812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f74813c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f74814e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ FlowCollector f74815f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$debounceInternal$1$3$2(Continuation continuation, Ref$ObjectRef ref$ObjectRef, FlowCollector flowCollector) {
        super(2, continuation);
        this.f74814e = ref$ObjectRef;
        this.f74815f = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        FlowKt__DelayKt$debounceInternal$1$3$2 flowKt__DelayKt$debounceInternal$1$3$2 = new FlowKt__DelayKt$debounceInternal$1$3$2(continuation, this.f74814e, this.f74815f);
        flowKt__DelayKt$debounceInternal$1$3$2.d = ((ChannelResult) obj).f74761a;
        return flowKt__DelayKt$debounceInternal$1$3$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FlowKt__DelayKt$debounceInternal$1$3$2) create(new ChannelResult(((ChannelResult) obj).f74761a), (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        Object obj2 = this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f74813c;
        if (i2 == 0) {
            ResultKt.b(obj);
            boolean z = obj2 instanceof ChannelResult.Failed;
            ref$ObjectRef = this.f74814e;
            if (!z) {
                ref$ObjectRef.f71921b = obj2;
            }
            if (z) {
                ChannelResult.Companion companion = ChannelResult.f74759b;
                ChannelResult.Closed closed = obj2 instanceof ChannelResult.Closed ? (ChannelResult.Closed) obj2 : null;
                Throwable th = closed != null ? closed.f74762a : null;
                if (th != null) {
                    throw th;
                }
                Object obj3 = ref$ObjectRef.f71921b;
                if (obj3 != null) {
                    if (obj3 == NullSurrogateKt.f75085a) {
                        obj3 = null;
                    }
                    this.d = null;
                    this.f74812b = ref$ObjectRef;
                    this.f74813c = 1;
                    if (this.f74815f.emit(obj3, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    ref$ObjectRef2 = ref$ObjectRef;
                }
                ref$ObjectRef.f71921b = NullSurrogateKt.f75087c;
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ref$ObjectRef2 = this.f74812b;
        ResultKt.b(obj);
        ref$ObjectRef = ref$ObjectRef2;
        ref$ObjectRef.f71921b = NullSurrogateKt.f75087c;
        return Unit.f71739a;
    }
}
