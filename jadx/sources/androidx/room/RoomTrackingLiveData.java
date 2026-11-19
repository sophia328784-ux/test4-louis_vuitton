package androidx.room;

import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.lifecycle.LiveData;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import defpackage.md;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/room/RoomTrackingLiveData;", "T", "Landroidx/lifecycle/LiveData;", "Landroidx/room/RoomLambdaTrackingLiveData;", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class RoomTrackingLiveData<T> extends LiveData<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f19496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InvalidationLiveDataContainer f19497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f19498c;
    public final RoomTrackingLiveData$observer$1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f19499e = new AtomicBoolean(true);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f19500f = new AtomicBoolean(false);
    public final AtomicBoolean g = new AtomicBoolean(false);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CoroutineContext f19501h;

    /* JADX INFO: renamed from: androidx.room.RoomTrackingLiveData$onActive$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.RoomTrackingLiveData$onActive$1", f = "RoomTrackingLiveData.android.kt", l = {123}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19505b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f19505b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f19505b = 1;
                if (RoomTrackingLiveData.b(RoomTrackingLiveData.this, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.room.RoomTrackingLiveData$observer$1] */
    public RoomTrackingLiveData(RoomDatabase roomDatabase, InvalidationLiveDataContainer invalidationLiveDataContainer, boolean z, final String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        CoroutineContext coroutineContext;
        this.f19496a = roomDatabase;
        this.f19497b = invalidationLiveDataContainer;
        this.f19498c = z;
        this.d = new InvalidationTracker.Observer(strArr) { // from class: androidx.room.RoomTrackingLiveData$observer$1
            @Override // androidx.room.InvalidationTracker.Observer
            public final void a(Set set) {
                set.getClass();
                ArchTaskExecutor archTaskExecutorA = ArchTaskExecutor.a();
                final RoomTrackingLiveData roomTrackingLiveData = this;
                Runnable runnable = new Runnable() { // from class: androidx.room.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoomTrackingLiveData roomTrackingLiveData2 = roomTrackingLiveData;
                        boolean zHasActiveObservers = roomTrackingLiveData2.hasActiveObservers();
                        if (roomTrackingLiveData2.f19499e.compareAndSet(false, true) && zHasActiveObservers) {
                            BuildersKt.c(roomTrackingLiveData2.f19496a.j(), roomTrackingLiveData2.f19501h, null, new RoomTrackingLiveData$invalidated$1(roomTrackingLiveData2, null), 2);
                        }
                    }
                };
                archTaskExecutorA.f1353a.getClass();
                if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                    runnable.run();
                } else {
                    archTaskExecutorA.b(runnable);
                }
            }
        };
        if (!roomDatabase.q()) {
            coroutineContext = EmptyCoroutineContext.f71840b;
        } else if (z) {
            coroutineContext = roomDatabase.f19457b;
            if (coroutineContext == null) {
                Intrinsics.h("transactionContext");
                throw null;
            }
        } else {
            ContextScope contextScope = roomDatabase.f19456a;
            if (contextScope == null) {
                Intrinsics.h("coroutineScope");
                throw null;
            }
            coroutineContext = contextScope.f75106b;
        }
        this.f19501h = coroutineContext;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0069  */
    /* JADX WARN: Code duplicated, block: B:30:0x0073 A[Catch: all -> 0x002d, Exception -> 0x002f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x002f, blocks: (B:12:0x0029, B:30:0x0073), top: B:49:0x0029, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0080 A[LOOP:0: B:28:0x006b->B:33:0x0080, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:37:0x008c A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #1 {all -> 0x002d, blocks: (B:12:0x0029, B:28:0x006b, B:30:0x0073, B:37:0x008c, B:34:0x0082, B:35:0x0089), top: B:49:0x0029, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x009b  */
    /* JADX WARN: Code duplicated, block: B:43:0x009e  */
    /* JADX WARN: Code duplicated, block: B:53:0x007f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0069 -> B:28:0x006b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x009b -> B:42:0x009c). Please report as a decompilation issue!!! */
    public static final Object b(RoomTrackingLiveData roomTrackingLiveData, ContinuationImpl continuationImpl) {
        RoomTrackingLiveData$refresh$1 roomTrackingLiveData$refresh$1;
        RoomTrackingLiveData roomTrackingLiveData2;
        int i2;
        if (continuationImpl instanceof RoomTrackingLiveData$refresh$1) {
            roomTrackingLiveData$refresh$1 = (RoomTrackingLiveData$refresh$1) continuationImpl;
            int i3 = roomTrackingLiveData$refresh$1.f19510f;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                roomTrackingLiveData$refresh$1.f19510f = i3 - Integer.MIN_VALUE;
            } else {
                roomTrackingLiveData$refresh$1 = new RoomTrackingLiveData$refresh$1(roomTrackingLiveData, continuationImpl);
            }
        } else {
            roomTrackingLiveData$refresh$1 = new RoomTrackingLiveData$refresh$1(roomTrackingLiveData, continuationImpl);
        }
        Object objC = roomTrackingLiveData$refresh$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = roomTrackingLiveData$refresh$1.f19510f;
        if (i4 == 0) {
            ResultKt.b(objC);
            if (roomTrackingLiveData.g.compareAndSet(false, true)) {
                InvalidationTracker invalidationTrackerK = roomTrackingLiveData.f19496a.k();
                RoomTrackingLiveData$observer$1 roomTrackingLiveData$observer$1 = roomTrackingLiveData.d;
                roomTrackingLiveData$observer$1.getClass();
                if (invalidationTrackerK.a(new WeakObserver(invalidationTrackerK, roomTrackingLiveData$observer$1))) {
                    RunBlockingUninterruptible_androidKt.a(new InvalidationTracker$addObserver$1(invalidationTrackerK, null));
                }
            }
            roomTrackingLiveData2 = roomTrackingLiveData;
            if (roomTrackingLiveData.f19500f.compareAndSet(false, true)) {
                objC = null;
                i2 = 0;
                while (roomTrackingLiveData2.f19499e.compareAndSet(true, false)) {
                    roomTrackingLiveData$refresh$1.f19507b = roomTrackingLiveData2;
                    roomTrackingLiveData$refresh$1.f19508c = 1;
                    roomTrackingLiveData$refresh$1.f19510f = 1;
                    objC = roomTrackingLiveData2.c(roomTrackingLiveData$refresh$1);
                    if (objC == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    i2 = 1;
                }
                if (i2 != 0) {
                    roomTrackingLiveData2.postValue(objC);
                }
                roomTrackingLiveData2.f19500f.set(false);
            } else {
                i2 = 0;
            }
            if (i2 != 0) {
            }
            return Unit.f71739a;
        }
        if (i4 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i2 = roomTrackingLiveData$refresh$1.f19508c;
        roomTrackingLiveData2 = roomTrackingLiveData$refresh$1.f19507b;
        try {
            try {
                ResultKt.b(objC);
                while (roomTrackingLiveData2.f19499e.compareAndSet(true, false)) {
                    roomTrackingLiveData$refresh$1.f19507b = roomTrackingLiveData2;
                    roomTrackingLiveData$refresh$1.f19508c = 1;
                    roomTrackingLiveData$refresh$1.f19510f = 1;
                    objC = roomTrackingLiveData2.c(roomTrackingLiveData$refresh$1);
                    if (objC == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    i2 = 1;
                }
                if (i2 != 0) {
                    roomTrackingLiveData2.postValue(objC);
                }
                roomTrackingLiveData2.f19500f.set(false);
                if (i2 != 0 || !roomTrackingLiveData2.f19499e.get()) {
                    return Unit.f71739a;
                }
                roomTrackingLiveData = roomTrackingLiveData2;
                roomTrackingLiveData2 = roomTrackingLiveData;
                if (roomTrackingLiveData.f19500f.compareAndSet(false, true)) {
                    objC = null;
                    i2 = 0;
                    while (roomTrackingLiveData2.f19499e.compareAndSet(true, false)) {
                        roomTrackingLiveData$refresh$1.f19507b = roomTrackingLiveData2;
                        roomTrackingLiveData$refresh$1.f19508c = 1;
                        roomTrackingLiveData$refresh$1.f19510f = 1;
                        objC = roomTrackingLiveData2.c(roomTrackingLiveData$refresh$1);
                        if (objC == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        i2 = 1;
                    }
                    if (i2 != 0) {
                        roomTrackingLiveData2.postValue(objC);
                    }
                    roomTrackingLiveData2.f19500f.set(false);
                } else {
                    i2 = 0;
                }
                if (i2 != 0) {
                }
                return Unit.f71739a;
            } catch (Exception e2) {
                throw new RuntimeException("Exception while computing database live data.", e2);
            }
        } catch (Throwable th) {
            roomTrackingLiveData2.f19500f.set(false);
            throw th;
        }
    }

    public abstract Object c(Continuation continuation);

    @Override // androidx.lifecycle.LiveData
    public final void onActive() {
        super.onActive();
        InvalidationLiveDataContainer invalidationLiveDataContainer = this.f19497b;
        invalidationLiveDataContainer.getClass();
        invalidationLiveDataContainer.f19398b.add(this);
        BuildersKt.c(this.f19496a.j(), this.f19501h, null, new AnonymousClass1(null), 2);
    }

    @Override // androidx.lifecycle.LiveData
    public final void onInactive() {
        super.onInactive();
        InvalidationLiveDataContainer invalidationLiveDataContainer = this.f19497b;
        invalidationLiveDataContainer.getClass();
        invalidationLiveDataContainer.f19398b.remove(this);
    }
}
