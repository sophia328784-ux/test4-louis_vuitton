package androidx.datastore.core;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/datastore/core/SingleProcessCoordinator;", "Landroidx/datastore/core/InterProcessCoordinator;", "", "filePath", "<init>", "(Ljava/lang/String;)V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SingleProcessCoordinator implements InterProcessCoordinator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutexImpl f12830a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInt f12831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Flow f12832c;

    public SingleProcessCoordinator(String str) {
        str.getClass();
        this.f12830a = MutexKt.a();
        this.f12831b = new AtomicInt(0);
        this.f12832c = FlowKt.t(new SingleProcessCoordinator$updateNotifications$1(2, null));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0054  */
    /* JADX WARN: Code duplicated, block: B:29:0x005f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.datastore.core.InterProcessCoordinator
    public final Object a(Function2 function2, ContinuationImpl continuationImpl) throws Throwable {
        SingleProcessCoordinator$tryLock$1 singleProcessCoordinator$tryLock$1;
        MutexImpl mutexImpl;
        boolean z;
        Throwable th;
        if (continuationImpl instanceof SingleProcessCoordinator$tryLock$1) {
            singleProcessCoordinator$tryLock$1 = (SingleProcessCoordinator$tryLock$1) continuationImpl;
            int i2 = singleProcessCoordinator$tryLock$1.f12840f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                singleProcessCoordinator$tryLock$1.f12840f = i2 - Integer.MIN_VALUE;
            } else {
                singleProcessCoordinator$tryLock$1 = new SingleProcessCoordinator$tryLock$1(this, continuationImpl);
            }
        } else {
            singleProcessCoordinator$tryLock$1 = new SingleProcessCoordinator$tryLock$1(this, continuationImpl);
        }
        Object obj = singleProcessCoordinator$tryLock$1.d;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = singleProcessCoordinator$tryLock$1.f12840f;
        if (i3 != 0) {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = singleProcessCoordinator$tryLock$1.f12838c;
            mutexImpl = singleProcessCoordinator$tryLock$1.f12837b;
            try {
                ResultKt.b(obj);
                if (z) {
                    mutexImpl.d(null);
                }
                return obj;
            } catch (Throwable th2) {
                th = th2;
                if (z) {
                    mutexImpl.d(null);
                }
                throw th;
            }
        }
        ResultKt.b(obj);
        MutexImpl mutexImpl2 = this.f12830a;
        boolean zG = mutexImpl2.g();
        try {
            Object objValueOf = Boolean.valueOf(zG);
            singleProcessCoordinator$tryLock$1.f12837b = mutexImpl2;
            singleProcessCoordinator$tryLock$1.f12838c = zG;
            singleProcessCoordinator$tryLock$1.f12840f = 1;
            Object objInvoke = function2.invoke(objValueOf, singleProcessCoordinator$tryLock$1);
            if (objInvoke == obj2) {
                return obj2;
            }
            mutexImpl = mutexImpl2;
            z = zG;
            obj = objInvoke;
            if (z) {
                mutexImpl.d(null);
            }
            return obj;
        } catch (Throwable th3) {
            mutexImpl = mutexImpl2;
            z = zG;
            th = th3;
            if (z) {
                mutexImpl.d(null);
            }
            throw th;
        }
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Flow getF12832c() {
        return this.f12832c;
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public final Object c(ContinuationImpl continuationImpl) {
        return new Integer(this.f12831b.f12609a.get());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
    
        if (r8 == r1) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.datastore.core.SingleProcessCoordinator] */
    /* JADX WARN: Type inference failed for: r6v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // androidx.datastore.core.InterProcessCoordinator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(kotlin.jvm.functions.Function1 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.datastore.core.SingleProcessCoordinator$lock$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.datastore.core.SingleProcessCoordinator$lock$1 r0 = (androidx.datastore.core.SingleProcessCoordinator$lock$1) r0
            int r1 = r0.f12836f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f12836f = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessCoordinator$lock$1 r0 = new androidx.datastore.core.SingleProcessCoordinator$lock$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f12836f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L41
            if (r2 == r4) goto L37
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.f12833b
            kotlinx.coroutines.sync.Mutex r6 = (kotlinx.coroutines.sync.Mutex) r6
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L2f
            goto L60
        L2f:
            r7 = move-exception
            goto L64
        L31:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r5
        L37:
            kotlinx.coroutines.sync.MutexImpl r6 = r0.f12834c
            java.lang.Object r7 = r0.f12833b
            kotlin.jvm.functions.Function1 r7 = (kotlin.jvm.functions.Function1) r7
            kotlin.ResultKt.b(r8)
            goto L53
        L41:
            kotlin.ResultKt.b(r8)
            r0.f12833b = r7
            kotlinx.coroutines.sync.MutexImpl r6 = r6.f12830a
            r0.f12834c = r6
            r0.f12836f = r4
            java.lang.Object r8 = r6.c(r0)
            if (r8 != r1) goto L53
            goto L5f
        L53:
            r0.f12833b = r6     // Catch: java.lang.Throwable -> L2f
            r0.f12834c = r5     // Catch: java.lang.Throwable -> L2f
            r0.f12836f = r3     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r8 = r7.invoke(r0)     // Catch: java.lang.Throwable -> L2f
            if (r8 != r1) goto L60
        L5f:
            return r1
        L60:
            r6.d(r5)
            return r8
        L64:
            r6.d(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessCoordinator.d(kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public final Object e(Continuation continuation) {
        return new Integer(this.f12831b.f12609a.incrementAndGet());
    }
}
