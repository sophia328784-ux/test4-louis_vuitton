package androidx.datastore.core;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"androidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1", "Landroidx/datastore/core/InitializerApi;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DataStoreImpl$InitDataStore$doRun$initData$1$api$1 implements InitializerApi<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Mutex f12646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Ref$BooleanRef f12647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f12648c;
    public final /* synthetic */ DataStoreImpl d;

    public DataStoreImpl$InitDataStore$doRun$initData$1$api$1(Mutex mutex, Ref$BooleanRef ref$BooleanRef, Ref$ObjectRef ref$ObjectRef, DataStoreImpl dataStoreImpl) {
        this.f12646a = mutex;
        this.f12647b = ref$BooleanRef;
        this.f12648c = ref$ObjectRef;
        this.d = dataStoreImpl;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b0 A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x004e, B:35:0x00a8, B:37:0x00b0), top: B:52:0x004e }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.datastore.core.InitializerApi
    public final Object a(Function2 function2, ContinuationImpl continuationImpl) throws Throwable {
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;
        Mutex mutex;
        Ref$BooleanRef ref$BooleanRef;
        Ref$ObjectRef ref$ObjectRef;
        DataStoreImpl dataStoreImpl;
        Mutex mutex2;
        Mutex mutex3;
        Ref$ObjectRef ref$ObjectRef2;
        Object obj;
        if (continuationImpl instanceof DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) {
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) continuationImpl;
            int i2 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12654i;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12654i = i2 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1(this, continuationImpl);
            }
        } else {
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1(this, continuationImpl);
        }
        Object obj2 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12654i;
        try {
            if (i3 == 0) {
                ResultKt.b(obj2);
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12649b = function2;
                mutex = this.f12646a;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12650c = mutex;
                ref$BooleanRef = this.f12647b;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.d = ref$BooleanRef;
                ref$ObjectRef = this.f12648c;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12651e = ref$ObjectRef;
                dataStoreImpl = this.d;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12652f = dataStoreImpl;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12654i = 1;
                if (mutex.c(dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    obj = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.d;
                    ref$ObjectRef2 = (Ref$ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12650c;
                    mutex2 = (Mutex) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12649b;
                    try {
                        ResultKt.b(obj2);
                        ref$ObjectRef2.f71921b = obj;
                        Object obj3 = ref$ObjectRef2.f71921b;
                        mutex2.d(null);
                        return obj3;
                    } catch (Throwable th) {
                        th = th;
                        mutex2.d(null);
                        throw th;
                    }
                }
                dataStoreImpl = (DataStoreImpl) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.d;
                ref$ObjectRef2 = (Ref$ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12650c;
                mutex3 = (Mutex) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12649b;
                try {
                    ResultKt.b(obj2);
                    if (!Intrinsics.c(obj2, ref$ObjectRef2.f71921b)) {
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12649b = mutex3;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12650c = ref$ObjectRef2;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.d = obj2;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12654i = 3;
                        if (dataStoreImpl.j(obj2, false, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) != coroutineSingletons) {
                            obj = obj2;
                            mutex2 = mutex3;
                            ref$ObjectRef2.f71921b = obj;
                        }
                        return coroutineSingletons;
                    }
                    mutex2 = mutex3;
                    Object obj4 = ref$ObjectRef2.f71921b;
                    mutex2.d(null);
                    return obj4;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2 = mutex3;
                    mutex2.d(null);
                    throw th;
                }
            }
            dataStoreImpl = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12652f;
            Ref$ObjectRef ref$ObjectRef3 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12651e;
            ref$BooleanRef = (Ref$BooleanRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.d;
            Mutex mutex4 = (Mutex) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12650c;
            Function2 function3 = (Function2) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12649b;
            ResultKt.b(obj2);
            ref$ObjectRef = ref$ObjectRef3;
            function2 = function3;
            mutex = mutex4;
            if (ref$BooleanRef.f71917b) {
                throw new IllegalStateException("InitializerApi.updateData should not be called after initialization is complete.");
            }
            Object obj5 = ref$ObjectRef.f71921b;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12649b = mutex;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12650c = ref$ObjectRef;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.d = dataStoreImpl;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12651e = null;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12652f = null;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12654i = 2;
            Object objInvoke = function2.invoke(obj5, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1);
            if (objInvoke != coroutineSingletons) {
                mutex3 = mutex;
                obj2 = objInvoke;
                ref$ObjectRef2 = ref$ObjectRef;
                if (!Intrinsics.c(obj2, ref$ObjectRef2.f71921b)) {
                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12649b = mutex3;
                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12650c = ref$ObjectRef2;
                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.d = obj2;
                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.f12654i = 3;
                    if (dataStoreImpl.j(obj2, false, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) != coroutineSingletons) {
                        obj = obj2;
                        mutex2 = mutex3;
                        ref$ObjectRef2.f71921b = obj;
                    }
                } else {
                    mutex2 = mutex3;
                }
                Object obj6 = ref$ObjectRef2.f71921b;
                mutex2.d(null);
                return obj6;
            }
            return coroutineSingletons;
        } catch (Throwable th3) {
            th = th3;
            mutex2 = mutex;
            mutex2.d(null);
            throw th;
        }
    }
}
