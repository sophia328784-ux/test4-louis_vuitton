package androidx.datastore.core;

import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import defpackage.md;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002\u0015\u0016Bp\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012?\b\u0002\u0010\u000e\u001a9\u00125\u00123\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00060\u0005\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Landroidx/datastore/core/DataStoreImpl;", "T", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/core/Storage;", "storage", "", "Lkotlin/Function2;", "Landroidx/datastore/core/InitializerApi;", "Lkotlin/ParameterName;", "name", "api", "Lkotlin/coroutines/Continuation;", "", "", "initTasksList", "Landroidx/datastore/core/CorruptionHandler;", "corruptionHandler", "Lkotlinx/coroutines/CoroutineScope;", "scope", "<init>", "(Landroidx/datastore/core/Storage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V", "Companion", "InitDataStore", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DataStoreImpl<T> implements DataStore<T> {
    public static final /* synthetic */ int m = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Storage f12626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CorruptionHandler f12627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineScope f12628c;
    public final Flow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutexImpl f12629e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12630f;
    public Job g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DataStoreInMemoryCache f12631h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final InitDataStore f12632i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Lazy f12633j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Lazy f12634k;
    public final SimpleActor l;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/datastore/core/DataStoreImpl$Companion;", "", "", "BUG_MESSAGE", "Ljava/lang/String;", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001BF\u0012=\u0010\u000b\u001a9\u00125\u00123\b\u0001\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00030\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/datastore/core/DataStoreImpl$InitDataStore;", "Landroidx/datastore/core/RunOnce;", "", "Lkotlin/Function2;", "Landroidx/datastore/core/InitializerApi;", "Lkotlin/ParameterName;", "name", "api", "Lkotlin/coroutines/Continuation;", "", "", "initTasksList", "<init>", "(Landroidx/datastore/core/DataStoreImpl;Ljava/util/List;)V", "datastore-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class InitDataStore extends RunOnce {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List f12635c;
        public final /* synthetic */ DataStoreImpl d;

        public InitDataStore(DataStoreImpl dataStoreImpl, List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> list) {
            list.getClass();
            this.d = dataStoreImpl;
            this.f12635c = CollectionsKt.y0(list);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
        
            if (r7 == r1) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x006f, code lost:
        
            if (r7 == r1) goto L27;
         */
        @Override // androidx.datastore.core.RunOnce
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r7) throws androidx.datastore.core.CorruptionException {
            /*
                r6 = this;
                boolean r0 = r7 instanceof androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1
                if (r0 == 0) goto L13
                r0 = r7
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1 r0 = (androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1) r0
                int r1 = r0.f12638e
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f12638e = r1
                goto L18
            L13:
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1 r0 = new androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1
                r0.<init>(r6, r7)
            L18:
                java.lang.Object r7 = r0.f12637c
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.f12638e
                r3 = 0
                r4 = 2
                r5 = 1
                if (r2 == 0) goto L3d
                if (r2 == r5) goto L35
                if (r2 != r4) goto L2f
                java.lang.Object r6 = r0.f12636b
                androidx.datastore.core.DataStoreImpl$InitDataStore r6 = (androidx.datastore.core.DataStoreImpl.InitDataStore) r6
                kotlin.ResultKt.b(r7)
                goto L63
            L2f:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r6)
                return r3
            L35:
                java.lang.Object r6 = r0.f12636b
                androidx.datastore.core.DataStoreImpl$InitDataStore r6 = (androidx.datastore.core.DataStoreImpl.InitDataStore) r6
                kotlin.ResultKt.b(r7)
                goto L72
            L3d:
                kotlin.ResultKt.b(r7)
                java.util.List r7 = r6.f12635c
                androidx.datastore.core.DataStoreImpl r2 = r6.d
                if (r7 == 0) goto L66
                boolean r7 = r7.isEmpty()
                if (r7 == 0) goto L4d
                goto L66
            L4d:
                int r7 = androidx.datastore.core.DataStoreImpl.m
                androidx.datastore.core.InterProcessCoordinator r7 = r2.g()
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1 r5 = new androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1
                r5.<init>(r2, r6, r3)
                r0.f12636b = r6
                r0.f12638e = r4
                java.lang.Object r7 = r7.d(r5, r0)
                if (r7 != r1) goto L63
                goto L71
            L63:
                androidx.datastore.core.Data r7 = (androidx.datastore.core.Data) r7
                goto L74
            L66:
                r0.f12636b = r6
                r0.f12638e = r5
                r7 = 0
                java.lang.Object r7 = androidx.datastore.core.DataStoreImpl.f(r2, r7, r0)
                if (r7 != r1) goto L72
            L71:
                return r1
            L72:
                androidx.datastore.core.Data r7 = (androidx.datastore.core.Data) r7
            L74:
                androidx.datastore.core.DataStoreImpl r6 = r6.d
                androidx.datastore.core.DataStoreInMemoryCache r6 = r6.f12631h
                r6.b(r7)
                kotlin.Unit r6 = kotlin.Unit.f71739a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.InitDataStore.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }
    }

    static {
        new Companion(null);
    }

    public DataStoreImpl(Storage<T> storage, List<? extends Function2<? super InitializerApi<T>, ? super Continuation<? super Unit>, ? extends Object>> list, CorruptionHandler<T> corruptionHandler, CoroutineScope coroutineScope) {
        storage.getClass();
        list.getClass();
        corruptionHandler.getClass();
        coroutineScope.getClass();
        this.f12626a = storage;
        this.f12627b = corruptionHandler;
        this.f12628c = coroutineScope;
        this.d = FlowKt.t(new DataStoreImpl$data$1(this, null));
        this.f12629e = MutexKt.a();
        this.f12631h = new DataStoreInMemoryCache();
        this.f12632i = new InitDataStore(this, list);
        this.f12633j = LazyKt.b(new Function0<StorageConnection<T>>() { // from class: androidx.datastore.core.DataStoreImpl$storageConnectionDelegate$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.f12718c.f12626a.createConnection();
            }
        });
        this.f12634k = LazyKt.b(new Function0<InterProcessCoordinator>() { // from class: androidx.datastore.core.DataStoreImpl$coordinator$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((StorageConnection) this.f12655c.f12633j.getF71699b()).getF12757c();
            }
        });
        this.l = new SimpleActor(coroutineScope, new Function1<Throwable, Unit>() { // from class: androidx.datastore.core.DataStoreImpl$writeActor$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Throwable th = (Throwable) obj;
                DataStoreImpl dataStoreImpl = this.f12728c;
                Lazy lazy = dataStoreImpl.f12633j;
                if (th != null) {
                    dataStoreImpl.f12631h.b(new Final(th));
                }
                if (lazy.a()) {
                    ((StorageConnection) lazy.getF71699b()).close();
                }
                return Unit.f71739a;
            }
        }, DataStoreImpl$writeActor$2.f12729c, new DataStoreImpl$writeActor$3(this, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object b(DataStoreImpl dataStoreImpl, ContinuationImpl continuationImpl) {
        DataStoreImpl$decrementCollector$1 dataStoreImpl$decrementCollector$1;
        MutexImpl mutexImpl;
        if (continuationImpl instanceof DataStoreImpl$decrementCollector$1) {
            dataStoreImpl$decrementCollector$1 = (DataStoreImpl$decrementCollector$1) continuationImpl;
            int i2 = dataStoreImpl$decrementCollector$1.f12673f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$decrementCollector$1.f12673f = i2 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$decrementCollector$1 = new DataStoreImpl$decrementCollector$1(dataStoreImpl, continuationImpl);
            }
        } else {
            dataStoreImpl$decrementCollector$1 = new DataStoreImpl$decrementCollector$1(dataStoreImpl, continuationImpl);
        }
        Object obj = dataStoreImpl$decrementCollector$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dataStoreImpl$decrementCollector$1.f12673f;
        if (i3 == 0) {
            ResultKt.b(obj);
            mutexImpl = dataStoreImpl.f12629e;
            dataStoreImpl$decrementCollector$1.f12670b = dataStoreImpl;
            dataStoreImpl$decrementCollector$1.f12671c = mutexImpl;
            dataStoreImpl$decrementCollector$1.f12673f = 1;
            if (mutexImpl.c(dataStoreImpl$decrementCollector$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            MutexImpl mutexImpl2 = dataStoreImpl$decrementCollector$1.f12671c;
            DataStoreImpl dataStoreImpl2 = dataStoreImpl$decrementCollector$1.f12670b;
            ResultKt.b(obj);
            mutexImpl = mutexImpl2;
            dataStoreImpl = dataStoreImpl2;
        }
        try {
            int i4 = dataStoreImpl.f12630f - 1;
            dataStoreImpl.f12630f = i4;
            if (i4 == 0) {
                Job job = dataStoreImpl.g;
                if (job != null) {
                    job.cancel(null);
                }
                dataStoreImpl.g = null;
            }
            return Unit.f71739a;
        } finally {
            mutexImpl.d(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0071, code lost:
    
        if (r9 == r1) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
    
        r8 = r11;
        r11 = r9;
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b5, code lost:
    
        if (r9 == r1) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.datastore.core.DataStoreImpl] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16, types: [androidx.datastore.core.DataStoreImpl] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlinx.coroutines.CompletableDeferred] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(androidx.datastore.core.DataStoreImpl r9, androidx.datastore.core.Message.Update r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instruction units count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.c(androidx.datastore.core.DataStoreImpl, androidx.datastore.core.Message$Update, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object d(DataStoreImpl dataStoreImpl, ContinuationImpl continuationImpl) {
        DataStoreImpl$incrementCollector$1 dataStoreImpl$incrementCollector$1;
        MutexImpl mutexImpl;
        if (continuationImpl instanceof DataStoreImpl$incrementCollector$1) {
            dataStoreImpl$incrementCollector$1 = (DataStoreImpl$incrementCollector$1) continuationImpl;
            int i2 = dataStoreImpl$incrementCollector$1.f12683f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$incrementCollector$1.f12683f = i2 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$incrementCollector$1 = new DataStoreImpl$incrementCollector$1(dataStoreImpl, continuationImpl);
            }
        } else {
            dataStoreImpl$incrementCollector$1 = new DataStoreImpl$incrementCollector$1(dataStoreImpl, continuationImpl);
        }
        Object obj = dataStoreImpl$incrementCollector$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dataStoreImpl$incrementCollector$1.f12683f;
        if (i3 == 0) {
            ResultKt.b(obj);
            mutexImpl = dataStoreImpl.f12629e;
            dataStoreImpl$incrementCollector$1.f12680b = dataStoreImpl;
            dataStoreImpl$incrementCollector$1.f12681c = mutexImpl;
            dataStoreImpl$incrementCollector$1.f12683f = 1;
            if (mutexImpl.c(dataStoreImpl$incrementCollector$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            MutexImpl mutexImpl2 = dataStoreImpl$incrementCollector$1.f12681c;
            DataStoreImpl dataStoreImpl2 = dataStoreImpl$incrementCollector$1.f12680b;
            ResultKt.b(obj);
            mutexImpl = mutexImpl2;
            dataStoreImpl = dataStoreImpl2;
        }
        try {
            int i4 = dataStoreImpl.f12630f + 1;
            dataStoreImpl.f12630f = i4;
            if (i4 == 1) {
                dataStoreImpl.g = BuildersKt.c(dataStoreImpl.f12628c, null, null, new DataStoreImpl$incrementCollector$2$1(dataStoreImpl, null), 3);
            }
            return Unit.f71739a;
        } finally {
            mutexImpl.d(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object e(DataStoreImpl dataStoreImpl, boolean z, Continuation continuation) {
        DataStoreImpl$readDataAndUpdateCache$1 dataStoreImpl$readDataAndUpdateCache$1;
        DataStoreImpl dataStoreImpl2;
        State state;
        DataStoreImpl dataStoreImpl3;
        Pair pair;
        State state2;
        if (continuation instanceof DataStoreImpl$readDataAndUpdateCache$1) {
            dataStoreImpl$readDataAndUpdateCache$1 = (DataStoreImpl$readDataAndUpdateCache$1) continuation;
            int i2 = dataStoreImpl$readDataAndUpdateCache$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$readDataAndUpdateCache$1.g = i2 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$readDataAndUpdateCache$1 = new DataStoreImpl$readDataAndUpdateCache$1(dataStoreImpl, continuation);
            }
        } else {
            dataStoreImpl$readDataAndUpdateCache$1 = new DataStoreImpl$readDataAndUpdateCache$1(dataStoreImpl, continuation);
        }
        Object objA = dataStoreImpl$readDataAndUpdateCache$1.f12693e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dataStoreImpl$readDataAndUpdateCache$1.g;
        if (i3 == 0) {
            ResultKt.b(objA);
            State stateA = dataStoreImpl.f12631h.a();
            if (stateA instanceof UnInitialized) {
                md.k("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                return null;
            }
            InterProcessCoordinator interProcessCoordinatorG = dataStoreImpl.g();
            dataStoreImpl$readDataAndUpdateCache$1.f12691b = dataStoreImpl;
            dataStoreImpl$readDataAndUpdateCache$1.f12692c = stateA;
            dataStoreImpl$readDataAndUpdateCache$1.d = z;
            dataStoreImpl$readDataAndUpdateCache$1.g = 1;
            Object objC = interProcessCoordinatorG.c(dataStoreImpl$readDataAndUpdateCache$1);
            if (objC != coroutineSingletons) {
                dataStoreImpl2 = dataStoreImpl;
                state = stateA;
                objA = objC;
            }
            return coroutineSingletons;
        }
        if (i3 != 1) {
            if (i3 == 2) {
                dataStoreImpl3 = dataStoreImpl$readDataAndUpdateCache$1.f12691b;
                ResultKt.b(objA);
                pair = (Pair) objA;
                state2 = (State) pair.f71705b;
                if (((Boolean) pair.f71706c).booleanValue()) {
                    dataStoreImpl3.f12631h.b(state2);
                }
                return state2;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            dataStoreImpl3 = dataStoreImpl$readDataAndUpdateCache$1.f12691b;
            ResultKt.b(objA);
            pair = (Pair) objA;
            state2 = (State) pair.f71705b;
            if (((Boolean) pair.f71706c).booleanValue()) {
                dataStoreImpl3.f12631h.b(state2);
            }
            return state2;
        }
        z = dataStoreImpl$readDataAndUpdateCache$1.d;
        state = dataStoreImpl$readDataAndUpdateCache$1.f12692c;
        dataStoreImpl2 = dataStoreImpl$readDataAndUpdateCache$1.f12691b;
        ResultKt.b(objA);
        int iIntValue = ((Number) objA).intValue();
        boolean z2 = state instanceof Data;
        int i4 = z2 ? state.f12841a : -1;
        if (z2 && iIntValue == i4) {
            return state;
        }
        if (z) {
            InterProcessCoordinator interProcessCoordinatorG2 = dataStoreImpl2.g();
            DataStoreImpl$readDataAndUpdateCache$3 dataStoreImpl$readDataAndUpdateCache$3 = new DataStoreImpl$readDataAndUpdateCache$3(dataStoreImpl2, null);
            dataStoreImpl$readDataAndUpdateCache$1.f12691b = dataStoreImpl2;
            dataStoreImpl$readDataAndUpdateCache$1.f12692c = null;
            dataStoreImpl$readDataAndUpdateCache$1.g = 2;
            objA = interProcessCoordinatorG2.d(dataStoreImpl$readDataAndUpdateCache$3, dataStoreImpl$readDataAndUpdateCache$1);
            if (objA != coroutineSingletons) {
                dataStoreImpl3 = dataStoreImpl2;
                pair = (Pair) objA;
                state2 = (State) pair.f71705b;
                if (((Boolean) pair.f71706c).booleanValue()) {
                    dataStoreImpl3.f12631h.b(state2);
                }
                return state2;
            }
        } else {
            InterProcessCoordinator interProcessCoordinatorG3 = dataStoreImpl2.g();
            DataStoreImpl$readDataAndUpdateCache$4 dataStoreImpl$readDataAndUpdateCache$4 = new DataStoreImpl$readDataAndUpdateCache$4(dataStoreImpl2, i4, null);
            dataStoreImpl$readDataAndUpdateCache$1.f12691b = dataStoreImpl2;
            dataStoreImpl$readDataAndUpdateCache$1.f12692c = null;
            dataStoreImpl$readDataAndUpdateCache$1.g = 3;
            objA = interProcessCoordinatorG3.a(dataStoreImpl$readDataAndUpdateCache$4, dataStoreImpl$readDataAndUpdateCache$1);
            if (objA != coroutineSingletons) {
                dataStoreImpl3 = dataStoreImpl2;
                pair = (Pair) objA;
                state2 = (State) pair.f71705b;
                if (((Boolean) pair.f71706c).booleanValue()) {
                    dataStoreImpl3.f12631h.b(state2);
                }
                return state2;
            }
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00a0 A[Catch: CorruptionException -> 0x0060, TryCatch #3 {CorruptionException -> 0x0060, blocks: (B:19:0x005b, B:54:0x00ff, B:24:0x0069, B:51:0x00e1, B:32:0x0086, B:40:0x00a0, B:42:0x00a6, B:36:0x008f, B:48:0x00ce), top: B:83:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:63:0x013c A[Catch: all -> 0x0168, TryCatch #1 {all -> 0x0168, blocks: (B:61:0x012a, B:63:0x013c, B:64:0x0144), top: B:80:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0144 A[Catch: all -> 0x0168, TRY_LEAVE, TryCatch #1 {all -> 0x0168, blocks: (B:61:0x012a, B:63:0x013c, B:64:0x0144), top: B:80:0x012a }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0154  */
    /* JADX WARN: Code duplicated, block: B:70:0x015c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object f(DataStoreImpl dataStoreImpl, boolean z, ContinuationImpl continuationImpl) throws CorruptionException {
        DataStoreImpl$readDataOrHandleCorruption$1 dataStoreImpl$readDataOrHandleCorruption$1;
        Ref$ObjectRef ref$ObjectRef;
        CorruptionException corruptionException;
        DataStoreImpl dataStoreImpl2;
        boolean z2;
        Ref$ObjectRef ref$ObjectRef2;
        Ref$IntRef ref$IntRef;
        CorruptionException corruptionException2;
        DataStoreImpl$readDataOrHandleCorruption$3 dataStoreImpl$readDataOrHandleCorruption$3;
        Object objD;
        Ref$IntRef ref$IntRef2;
        Ref$ObjectRef ref$ObjectRef3;
        int iHashCode;
        Object objC;
        DataStoreImpl dataStoreImpl3;
        int i2;
        Object obj;
        dataStoreImpl.getClass();
        if (continuationImpl instanceof DataStoreImpl$readDataOrHandleCorruption$1) {
            dataStoreImpl$readDataOrHandleCorruption$1 = (DataStoreImpl$readDataOrHandleCorruption$1) continuationImpl;
            int i3 = dataStoreImpl$readDataOrHandleCorruption$1.f12707j;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$readDataOrHandleCorruption$1.f12707j = i3 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$readDataOrHandleCorruption$1 = new DataStoreImpl$readDataOrHandleCorruption$1(dataStoreImpl, continuationImpl);
            }
        } else {
            dataStoreImpl$readDataOrHandleCorruption$1 = new DataStoreImpl$readDataOrHandleCorruption$1(dataStoreImpl, continuationImpl);
        }
        Object objC2 = dataStoreImpl$readDataOrHandleCorruption$1.f12705h;
        Object data = CoroutineSingletons.COROUTINE_SUSPENDED;
        try {
            switch (dataStoreImpl$readDataOrHandleCorruption$1.f12707j) {
                case 0:
                    ResultKt.b(objC2);
                    if (z) {
                        dataStoreImpl$readDataOrHandleCorruption$1.f12701b = dataStoreImpl;
                        dataStoreImpl$readDataOrHandleCorruption$1.f12704f = z;
                        dataStoreImpl$readDataOrHandleCorruption$1.f12707j = 1;
                        objC2 = dataStoreImpl.i(dataStoreImpl$readDataOrHandleCorruption$1);
                        if (objC2 != data) {
                            if (objC2 != null) {
                                iHashCode = objC2.hashCode();
                            } else {
                                iHashCode = 0;
                            }
                            InterProcessCoordinator interProcessCoordinatorG = dataStoreImpl.g();
                            dataStoreImpl$readDataOrHandleCorruption$1.f12701b = dataStoreImpl;
                            dataStoreImpl$readDataOrHandleCorruption$1.f12702c = objC2;
                            dataStoreImpl$readDataOrHandleCorruption$1.f12704f = z;
                            dataStoreImpl$readDataOrHandleCorruption$1.g = iHashCode;
                            dataStoreImpl$readDataOrHandleCorruption$1.f12707j = 2;
                            objC = interProcessCoordinatorG.c(dataStoreImpl$readDataOrHandleCorruption$1);
                            if (objC != data) {
                                dataStoreImpl3 = dataStoreImpl;
                                i2 = iHashCode;
                                obj = objC2;
                                objC2 = objC;
                                return new Data(obj, i2, ((Number) objC2).intValue());
                            }
                        }
                    } else {
                        InterProcessCoordinator interProcessCoordinatorG2 = dataStoreImpl.g();
                        dataStoreImpl$readDataOrHandleCorruption$1.f12701b = dataStoreImpl;
                        dataStoreImpl$readDataOrHandleCorruption$1.f12704f = z;
                        dataStoreImpl$readDataOrHandleCorruption$1.f12707j = 3;
                        objC2 = interProcessCoordinatorG2.c(dataStoreImpl$readDataOrHandleCorruption$1);
                        if (objC2 != data) {
                            int iIntValue = ((Number) objC2).intValue();
                            InterProcessCoordinator interProcessCoordinatorG3 = dataStoreImpl.g();
                            DataStoreImpl$readDataOrHandleCorruption$2 dataStoreImpl$readDataOrHandleCorruption$2 = new DataStoreImpl$readDataOrHandleCorruption$2(dataStoreImpl, iIntValue, null);
                            dataStoreImpl$readDataOrHandleCorruption$1.f12701b = dataStoreImpl;
                            dataStoreImpl$readDataOrHandleCorruption$1.f12704f = z;
                            dataStoreImpl$readDataOrHandleCorruption$1.f12707j = 4;
                            objC2 = interProcessCoordinatorG3.a(dataStoreImpl$readDataOrHandleCorruption$2, dataStoreImpl$readDataOrHandleCorruption$1);
                            if (objC2 == data) {
                            }
                            return (Data) objC2;
                        }
                    }
                    return data;
                case 1:
                    z = dataStoreImpl$readDataOrHandleCorruption$1.f12704f;
                    dataStoreImpl = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.f12701b;
                    ResultKt.b(objC2);
                    if (objC2 != null) {
                        iHashCode = objC2.hashCode();
                    } else {
                        iHashCode = 0;
                    }
                    InterProcessCoordinator interProcessCoordinatorG4 = dataStoreImpl.g();
                    dataStoreImpl$readDataOrHandleCorruption$1.f12701b = dataStoreImpl;
                    dataStoreImpl$readDataOrHandleCorruption$1.f12702c = objC2;
                    dataStoreImpl$readDataOrHandleCorruption$1.f12704f = z;
                    dataStoreImpl$readDataOrHandleCorruption$1.g = iHashCode;
                    dataStoreImpl$readDataOrHandleCorruption$1.f12707j = 2;
                    objC = interProcessCoordinatorG4.c(dataStoreImpl$readDataOrHandleCorruption$1);
                    if (objC != data) {
                        dataStoreImpl3 = dataStoreImpl;
                        i2 = iHashCode;
                        obj = objC2;
                        objC2 = objC;
                        return new Data(obj, i2, ((Number) objC2).intValue());
                    }
                    return data;
                case 2:
                    i2 = dataStoreImpl$readDataOrHandleCorruption$1.g;
                    z = dataStoreImpl$readDataOrHandleCorruption$1.f12704f;
                    obj = dataStoreImpl$readDataOrHandleCorruption$1.f12702c;
                    dataStoreImpl3 = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.f12701b;
                    try {
                        ResultKt.b(objC2);
                        return new Data(obj, i2, ((Number) objC2).intValue());
                    } catch (CorruptionException e2) {
                        e = e2;
                        dataStoreImpl = dataStoreImpl3;
                        ref$ObjectRef = new Ref$ObjectRef();
                        CorruptionHandler corruptionHandler = dataStoreImpl.f12627b;
                        dataStoreImpl$readDataOrHandleCorruption$1.f12701b = dataStoreImpl;
                        dataStoreImpl$readDataOrHandleCorruption$1.f12702c = e;
                        dataStoreImpl$readDataOrHandleCorruption$1.d = ref$ObjectRef;
                        dataStoreImpl$readDataOrHandleCorruption$1.f12703e = ref$ObjectRef;
                        dataStoreImpl$readDataOrHandleCorruption$1.f12704f = z;
                        dataStoreImpl$readDataOrHandleCorruption$1.f12707j = 5;
                        Object objA = corruptionHandler.a(e);
                        if (objA != data) {
                            corruptionException = e;
                            objC2 = objA;
                            dataStoreImpl2 = dataStoreImpl;
                            z2 = z;
                            ref$ObjectRef2 = ref$ObjectRef;
                            ref$ObjectRef2.f71921b = objC2;
                            ref$IntRef = new Ref$IntRef();
                            try {
                                dataStoreImpl$readDataOrHandleCorruption$3 = new DataStoreImpl$readDataOrHandleCorruption$3(ref$ObjectRef, dataStoreImpl2, ref$IntRef, null);
                                dataStoreImpl$readDataOrHandleCorruption$1.f12701b = corruptionException;
                                dataStoreImpl$readDataOrHandleCorruption$1.f12702c = ref$ObjectRef;
                                dataStoreImpl$readDataOrHandleCorruption$1.d = ref$IntRef;
                                dataStoreImpl$readDataOrHandleCorruption$1.f12703e = null;
                                dataStoreImpl$readDataOrHandleCorruption$1.f12707j = 6;
                                if (z2) {
                                    dataStoreImpl2.getClass();
                                    objD = dataStoreImpl$readDataOrHandleCorruption$3.invoke(dataStoreImpl$readDataOrHandleCorruption$1);
                                } else {
                                    objD = dataStoreImpl2.g().d(new DataStoreImpl$doWithWriteFileLock$3(null, dataStoreImpl$readDataOrHandleCorruption$3), dataStoreImpl$readDataOrHandleCorruption$1);
                                }
                                if (objD != data) {
                                    ref$IntRef2 = ref$IntRef;
                                    ref$ObjectRef3 = ref$ObjectRef;
                                    Object obj2 = ref$ObjectRef3.f71921b;
                                    data = new Data(obj2, obj2 != null ? obj2.hashCode() : 0, ref$IntRef2.f71919b);
                                }
                            } catch (Throwable th) {
                                th = th;
                                corruptionException2 = corruptionException;
                                ExceptionsKt.a(corruptionException2, th);
                                throw corruptionException2;
                            }
                        }
                        return data;
                    }
                case 3:
                    z = dataStoreImpl$readDataOrHandleCorruption$1.f12704f;
                    dataStoreImpl = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.f12701b;
                    ResultKt.b(objC2);
                    int iIntValue2 = ((Number) objC2).intValue();
                    InterProcessCoordinator interProcessCoordinatorG5 = dataStoreImpl.g();
                    DataStoreImpl$readDataOrHandleCorruption$2 dataStoreImpl$readDataOrHandleCorruption$4 = new DataStoreImpl$readDataOrHandleCorruption$2(dataStoreImpl, iIntValue2, null);
                    dataStoreImpl$readDataOrHandleCorruption$1.f12701b = dataStoreImpl;
                    dataStoreImpl$readDataOrHandleCorruption$1.f12704f = z;
                    dataStoreImpl$readDataOrHandleCorruption$1.f12707j = 4;
                    objC2 = interProcessCoordinatorG5.a(dataStoreImpl$readDataOrHandleCorruption$4, dataStoreImpl$readDataOrHandleCorruption$1);
                    if (objC2 == data) {
                        return data;
                    }
                    return (Data) objC2;
                case 4:
                    boolean z3 = dataStoreImpl$readDataOrHandleCorruption$1.f12704f;
                    ResultKt.b(objC2);
                    return (Data) objC2;
                case 5:
                    z2 = dataStoreImpl$readDataOrHandleCorruption$1.f12704f;
                    ref$ObjectRef2 = dataStoreImpl$readDataOrHandleCorruption$1.f12703e;
                    ref$ObjectRef = (Ref$ObjectRef) dataStoreImpl$readDataOrHandleCorruption$1.d;
                    corruptionException = (CorruptionException) dataStoreImpl$readDataOrHandleCorruption$1.f12702c;
                    dataStoreImpl2 = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.f12701b;
                    ResultKt.b(objC2);
                    ref$ObjectRef2.f71921b = objC2;
                    ref$IntRef = new Ref$IntRef();
                    dataStoreImpl$readDataOrHandleCorruption$3 = new DataStoreImpl$readDataOrHandleCorruption$3(ref$ObjectRef, dataStoreImpl2, ref$IntRef, null);
                    dataStoreImpl$readDataOrHandleCorruption$1.f12701b = corruptionException;
                    dataStoreImpl$readDataOrHandleCorruption$1.f12702c = ref$ObjectRef;
                    dataStoreImpl$readDataOrHandleCorruption$1.d = ref$IntRef;
                    dataStoreImpl$readDataOrHandleCorruption$1.f12703e = null;
                    dataStoreImpl$readDataOrHandleCorruption$1.f12707j = 6;
                    if (z2) {
                        dataStoreImpl2.getClass();
                        objD = dataStoreImpl$readDataOrHandleCorruption$3.invoke(dataStoreImpl$readDataOrHandleCorruption$1);
                    } else {
                        objD = dataStoreImpl2.g().d(new DataStoreImpl$doWithWriteFileLock$3(null, dataStoreImpl$readDataOrHandleCorruption$3), dataStoreImpl$readDataOrHandleCorruption$1);
                    }
                    if (objD != data) {
                        ref$IntRef2 = ref$IntRef;
                        ref$ObjectRef3 = ref$ObjectRef;
                        Object obj3 = ref$ObjectRef3.f71921b;
                        data = new Data(obj3, obj3 != null ? obj3.hashCode() : 0, ref$IntRef2.f71919b);
                    }
                    return data;
                case 6:
                    ref$IntRef2 = (Ref$IntRef) dataStoreImpl$readDataOrHandleCorruption$1.d;
                    ref$ObjectRef3 = (Ref$ObjectRef) dataStoreImpl$readDataOrHandleCorruption$1.f12702c;
                    corruptionException2 = (CorruptionException) dataStoreImpl$readDataOrHandleCorruption$1.f12701b;
                    try {
                        ResultKt.b(objC2);
                        Object obj4 = ref$ObjectRef3.f71921b;
                        data = new Data(obj4, obj4 != null ? obj4.hashCode() : 0, ref$IntRef2.f71919b);
                        return data;
                    } catch (Throwable th2) {
                        th = th2;
                        ExceptionsKt.a(corruptionException2, th);
                        throw corruptionException2;
                    }
                default:
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
            }
        } catch (CorruptionException e3) {
            e = e3;
        }
    }

    @Override // androidx.datastore.core.DataStore
    public final Object a(Function2 function2, Continuation continuation) {
        UpdatingDataContextElement updatingDataContextElement = (UpdatingDataContextElement) continuation.getContext().get(UpdatingDataContextElement.Companion.Key.f12848b);
        if (updatingDataContextElement != null) {
            updatingDataContextElement.a(this);
        }
        return BuildersKt.f(new UpdatingDataContextElement(updatingDataContextElement, this), new DataStoreImpl$updateData$2(this, function2, null), continuation);
    }

    public final InterProcessCoordinator g() {
        return (InterProcessCoordinator) this.f12634k.getF71699b();
    }

    @Override // androidx.datastore.core.DataStore
    /* JADX INFO: renamed from: getData, reason: from getter */
    public final Flow getD() {
        return this.d;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r2.b(r0) == r1) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(kotlin.coroutines.jvm.internal.ContinuationImpl r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 r0 = (androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1) r0
            int r1 = r0.f12690f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f12690f = r1
            goto L18
        L13:
            androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 r0 = new androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f12690f
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L37
            if (r2 != r3) goto L30
            int r6 = r0.f12688c
            androidx.datastore.core.DataStoreImpl r0 = r0.f12687b
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L2e
            goto L64
        L2e:
            r7 = move-exception
            goto L6c
        L30:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L37:
            androidx.datastore.core.DataStoreImpl r6 = r0.f12687b
            kotlin.ResultKt.b(r7)
            goto L4f
        L3d:
            kotlin.ResultKt.b(r7)
            androidx.datastore.core.InterProcessCoordinator r7 = r6.g()
            r0.f12687b = r6
            r0.f12690f = r4
            java.lang.Object r7 = r7.c(r0)
            if (r7 != r1) goto L4f
            goto L63
        L4f:
            java.lang.Number r7 = (java.lang.Number) r7
            int r7 = r7.intValue()
            androidx.datastore.core.DataStoreImpl$InitDataStore r2 = r6.f12632i     // Catch: java.lang.Throwable -> L67
            r0.f12687b = r6     // Catch: java.lang.Throwable -> L67
            r0.f12688c = r7     // Catch: java.lang.Throwable -> L67
            r0.f12690f = r3     // Catch: java.lang.Throwable -> L67
            java.lang.Object r6 = r2.b(r0)     // Catch: java.lang.Throwable -> L67
            if (r6 != r1) goto L64
        L63:
            return r1
        L64:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        L67:
            r0 = move-exception
            r5 = r0
            r0 = r6
            r6 = r7
            r7 = r5
        L6c:
            androidx.datastore.core.DataStoreInMemoryCache r0 = r0.f12631h
            androidx.datastore.core.ReadException r1 = new androidx.datastore.core.ReadException
            r1.<init>(r7, r6)
            r0.b(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.h(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final Object i(ContinuationImpl continuationImpl) {
        return ((StorageConnection) this.f12633j.getF71699b()).b(new StorageConnectionKt$readData$2(3, null), continuationImpl);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(Object obj, boolean z, ContinuationImpl continuationImpl) {
        DataStoreImpl$writeData$1 dataStoreImpl$writeData$1;
        Ref$IntRef ref$IntRef;
        if (continuationImpl instanceof DataStoreImpl$writeData$1) {
            dataStoreImpl$writeData$1 = (DataStoreImpl$writeData$1) continuationImpl;
            int i2 = dataStoreImpl$writeData$1.f12734e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$writeData$1.f12734e = i2 - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, continuationImpl);
            }
        } else {
            dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, continuationImpl);
        }
        Object obj2 = dataStoreImpl$writeData$1.f12733c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dataStoreImpl$writeData$1.f12734e;
        if (i3 == 0) {
            ResultKt.b(obj2);
            Ref$IntRef ref$IntRef2 = new Ref$IntRef();
            StorageConnection storageConnection = (StorageConnection) this.f12633j.getF71699b();
            DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(ref$IntRef2, this, obj, z, null);
            dataStoreImpl$writeData$1.f12732b = ref$IntRef2;
            dataStoreImpl$writeData$1.f12734e = 1;
            if (storageConnection.c(dataStoreImpl$writeData$2, dataStoreImpl$writeData$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
            ref$IntRef = ref$IntRef2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$IntRef = dataStoreImpl$writeData$1.f12732b;
            ResultKt.b(obj2);
        }
        return new Integer(ref$IntRef.f71919b);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DataStoreImpl(Storage storage, List list, CorruptionHandler corruptionHandler, CoroutineScope coroutineScope, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        list = (i2 & 2) != 0 ? EmptyList.f71768b : list;
        corruptionHandler = (i2 & 4) != 0 ? new NoOpCorruptionHandler() : corruptionHandler;
        if ((i2 & 8) != 0) {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            coroutineScope = CoroutineScopeKt.a(DefaultIoScheduler.f75161b.plus(SupervisorKt.b()));
        }
        this(storage, list, corruptionHandler, coroutineScope);
    }
}
