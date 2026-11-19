package androidx.datastore.core;

import defpackage.md;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/core/Data;", "T"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1", f = "DataStoreImpl.kt", l = {437, 458, 546, 468}, m = "invokeSuspend")
final class DataStoreImpl$InitDataStore$doRun$initData$1 extends SuspendLambda implements Function1<Continuation<? super Data<Object>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f12639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Serializable f12640c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f12641e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Iterator f12642f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12643h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ DataStoreImpl f12644i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ DataStoreImpl.InitDataStore f12645j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$InitDataStore$doRun$initData$1(DataStoreImpl dataStoreImpl, DataStoreImpl.InitDataStore initDataStore, Continuation continuation) {
        super(1, continuation);
        this.f12644i = dataStoreImpl;
        this.f12645j = initDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new DataStoreImpl$InitDataStore$doRun$initData$1(this.f12644i, this.f12645j, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((DataStoreImpl$InitDataStore$doRun$initData$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:35:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:36:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:49:0x00fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:? A[LOOP:0: B:21:0x009e->B:51:?, LOOP_END, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws CorruptionException {
        Mutex mutexA;
        Ref$BooleanRef ref$BooleanRef;
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        Mutex mutex;
        Iterator it;
        Mutex mutex2;
        Ref$BooleanRef ref$BooleanRef2;
        Ref$ObjectRef ref$ObjectRef3;
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
        Ref$ObjectRef ref$ObjectRef4;
        Ref$BooleanRef ref$BooleanRef3;
        Function2 function2;
        Object obj2;
        int iHashCode;
        Object objC;
        Object obj3;
        int i2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f12643h;
        DataStoreImpl.InitDataStore initDataStore = this.f12645j;
        DataStoreImpl dataStoreImpl = this.f12644i;
        if (i3 == 0) {
            ResultKt.b(obj);
            mutexA = MutexKt.a();
            ref$BooleanRef = new Ref$BooleanRef();
            ref$ObjectRef = new Ref$ObjectRef();
            this.f12639b = mutexA;
            this.f12640c = ref$BooleanRef;
            this.d = ref$ObjectRef;
            this.f12641e = ref$ObjectRef;
            this.f12643h = 1;
            obj = DataStoreImpl.f(dataStoreImpl, true, this);
            if (obj != coroutineSingletons) {
                ref$ObjectRef2 = ref$ObjectRef;
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            ref$ObjectRef = (Ref$ObjectRef) this.f12641e;
            ref$ObjectRef2 = (Ref$ObjectRef) this.d;
            ref$BooleanRef = (Ref$BooleanRef) this.f12640c;
            mutexA = (Mutex) this.f12639b;
            ResultKt.b(obj);
        } else {
            if (i3 == 2) {
                it = this.f12642f;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1) this.f12641e;
                ref$ObjectRef3 = (Ref$ObjectRef) this.d;
                ref$BooleanRef2 = (Ref$BooleanRef) this.f12640c;
                mutex2 = (Mutex) this.f12639b;
                ResultKt.b(obj);
                while (it.hasNext()) {
                    function2 = (Function2) it.next();
                    this.f12639b = mutex2;
                    this.f12640c = ref$BooleanRef2;
                    this.d = ref$ObjectRef3;
                    this.f12641e = dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
                    this.f12642f = it;
                    this.f12643h = 2;
                    if (function2.invoke(dataStoreImpl$InitDataStore$doRun$initData$1$api$1, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                ref$ObjectRef2 = ref$ObjectRef3;
                ref$BooleanRef = ref$BooleanRef2;
                mutex = mutex2;
                initDataStore.f12635c = null;
                this.f12639b = ref$BooleanRef;
                this.f12640c = ref$ObjectRef2;
                this.d = mutex;
                this.f12641e = null;
                this.f12642f = null;
                this.f12643h = 3;
                if (mutex.c(this) != coroutineSingletons) {
                    ref$ObjectRef4 = ref$ObjectRef2;
                    ref$BooleanRef3 = ref$BooleanRef;
                    ref$BooleanRef3.f71917b = true;
                    mutex.d(null);
                    obj2 = ref$ObjectRef4.f71921b;
                    if (obj2 != null) {
                        iHashCode = obj2.hashCode();
                    } else {
                        iHashCode = 0;
                    }
                    int i4 = DataStoreImpl.m;
                    InterProcessCoordinator interProcessCoordinatorG = dataStoreImpl.g();
                    this.f12639b = obj2;
                    this.f12640c = null;
                    this.d = null;
                    this.g = iHashCode;
                    this.f12643h = 4;
                    objC = interProcessCoordinatorG.c(this);
                    if (objC != coroutineSingletons) {
                        obj = objC;
                        obj3 = obj2;
                        i2 = iHashCode;
                    }
                }
                return coroutineSingletons;
            }
            if (i3 == 3) {
                mutex = (Mutex) this.d;
                ref$ObjectRef4 = (Ref$ObjectRef) this.f12640c;
                ref$BooleanRef3 = (Ref$BooleanRef) this.f12639b;
                ResultKt.b(obj);
                try {
                    ref$BooleanRef3.f71917b = true;
                    mutex.d(null);
                    obj2 = ref$ObjectRef4.f71921b;
                    if (obj2 != null) {
                        iHashCode = obj2.hashCode();
                    } else {
                        iHashCode = 0;
                    }
                    int i5 = DataStoreImpl.m;
                    InterProcessCoordinator interProcessCoordinatorG2 = dataStoreImpl.g();
                    this.f12639b = obj2;
                    this.f12640c = null;
                    this.d = null;
                    this.g = iHashCode;
                    this.f12643h = 4;
                    objC = interProcessCoordinatorG2.c(this);
                    if (objC != coroutineSingletons) {
                        obj = objC;
                        obj3 = obj2;
                        i2 = iHashCode;
                    }
                    return coroutineSingletons;
                } catch (Throwable th) {
                    mutex.d(null);
                    throw th;
                }
            }
            if (i3 != 4) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i2 = this.g;
            obj3 = this.f12639b;
            ResultKt.b(obj);
        }
        return new Data(obj3, i2, ((Number) obj).intValue());
        ref$ObjectRef.f71921b = ((Data) obj).f12610b;
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$2 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1(mutexA, ref$BooleanRef, ref$ObjectRef2, dataStoreImpl);
        List list = initDataStore.f12635c;
        if (list != null) {
            it = list.iterator();
            mutex2 = mutexA;
            ref$BooleanRef2 = ref$BooleanRef;
            ref$ObjectRef3 = ref$ObjectRef2;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = dataStoreImpl$InitDataStore$doRun$initData$1$api$2;
            while (it.hasNext()) {
                function2 = (Function2) it.next();
                this.f12639b = mutex2;
                this.f12640c = ref$BooleanRef2;
                this.d = ref$ObjectRef3;
                this.f12641e = dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
                this.f12642f = it;
                this.f12643h = 2;
                if (function2.invoke(dataStoreImpl$InitDataStore$doRun$initData$1$api$1, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            ref$ObjectRef2 = ref$ObjectRef3;
            ref$BooleanRef = ref$BooleanRef2;
            mutex = mutex2;
        } else {
            mutex = mutexA;
        }
        initDataStore.f12635c = null;
        this.f12639b = ref$BooleanRef;
        this.f12640c = ref$ObjectRef2;
        this.d = mutex;
        this.f12641e = null;
        this.f12642f = null;
        this.f12643h = 3;
        if (mutex.c(this) != coroutineSingletons) {
            ref$ObjectRef4 = ref$ObjectRef2;
            ref$BooleanRef3 = ref$BooleanRef;
            ref$BooleanRef3.f71917b = true;
            mutex.d(null);
            obj2 = ref$ObjectRef4.f71921b;
            if (obj2 != null) {
                iHashCode = obj2.hashCode();
            } else {
                iHashCode = 0;
            }
            int i6 = DataStoreImpl.m;
            InterProcessCoordinator interProcessCoordinatorG3 = dataStoreImpl.g();
            this.f12639b = obj2;
            this.f12640c = null;
            this.d = null;
            this.g = iHashCode;
            this.f12643h = 4;
            objC = interProcessCoordinatorG3.c(this);
            if (objC != coroutineSingletons) {
                obj = objC;
                obj3 = obj2;
                i2 = iHashCode;
                return new Data(obj3, i2, ((Number) obj).intValue());
            }
        }
        return coroutineSingletons;
    }
}
