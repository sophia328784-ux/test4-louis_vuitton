package kotlinx.coroutines.channels;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ProduceKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(ProducerScope producerScope, Function0 function0, ContinuationImpl continuationImpl) {
        ProduceKt$awaitClose$1 produceKt$awaitClose$1;
        if (continuationImpl instanceof ProduceKt$awaitClose$1) {
            produceKt$awaitClose$1 = (ProduceKt$awaitClose$1) continuationImpl;
            int i2 = produceKt$awaitClose$1.f74770e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                produceKt$awaitClose$1.f74770e = i2 - Integer.MIN_VALUE;
            } else {
                produceKt$awaitClose$1 = new ProduceKt$awaitClose$1(continuationImpl);
            }
        } else {
            produceKt$awaitClose$1 = new ProduceKt$awaitClose$1(continuationImpl);
        }
        Object obj = produceKt$awaitClose$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = produceKt$awaitClose$1.f74770e;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                if (produceKt$awaitClose$1.getContext().get(Job.Key.f74677b) != producerScope) {
                    md.k("awaitClose() can only be invoked from the producer context");
                    return null;
                }
                produceKt$awaitClose$1.f74768b = producerScope;
                produceKt$awaitClose$1.f74769c = function0;
                produceKt$awaitClose$1.f74770e = 1;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(produceKt$awaitClose$1), 1);
                cancellableContinuationImpl.initCancellability();
                producerScope.a(new ProduceKt$awaitClose$4$1(cancellableContinuationImpl));
                if (cancellableContinuationImpl.getResult() == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                function0 = produceKt$awaitClose$1.f74769c;
                ResultKt.b(obj);
            }
            function0.mo47invoke();
            return Unit.f71739a;
        } catch (Throwable th) {
            function0.mo47invoke();
            throw th;
        }
    }

    public static final ReceiveChannel b(CoroutineScope coroutineScope, CoroutineContext coroutineContext, int i2, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function2 function2) {
        ProducerCoroutine producerCoroutine = new ProducerCoroutine(CoroutineContextKt.b(coroutineScope, coroutineContext), ChannelKt.a(i2, 4, bufferOverflow));
        producerCoroutine.start(coroutineStart, producerCoroutine, function2);
        return producerCoroutine;
    }
}
