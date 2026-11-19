package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final /* synthetic */ class BufferedChannel$bindCancellationFunResult$1 extends FunctionReferenceImpl implements Function3<Throwable, ChannelResult<Object>, CoroutineContext, Unit> {
    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Object obj4 = ((ChannelResult) obj2).f74761a;
        Function1 function1 = ((BufferedChannel) this.receiver).f74735c;
        function1.getClass();
        Object objA = ChannelResult.a(obj4);
        objA.getClass();
        OnUndeliveredElementKt.a(function1, objA, (CoroutineContext) obj3);
        return Unit.f71739a;
    }
}
