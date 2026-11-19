package androidx.paging;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003Bd\u0012[\u0010\r\u001aW\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0004¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/paging/UnbatchedFlowCombiner;", "T1", "T2", "", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "t1", "t2", "Landroidx/paging/CombineSource;", "updateFrom", "Lkotlin/coroutines/Continuation;", "", "send", "<init>", "(Lkotlin/jvm/functions/Function4;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class UnbatchedFlowCombiner<T1, T2> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function4 f18985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompletableDeferred f18986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutexImpl f18987c;
    public final CompletableDeferred[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object[] f18988e;

    public UnbatchedFlowCombiner(Function4<? super T1, ? super T2, ? super CombineSource, ? super Continuation<? super Unit>, ? extends Object> function4) {
        function4.getClass();
        this.f18985a = function4;
        this.f18986b = CompletableDeferredKt.a();
        this.f18987c = MutexKt.a();
        CompletableDeferred[] completableDeferredArr = new CompletableDeferred[2];
        for (int i2 = 0; i2 < 2; i2++) {
            completableDeferredArr[i2] = CompletableDeferredKt.a();
        }
        this.d = completableDeferredArr;
        Object[] objArr = new Object[2];
        for (int i3 = 0; i3 < 2; i3++) {
            objArr[i3] = FlowExtKt.f18590a;
        }
        this.f18988e = objArr;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0099 A[Catch: all -> 0x00a2, TRY_ENTER, TryCatch #0 {all -> 0x00a2, blocks: (B:32:0x0090, B:36:0x0099, B:43:0x00a8, B:45:0x00ae, B:48:0x00b3, B:50:0x00b8, B:54:0x00c2, B:52:0x00bd, B:53:0x00c0, B:39:0x009f), top: B:64:0x0090 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x009f A[Catch: all -> 0x00a2, LOOP:0: B:34:0x0095->B:39:0x009f, LOOP_END, TryCatch #0 {all -> 0x00a2, blocks: (B:32:0x0090, B:36:0x0099, B:43:0x00a8, B:45:0x00ae, B:48:0x00b3, B:50:0x00b8, B:54:0x00c2, B:52:0x00bd, B:53:0x00c0, B:39:0x009f), top: B:64:0x0090 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ae A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:32:0x0090, B:36:0x0099, B:43:0x00a8, B:45:0x00ae, B:48:0x00b3, B:50:0x00b8, B:54:0x00c2, B:52:0x00bd, B:53:0x00c0, B:39:0x009f), top: B:64:0x0090 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b3 A[Catch: all -> 0x00a2, LOOP:1: B:44:0x00ac->B:48:0x00b3, LOOP_END, TryCatch #0 {all -> 0x00a2, blocks: (B:32:0x0090, B:36:0x0099, B:43:0x00a8, B:45:0x00ae, B:48:0x00b3, B:50:0x00b8, B:54:0x00c2, B:52:0x00bd, B:53:0x00c0, B:39:0x009f), top: B:64:0x0090 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00b8 A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:32:0x0090, B:36:0x0099, B:43:0x00a8, B:45:0x00ae, B:48:0x00b3, B:50:0x00b8, B:54:0x00c2, B:52:0x00bd, B:53:0x00c0, B:39:0x009f), top: B:64:0x0090 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00bb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x00bd A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:32:0x0090, B:36:0x0099, B:43:0x00a8, B:45:0x00ae, B:48:0x00b3, B:50:0x00b8, B:54:0x00c2, B:52:0x00bd, B:53:0x00c0, B:39:0x009f), top: B:64:0x0090 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00c0 A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:32:0x0090, B:36:0x0099, B:43:0x00a8, B:45:0x00ae, B:48:0x00b3, B:50:0x00b8, B:54:0x00c2, B:52:0x00bd, B:53:0x00c0, B:39:0x009f), top: B:64:0x0090 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:68:0x00a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(int i2, Object obj, ContinuationImpl continuationImpl) throws Throwable {
        UnbatchedFlowCombiner$onNext$1 unbatchedFlowCombiner$onNext$1;
        UnbatchedFlowCombiner<T1, T2> unbatchedFlowCombiner;
        int i3;
        Mutex mutex;
        Throwable th;
        Mutex mutex2;
        Object[] objArr;
        int length;
        int i4;
        Object obj2;
        boolean z;
        int i5;
        CombineSource combineSource;
        Function4 function4;
        Object obj3;
        Object obj4;
        UnbatchedFlowCombiner<T1, T2> unbatchedFlowCombiner2;
        if (continuationImpl instanceof UnbatchedFlowCombiner$onNext$1) {
            unbatchedFlowCombiner$onNext$1 = (UnbatchedFlowCombiner$onNext$1) continuationImpl;
            int i6 = unbatchedFlowCombiner$onNext$1.f18993h;
            if ((i6 & Integer.MIN_VALUE) != 0) {
                unbatchedFlowCombiner$onNext$1.f18993h = i6 - Integer.MIN_VALUE;
            } else {
                unbatchedFlowCombiner$onNext$1 = new UnbatchedFlowCombiner$onNext$1(this, continuationImpl);
            }
        } else {
            unbatchedFlowCombiner$onNext$1 = new UnbatchedFlowCombiner$onNext$1(this, continuationImpl);
        }
        Object obj5 = unbatchedFlowCombiner$onNext$1.f18992f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i7 = unbatchedFlowCombiner$onNext$1.f18993h;
        if (i7 == 0) {
            ResultKt.b(obj5);
            CompletableDeferred[] completableDeferredArr = this.d;
            if (completableDeferredArr[i2].isCompleted()) {
                unbatchedFlowCombiner$onNext$1.f18989b = this;
                unbatchedFlowCombiner$onNext$1.f18990c = obj;
                unbatchedFlowCombiner$onNext$1.f18991e = i2;
                unbatchedFlowCombiner$onNext$1.f18993h = 1;
                if (this.f18986b.k(unbatchedFlowCombiner$onNext$1) != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            completableDeferredArr[i2].g(Unit.f71739a);
        } else {
            if (i7 != 1) {
                if (i7 != 2) {
                    if (i7 != 3) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    mutex2 = (Mutex) unbatchedFlowCombiner$onNext$1.f18990c;
                    unbatchedFlowCombiner2 = unbatchedFlowCombiner$onNext$1.f18989b;
                    try {
                        ResultKt.b(obj5);
                        unbatchedFlowCombiner2.f18986b.g(Unit.f71739a);
                        mutex = mutex2;
                        mutex.d(null);
                        return Unit.f71739a;
                    } catch (Throwable th2) {
                        th = th2;
                        mutex2.d(null);
                        throw th;
                    }
                }
                i3 = unbatchedFlowCombiner$onNext$1.f18991e;
                mutex = unbatchedFlowCombiner$onNext$1.d;
                obj = unbatchedFlowCombiner$onNext$1.f18990c;
                unbatchedFlowCombiner = unbatchedFlowCombiner$onNext$1.f18989b;
                ResultKt.b(obj5);
                try {
                    objArr = unbatchedFlowCombiner.f18988e;
                    length = objArr.length;
                    i4 = 0;
                    while (true) {
                        obj2 = FlowExtKt.f18590a;
                        if (i4 < length) {
                            z = false;
                            break;
                        }
                        if (objArr[i4] == obj2) {
                            z = true;
                            break;
                        }
                        i4++;
                    }
                    objArr[i3] = obj;
                    for (Object obj6 : objArr) {
                        if (obj6 == obj2) {
                            mutex.d(null);
                            return Unit.f71739a;
                        }
                    }
                    if (z) {
                        combineSource = CombineSource.INITIAL;
                    } else if (i3 == 0) {
                        combineSource = CombineSource.RECEIVER;
                    } else {
                        combineSource = CombineSource.OTHER;
                    }
                    function4 = unbatchedFlowCombiner.f18985a;
                    obj3 = objArr[0];
                    obj4 = objArr[1];
                    unbatchedFlowCombiner$onNext$1.f18989b = unbatchedFlowCombiner;
                    unbatchedFlowCombiner$onNext$1.f18990c = mutex;
                    unbatchedFlowCombiner$onNext$1.d = null;
                    unbatchedFlowCombiner$onNext$1.f18993h = 3;
                    if (function4.g(obj3, obj4, combineSource, unbatchedFlowCombiner$onNext$1) != coroutineSingletons) {
                        mutex2 = mutex;
                        unbatchedFlowCombiner2 = unbatchedFlowCombiner;
                        unbatchedFlowCombiner2.f18986b.g(Unit.f71739a);
                        mutex = mutex2;
                        mutex.d(null);
                        return Unit.f71739a;
                    }
                    return coroutineSingletons;
                } catch (Throwable th3) {
                    Mutex mutex3 = mutex;
                    th = th3;
                    mutex2 = mutex3;
                    mutex2.d(null);
                    throw th;
                }
            }
            i2 = unbatchedFlowCombiner$onNext$1.f18991e;
            obj = unbatchedFlowCombiner$onNext$1.f18990c;
            this = unbatchedFlowCombiner$onNext$1.f18989b;
            ResultKt.b(obj5);
        }
        MutexImpl mutexImpl = this.f18987c;
        unbatchedFlowCombiner$onNext$1.f18989b = this;
        unbatchedFlowCombiner$onNext$1.f18990c = obj;
        unbatchedFlowCombiner$onNext$1.d = mutexImpl;
        unbatchedFlowCombiner$onNext$1.f18991e = i2;
        unbatchedFlowCombiner$onNext$1.f18993h = 2;
        if (mutexImpl.c(unbatchedFlowCombiner$onNext$1) != coroutineSingletons) {
            unbatchedFlowCombiner = this;
            i3 = i2;
            mutex = mutexImpl;
            objArr = unbatchedFlowCombiner.f18988e;
            length = objArr.length;
            i4 = 0;
            while (true) {
                obj2 = FlowExtKt.f18590a;
                if (i4 < length) {
                    z = false;
                    break;
                }
                if (objArr[i4] == obj2) {
                    z = true;
                    break;
                }
                i4++;
            }
            objArr[i3] = obj;
            while (i5 < r14) {
                if (obj6 == obj2) {
                    mutex.d(null);
                    return Unit.f71739a;
                }
            }
            if (z) {
                combineSource = CombineSource.INITIAL;
            } else if (i3 == 0) {
                combineSource = CombineSource.RECEIVER;
            } else {
                combineSource = CombineSource.OTHER;
            }
            function4 = unbatchedFlowCombiner.f18985a;
            obj3 = objArr[0];
            obj4 = objArr[1];
            unbatchedFlowCombiner$onNext$1.f18989b = unbatchedFlowCombiner;
            unbatchedFlowCombiner$onNext$1.f18990c = mutex;
            unbatchedFlowCombiner$onNext$1.d = null;
            unbatchedFlowCombiner$onNext$1.f18993h = 3;
            if (function4.g(obj3, obj4, combineSource, unbatchedFlowCombiner$onNext$1) != coroutineSingletons) {
                mutex2 = mutex;
                unbatchedFlowCombiner2 = unbatchedFlowCombiner;
                unbatchedFlowCombiner2.f18986b.g(Unit.f71739a);
                mutex = mutex2;
                mutex.d(null);
                return Unit.f71739a;
            }
        }
        return coroutineSingletons;
    }
}
