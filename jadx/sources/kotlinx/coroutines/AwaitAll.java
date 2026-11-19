package kotlinx.coroutines;

import defpackage.o91;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0002\n\u000bB\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u000b\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/AwaitAll;", "T", "", "", "Lkotlinx/coroutines/Deferred;", "deferreds", "<init>", "([Lkotlinx/coroutines/Deferred;)V", "Lkotlinx/atomicfu/AtomicInt;", "notCompletedCount", "DisposeHandlersOnCancel", "AwaitAllNode", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class AwaitAll<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f74625b = AtomicIntegerFieldUpdater.newUpdater(AwaitAll.class, "notCompletedCount$volatile");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Deferred[] f74626a;
    private volatile /* synthetic */ int notCompletedCount$volatile;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u001d\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0018\u00010\bR\b\u0012\u0004\u0012\u00028\u00000\t0\u00078\u0002X\u0082\u0004¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/AwaitAll$AwaitAllNode;", "Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/CancellableContinuation;", "", "continuation", "<init>", "(Lkotlinx/coroutines/AwaitAll;Lkotlinx/coroutines/CancellableContinuation;)V", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;", "Lkotlinx/coroutines/AwaitAll;", "_disposer", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class AwaitAllNode extends JobNode {
        public static final /* synthetic */ AtomicReferenceFieldUpdater l = AtomicReferenceFieldUpdater.newUpdater(AwaitAllNode.class, Object.class, "_disposer$volatile");
        public static final /* synthetic */ long m = o91.f76733a.objectFieldOffset(AwaitAllNode.class.getDeclaredField("_disposer$volatile"));
        private volatile /* synthetic */ Object _disposer$volatile;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final CancellableContinuation f74627i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public DisposableHandle f74628j;

        public AwaitAllNode(CancellableContinuation<? super List<? extends T>> cancellableContinuation) {
            this.f74627i = cancellableContinuation;
        }

        @Override // kotlinx.coroutines.JobNode
        public final boolean q() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public final void r(Throwable th) {
            CancellableContinuation cancellableContinuation = this.f74627i;
            if (th != null) {
                Object objTryResumeWithException = cancellableContinuation.tryResumeWithException(th);
                if (objTryResumeWithException != null) {
                    cancellableContinuation.completeResume(objTryResumeWithException);
                    DisposeHandlersOnCancel disposeHandlersOnCancelS = s();
                    if (disposeHandlersOnCancelS != null) {
                        disposeHandlersOnCancelS.b();
                        return;
                    }
                    return;
                }
                return;
            }
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = AwaitAll.f74625b;
            AwaitAll awaitAll = AwaitAll.this;
            if (atomicIntegerFieldUpdater.decrementAndGet(awaitAll) == 0) {
                Deferred[] deferredArr = awaitAll.f74626a;
                ArrayList arrayList = new ArrayList(deferredArr.length);
                for (Deferred deferred : deferredArr) {
                    arrayList.add(deferred.h());
                }
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(arrayList);
            }
        }

        public final DisposeHandlersOnCancel s() {
            l.getClass();
            return (DisposeHandlersOnCancel) o91.f76733a.getObjectVolatile(this, m);
        }

        public final void t(DisposeHandlersOnCancel disposeHandlersOnCancel) {
            l.getClass();
            o91.f76733a.putObjectVolatile(this, m, disposeHandlersOnCancel);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u000e\u0012\f0\u0003R\b\u0012\u0004\u0012\u00028\u00000\u00040\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "", "Lkotlinx/coroutines/AwaitAll$AwaitAllNode;", "Lkotlinx/coroutines/AwaitAll;", "nodes", "<init>", "(Lkotlinx/coroutines/AwaitAll;[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class DisposeHandlersOnCancel implements CancelHandler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AwaitAllNode[] f74630b;

        public DisposeHandlersOnCancel(AwaitAll awaitAll, AwaitAll<T>.AwaitAllNode[] awaitAllNodeArr) {
            this.f74630b = awaitAllNodeArr;
        }

        @Override // kotlinx.coroutines.CancelHandler
        public final void a(Throwable th) {
            b();
        }

        public final void b() {
            for (AwaitAllNode awaitAllNode : this.f74630b) {
                DisposableHandle disposableHandle = awaitAllNode.f74628j;
                if (disposableHandle == null) {
                    Intrinsics.h("handle");
                    throw null;
                }
                disposableHandle.dispose();
            }
        }

        public final String toString() {
            return "DisposeHandlersOnCancel[" + this.f74630b + ']';
        }
    }

    public AwaitAll(Deferred<? extends T>[] deferredArr) {
        this.f74626a = deferredArr;
        this.notCompletedCount$volatile = deferredArr.length;
    }
}
