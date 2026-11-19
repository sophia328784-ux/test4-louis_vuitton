package androidx.room;

import android.content.Intent;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.support.AutoCloser;
import defpackage.l40;
import defpackage.md;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001:\u0002\u000f\u0010BX\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u001d\u0010\t\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\b\b0\u0004\u0012\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n\"\u00020\u0005¢\u0006\u0004\b\f\u0010\rB%\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n\"\u00020\u0005¢\u0006\u0004\b\f\u0010\u000e¨\u0006\u0011"}, d2 = {"Landroidx/room/InvalidationTracker;", "", "Landroidx/room/RoomDatabase;", "database", "", "", "shadowTablesMap", "", "Lkotlin/jvm/JvmSuppressWildcards;", "viewTables", "", "tableNames", "<init>", "(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V", "(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V", "Observer", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class InvalidationTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoomDatabase f19399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f19400b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f19401c;
    public final String[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TriggerBasedInvalidationTracker f19402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f19403f;
    public final ReentrantLock g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AutoCloser f19404h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final l40 f19405i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final l40 f19406j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final InvalidationLiveDataContainer f19407k;
    public Intent l;
    public MultiInstanceInvalidationClient m;
    public final Object n;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/room/InvalidationTracker$Companion;", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/room/InvalidationTracker$Observer;", "", "", "", "tables", "<init>", "([Ljava/lang/String;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Observer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String[] f19408a;

        public Observer(String[] strArr) {
            strArr.getClass();
            this.f19408a = strArr;
        }

        public abstract void a(Set set);
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [l40] */
    /* JADX WARN: Type inference failed for: r2v5, types: [l40] */
    public InvalidationTracker(RoomDatabase roomDatabase, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        roomDatabase.getClass();
        map.getClass();
        map2.getClass();
        strArr.getClass();
        this.f19399a = roomDatabase;
        this.f19400b = map;
        this.f19401c = map2;
        this.d = strArr;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = new TriggerBasedInvalidationTracker(roomDatabase, map, map2, strArr, roomDatabase.l, new InvalidationTracker$implementation$1(1, this, InvalidationTracker.class, "notifyInvalidatedObservers", "notifyInvalidatedObservers(Ljava/util/Set;)V", 0));
        this.f19402e = triggerBasedInvalidationTracker;
        this.f19403f = new LinkedHashMap();
        this.g = new ReentrantLock();
        final int i2 = 0;
        this.f19405i = new Function0(this) { // from class: l40

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ InvalidationTracker f75942c;

            {
                this.f75942c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                InvalidationTracker invalidationTracker = this.f75942c;
                switch (i3) {
                    case 0:
                        AutoCloser autoCloser = invalidationTracker.f19404h;
                        if (autoCloser != null) {
                            autoCloser.c();
                        }
                        return Unit.f71739a;
                    case 1:
                        AutoCloser autoCloser2 = invalidationTracker.f19404h;
                        if (autoCloser2 != null) {
                            autoCloser2.a();
                        }
                        return Unit.f71739a;
                    default:
                        RoomDatabase roomDatabase2 = invalidationTracker.f19399a;
                        return Boolean.valueOf(!roomDatabase2.q() || roomDatabase2.u());
                }
            }
        };
        final int i3 = 1;
        this.f19406j = new Function0(this) { // from class: l40

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ InvalidationTracker f75942c;

            {
                this.f75942c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                InvalidationTracker invalidationTracker = this.f75942c;
                switch (i4) {
                    case 0:
                        AutoCloser autoCloser = invalidationTracker.f19404h;
                        if (autoCloser != null) {
                            autoCloser.c();
                        }
                        return Unit.f71739a;
                    case 1:
                        AutoCloser autoCloser2 = invalidationTracker.f19404h;
                        if (autoCloser2 != null) {
                            autoCloser2.a();
                        }
                        return Unit.f71739a;
                    default:
                        RoomDatabase roomDatabase2 = invalidationTracker.f19399a;
                        return Boolean.valueOf(!roomDatabase2.q() || roomDatabase2.u());
                }
            }
        };
        this.f19407k = new InvalidationLiveDataContainer(roomDatabase);
        this.n = new Object();
        final int i4 = 2;
        triggerBasedInvalidationTracker.f19527k = new Function0(this) { // from class: l40

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ InvalidationTracker f75942c;

            {
                this.f75942c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                InvalidationTracker invalidationTracker = this.f75942c;
                switch (i5) {
                    case 0:
                        AutoCloser autoCloser = invalidationTracker.f19404h;
                        if (autoCloser != null) {
                            autoCloser.c();
                        }
                        return Unit.f71739a;
                    case 1:
                        AutoCloser autoCloser2 = invalidationTracker.f19404h;
                        if (autoCloser2 != null) {
                            autoCloser2.a();
                        }
                        return Unit.f71739a;
                    default:
                        RoomDatabase roomDatabase2 = invalidationTracker.f19399a;
                        return Boolean.valueOf(!roomDatabase2.q() || roomDatabase2.u());
                }
            }
        };
    }

    public final boolean a(Observer observer) {
        LinkedHashMap linkedHashMap = this.f19403f;
        String[] strArr = observer.f19408a;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.f19402e;
        Pair pairG = triggerBasedInvalidationTracker.g(strArr);
        String[] strArr2 = (String[]) pairG.f71705b;
        int[] iArr = (int[]) pairG.f71706c;
        ObserverWrapper observerWrapper = new ObserverWrapper(observer, iArr, strArr2);
        ReentrantLock reentrantLock = this.g;
        reentrantLock.lock();
        try {
            ObserverWrapper observerWrapper2 = linkedHashMap.containsKey(observer) ? (ObserverWrapper) MapsKt.d(linkedHashMap, observer) : (ObserverWrapper) linkedHashMap.put(observer, observerWrapper);
            reentrantLock.unlock();
            if (observerWrapper2 != null) {
                return false;
            }
            iArr.getClass();
            return triggerBasedInvalidationTracker.f19524h.a(iArr);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final Flow b(String[] strArr) {
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.f19402e;
        Pair pairG = triggerBasedInvalidationTracker.g(strArr);
        final String[] strArr2 = (String[]) pairG.f71705b;
        int[] iArr = (int[]) pairG.f71706c;
        strArr2.getClass();
        iArr.getClass();
        Flow<Set<? extends String>> flow = null;
        Flow flowT = FlowKt.t(new TriggerBasedInvalidationTracker$createFlow$1(triggerBasedInvalidationTracker, iArr, strArr2, null));
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.m;
        if (multiInstanceInvalidationClient != null) {
            final SharedFlowImpl sharedFlowImpl = multiInstanceInvalidationClient.f19420h;
            flow = new Flow<Set<? extends String>>() { // from class: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1

                /* JADX INFO: renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2, reason: invalid class name */
                @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "R", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {2, 0, 0})
                public final class AnonymousClass2<T> implements FlowCollector {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ FlowCollector f19426b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ String[] f19427c;

                    /* JADX INFO: renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2", f = "MultiInstanceInvalidationClient.android.kt", l = {239}, m = "emit")
                    public final class AnonymousClass1 extends ContinuationImpl {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public /* synthetic */ Object f19428b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public int f19429c;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.f19428b = obj;
                            this.f19429c |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector, String[] strArr) {
                        this.f19426b = flowCollector;
                        this.f19427c = strArr;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i2 = anonymousClass1.f19429c;
                            if ((i2 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.f19429c = i2 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.f19428b;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i3 = anonymousClass1.f19429c;
                        if (i3 == 0) {
                            ResultKt.b(obj2);
                            Set set = (Set) obj;
                            SetBuilder setBuilder = new SetBuilder();
                            for (String str : this.f19427c) {
                                Iterator<T> it = set.iterator();
                                while (it.hasNext()) {
                                    if (StringsKt.s(str, (String) it.next(), true)) {
                                        setBuilder.add(str);
                                    }
                                }
                            }
                            SetBuilder setBuilderA = SetsKt.a(setBuilder);
                            SetBuilder setBuilder2 = setBuilderA.f71829b.isEmpty() ? null : setBuilderA;
                            if (setBuilder2 != null) {
                                anonymousClass1.f19429c = 1;
                                if (this.f19426b.emit(setBuilder2, anonymousClass1) == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                            }
                        } else {
                            if (i3 != 1) {
                                md.k("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ResultKt.b(obj2);
                        }
                        return Unit.f71739a;
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public final Object f(FlowCollector flowCollector, Continuation continuation) {
                    Object objF = sharedFlowImpl.f(new AnonymousClass2(flowCollector, strArr2), continuation);
                    return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                }
            };
        }
        return flow != null ? FlowKt.w(flowT, flow) : flowT;
    }

    public final void c(Observer observer) {
        observer.getClass();
        ReentrantLock reentrantLock = this.g;
        reentrantLock.lock();
        try {
            ObserverWrapper observerWrapper = (ObserverWrapper) this.f19403f.remove(observer);
            reentrantLock.unlock();
            if (observerWrapper != null) {
                int[] iArr = observerWrapper.f19448b;
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.f19402e;
                triggerBasedInvalidationTracker.getClass();
                iArr.getClass();
                if (triggerBasedInvalidationTracker.f19524h.b(iArr)) {
                    RunBlockingUninterruptible_androidKt.a(new InvalidationTracker$removeObserver$1(this, null));
                }
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final Object d(SuspendLambda suspendLambda) {
        Object objF;
        RoomDatabase roomDatabase = this.f19399a;
        return ((!roomDatabase.q() || roomDatabase.u()) && (objF = this.f19402e.f(suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? objF : Unit.f71739a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public InvalidationTracker(RoomDatabase roomDatabase, String... strArr) {
        this(roomDatabase, MapsKt.c(), MapsKt.c(), (String[]) Arrays.copyOf(strArr, strArr.length));
        roomDatabase.getClass();
        strArr.getClass();
    }
}
