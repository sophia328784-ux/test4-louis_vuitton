package kotlinx.coroutines.flow.internal;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.internal.ThreadContextKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ChannelFlowKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(CoroutineContext coroutineContext, Object obj, Object obj2, Function2 function2, Continuation continuation) throws Throwable {
        ChannelFlowKt$withContextUndispatched$1 channelFlowKt$withContextUndispatched$1;
        Object objC;
        Object objInvoke;
        if (continuation instanceof ChannelFlowKt$withContextUndispatched$1) {
            channelFlowKt$withContextUndispatched$1 = (ChannelFlowKt$withContextUndispatched$1) continuation;
            int i2 = channelFlowKt$withContextUndispatched$1.f75039h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                channelFlowKt$withContextUndispatched$1.f75039h = i2 - Integer.MIN_VALUE;
            } else {
                channelFlowKt$withContextUndispatched$1 = new ChannelFlowKt$withContextUndispatched$1(continuation);
            }
        } else {
            channelFlowKt$withContextUndispatched$1 = new ChannelFlowKt$withContextUndispatched$1(continuation);
        }
        Object obj3 = channelFlowKt$withContextUndispatched$1.g;
        Object obj4 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = channelFlowKt$withContextUndispatched$1.f75039h;
        if (i3 != 0) {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Object obj5 = channelFlowKt$withContextUndispatched$1.f75037e;
            CoroutineContext coroutineContext2 = channelFlowKt$withContextUndispatched$1.d;
            try {
                ResultKt.b(obj3);
                objC = obj5;
                coroutineContext = coroutineContext2;
                ThreadContextKt.a(coroutineContext, objC);
                return obj3;
            } catch (Throwable th) {
                objC = obj5;
                coroutineContext = coroutineContext2;
                th = th;
                ThreadContextKt.a(coroutineContext, objC);
                throw th;
            }
        }
        ResultKt.b(obj3);
        objC = ThreadContextKt.c(coroutineContext, obj2);
        try {
            channelFlowKt$withContextUndispatched$1.f75035b = coroutineContext;
            channelFlowKt$withContextUndispatched$1.f75036c = obj;
            channelFlowKt$withContextUndispatched$1.d = coroutineContext;
            channelFlowKt$withContextUndispatched$1.f75037e = objC;
            channelFlowKt$withContextUndispatched$1.f75038f = channelFlowKt$withContextUndispatched$1;
            channelFlowKt$withContextUndispatched$1.f75039h = 1;
            StackFrameContinuation stackFrameContinuation = new StackFrameContinuation(channelFlowKt$withContextUndispatched$1, coroutineContext);
            if (function2 == null) {
                objInvoke = IntrinsicsKt.c(stackFrameContinuation, function2, obj);
            } else {
                TypeIntrinsics.e(2, function2);
                objInvoke = function2.invoke(obj, stackFrameContinuation);
            }
            obj3 = objInvoke;
            if (obj3 == obj4) {
                return obj4;
            }
            ThreadContextKt.a(coroutineContext, objC);
            return obj3;
        } catch (Throwable th2) {
            th = th2;
            ThreadContextKt.a(coroutineContext, objC);
            throw th;
        }
    }
}
