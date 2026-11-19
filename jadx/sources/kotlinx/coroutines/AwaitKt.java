package kotlinx.coroutines;

import defpackage.md;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class AwaitKt {
    public static final Object a(Deferred[] deferredArr, SuspendLambda suspendLambda) {
        if (deferredArr.length == 0) {
            return EmptyList.f71768b;
        }
        AwaitAll awaitAll = new AwaitAll(deferredArr);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(suspendLambda), 1);
        cancellableContinuationImpl.initCancellability();
        Deferred[] deferredArr2 = awaitAll.f74626a;
        int length = deferredArr2.length;
        AwaitAll.AwaitAllNode[] awaitAllNodeArr = new AwaitAll.AwaitAllNode[length];
        for (int i2 = 0; i2 < length; i2++) {
            Deferred deferred = deferredArr2[i2];
            deferred.start();
            AwaitAll.AwaitAllNode awaitAllNode = new AwaitAll.AwaitAllNode(cancellableContinuationImpl);
            awaitAllNode.f74628j = JobKt.f(deferred, true, awaitAllNode);
            awaitAllNodeArr[i2] = awaitAllNode;
        }
        AwaitAll.DisposeHandlersOnCancel disposeHandlersOnCancel = new AwaitAll.DisposeHandlersOnCancel(awaitAll, awaitAllNodeArr);
        for (int i3 = 0; i3 < length; i3++) {
            awaitAllNodeArr[i3].t(disposeHandlersOnCancel);
        }
        if (cancellableContinuationImpl.isCompleted()) {
            disposeHandlersOnCancel.b();
        } else {
            CancellableContinuationKt.c(cancellableContinuationImpl, disposeHandlersOnCancel);
        }
        Object result = cancellableContinuationImpl.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return result;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object b(Collection collection, ContinuationImpl continuationImpl) {
        AwaitKt$joinAll$3 awaitKt$joinAll$3;
        Iterator it;
        int i2;
        if (continuationImpl instanceof AwaitKt$joinAll$3) {
            awaitKt$joinAll$3 = (AwaitKt$joinAll$3) continuationImpl;
            int i3 = awaitKt$joinAll$3.f74633e;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                awaitKt$joinAll$3.f74633e = i3 - Integer.MIN_VALUE;
            } else {
                awaitKt$joinAll$3 = new AwaitKt$joinAll$3(continuationImpl);
            }
        } else {
            awaitKt$joinAll$3 = new AwaitKt$joinAll$3(continuationImpl);
        }
        Object obj = awaitKt$joinAll$3.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = awaitKt$joinAll$3.f74633e;
        if (i4 == 0) {
            ResultKt.b(obj);
            it = collection.iterator();
            i2 = 0;
        } else {
            if (i4 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i2 = awaitKt$joinAll$3.f74632c;
            it = awaitKt$joinAll$3.f74631b;
            ResultKt.b(obj);
        }
        while (it.hasNext()) {
            Job job = (Job) it.next();
            awaitKt$joinAll$3.f74631b = it;
            awaitKt$joinAll$3.f74632c = i2;
            awaitKt$joinAll$3.f74633e = 1;
            if (job.join(awaitKt$joinAll$3) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.f71739a;
    }
}
