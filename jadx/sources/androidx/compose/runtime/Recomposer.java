package androidx.compose.runtime;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectList;
import androidx.collection.ObjectListKt;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotApplyResult;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.tooling.ComposeStackTraceMode;
import defpackage.jm0;
import defpackage.rp0;
import defpackage.xo0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0004\u0006\u0007\b\tB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/Recomposer;", "Landroidx/compose/runtime/CompositionContext;", "Lkotlin/coroutines/CoroutineContext;", "effectCoroutineContext", "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", "State", "RecomposerInfoImpl", "RecomposerErrorState", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Recomposer extends CompositionContext {
    public static final MutableStateFlow A;
    public static final AtomicReference B;
    public static final Companion z = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BroadcastFrameClock f8081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NextFrameEndCallbackQueue f8082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f8083c;
    public Job d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f8084e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f8085f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MutableScatterSet f8086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableVector f8087i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f8088j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f8089k;
    public final MutableScatterMap l;
    public final NestedContentMap m;
    public final MutableScatterMap n;
    public final MutableScatterMap o;
    public ArrayList p;
    public MutableScatterSet q;
    public CancellableContinuationImpl r;
    public final MutableStateFlow s;
    public boolean t;
    public final MutableStateFlow u;
    public final SnapshotThreadLocal v;
    public final JobImpl w;
    public final CoroutineContext x;
    public final RecomposerInfoImpl y;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0003\u0018\u00002\u00020\u0001R$\u0010\u0006\u001a\u0012\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u0004R\u00020\u00050\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R$\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/Recomposer$Companion;", "", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;", "Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;", "Landroidx/compose/runtime/Recomposer;", "_runningRecomposers", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Ljava/util/concurrent/atomic/AtomicReference;", "", "Landroidx/compose/runtime/internal/AtomicReference;", "_hotReloadEnabled", "Ljava/util/concurrent/atomic/AtomicReference;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/Recomposer$RecomposerErrorState;", "Landroidx/compose/runtime/RecomposerErrorInfo;", "Landroidx/compose/runtime/RecomposerErrorInformation;", "", "cause", "", "isRecoverable", "<init>", "(Ljava/lang/Throwable;Z)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RecomposerErrorState implements RecomposerErrorInfo, RecomposerErrorInformation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Throwable f8090a;

        public RecomposerErrorState(Throwable th, boolean z) {
            this.f8090a = th;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;", "Landroidx/compose/runtime/RecomposerInfo;", "<init>", "(Landroidx/compose/runtime/Recomposer;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class RecomposerInfoImpl implements RecomposerInfo {
        public RecomposerInfoImpl(Recomposer recomposer) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/runtime/Recomposer$State;", "", "ShutDown", "ShuttingDown", "Inactive", "InactivePendingWork", "Idle", "PendingWork", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class State {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State Idle;
        public static final State Inactive;
        public static final State InactivePendingWork;
        public static final State PendingWork;
        public static final State ShutDown;
        public static final State ShuttingDown;

        static {
            State state = new State("ShutDown", 0);
            ShutDown = state;
            State state2 = new State("ShuttingDown", 1);
            ShuttingDown = state2;
            State state3 = new State("Inactive", 2);
            Inactive = state3;
            State state4 = new State("InactivePendingWork", 3);
            InactivePendingWork = state4;
            State state5 = new State("Idle", 4);
            Idle = state5;
            State state6 = new State("PendingWork", 5);
            PendingWork = state6;
            State[] stateArr = {state, state2, state3, state4, state5, state6};
            $VALUES = stateArr;
            $ENTRIES = EnumEntriesKt.a(stateArr);
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    static {
        PersistentOrderedSet.f8355f.getClass();
        A = StateFlowKt.a(PersistentOrderedSet.g);
        B = new AtomicReference(Boolean.FALSE);
    }

    public Recomposer(CoroutineContext coroutineContext) {
        final int i2 = 0;
        BroadcastFrameClock broadcastFrameClock = new BroadcastFrameClock(new Function0(this) { // from class: fr0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Recomposer f69198c;

            {
                this.f69198c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                Recomposer recomposer = this.f69198c;
                switch (i3) {
                    case 0:
                        Recomposer.Companion companion = Recomposer.z;
                        recomposer.K();
                        break;
                    default:
                        Recomposer.Companion companion2 = Recomposer.z;
                        recomposer.K();
                        break;
                }
                return Unit.f71739a;
            }
        });
        this.f8081a = broadcastFrameClock;
        final int i3 = 1;
        this.f8082b = new NextFrameEndCallbackQueue(new Function0(this) { // from class: fr0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Recomposer f69198c;

            {
                this.f69198c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                Recomposer recomposer = this.f69198c;
                switch (i4) {
                    case 0:
                        Recomposer.Companion companion = Recomposer.z;
                        recomposer.K();
                        break;
                    default:
                        Recomposer.Companion companion2 = Recomposer.z;
                        recomposer.K();
                        break;
                }
                return Unit.f71739a;
            }
        });
        this.f8083c = new Object();
        this.f8085f = new ArrayList();
        this.f8086h = new MutableScatterSet(0, 1, null);
        this.f8087i = new MutableVector(new ControlledComposition[16], 0);
        this.f8088j = new ArrayList();
        this.f8089k = new ArrayList();
        this.l = MultiValueMap.b();
        this.m = new NestedContentMap();
        this.n = ScatterMapKt.b();
        this.o = MultiValueMap.b();
        this.s = StateFlowKt.a(null);
        this.u = StateFlowKt.a(State.Inactive);
        this.v = new SnapshotThreadLocal();
        JobImpl jobImpl = new JobImpl((Job) coroutineContext.get(Job.Key.f74677b));
        jobImpl.invokeOnCompletion(new xo0(this, 4));
        this.w = jobImpl;
        this.x = coroutineContext.plus(broadcastFrameClock).plus(jobImpl);
        this.y = new RecomposerInfoImpl(this);
    }

    public static void A(MutableSnapshot mutableSnapshot) {
        try {
            if (mutableSnapshot.w() instanceof SnapshotApplyResult.Failure) {
                throw new IllegalStateException("Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition.");
            }
            mutableSnapshot.c();
        } catch (Throwable th) {
            mutableSnapshot.c();
            throw th;
        }
    }

    public static final void C(Recomposer recomposer, MovableContentStateReference movableContentStateReference, MovableContentStateReference movableContentStateReference2) {
        List list = movableContentStateReference2.f8029h;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                MovableContentStateReference movableContentStateReference3 = (MovableContentStateReference) list.get(i2);
                NestedContentMap nestedContentMap = recomposer.m;
                MovableContent movableContent = movableContentStateReference3.f8024a;
                NestedMovableContent nestedMovableContent = new NestedMovableContent(movableContentStateReference3, movableContentStateReference);
                MultiValueMap.a(nestedContentMap.f8037a, movableContent, nestedMovableContent);
                MultiValueMap.a(nestedContentMap.f8038b, nestedMovableContent.f8040b, movableContent);
                C(recomposer, movableContentStateReference, movableContentStateReference3);
            }
        }
    }

    public static final void M(ArrayList arrayList, Recomposer recomposer, ControlledComposition controlledComposition) {
        arrayList.clear();
        synchronized (recomposer.f8083c) {
            Iterator it = recomposer.f8089k.iterator();
            while (it.hasNext()) {
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) it.next();
                if (Intrinsics.c(movableContentStateReference.f8026c, controlledComposition)) {
                    arrayList.add(movableContentStateReference);
                    it.remove();
                }
            }
        }
    }

    public static /* synthetic */ void Q(Recomposer recomposer, Throwable th, int i2) throws Throwable {
        recomposer.P(th, null, (i2 & 4) == 0);
    }

    public final void B() {
        synchronized (this.f8083c) {
            if (((State) this.u.getValue()).compareTo(State.Idle) >= 0) {
                this.u.setValue(State.ShuttingDown);
            }
        }
        this.w.cancel((CancellationException) null);
    }

    public final CancellableContinuation D() {
        State state;
        MutableStateFlow mutableStateFlow = this.u;
        int iCompareTo = ((State) mutableStateFlow.getValue()).compareTo(State.ShuttingDown);
        MutableStateFlow mutableStateFlow2 = this.s;
        ArrayList arrayList = this.f8089k;
        ArrayList arrayList2 = this.f8088j;
        MutableVector mutableVector = this.f8087i;
        if (iCompareTo > 0) {
            if (mutableStateFlow2.getValue() != null) {
                state = State.Inactive;
            } else if (this.d == null) {
                this.f8086h = new MutableScatterSet(0, 1, null);
                mutableVector.j();
                state = (E() || G()) ? State.InactivePendingWork : State.Inactive;
            } else {
                state = (mutableVector.d != 0 || this.f8086h.c() || !arrayList2.isEmpty() || !arrayList.isEmpty() || E() || G() || this.l.g()) ? State.PendingWork : State.Idle;
            }
            mutableStateFlow.setValue(state);
            if (state != State.PendingWork) {
                return null;
            }
            CancellableContinuationImpl cancellableContinuationImpl = this.r;
            this.r = null;
            return cancellableContinuationImpl;
        }
        List listJ = J();
        int size = listJ.size();
        for (int i2 = 0; i2 < size; i2++) {
        }
        this.f8085f.clear();
        this.g = EmptyList.f71768b;
        this.f8086h = new MutableScatterSet(0, 1, null);
        mutableVector.j();
        arrayList2.clear();
        arrayList.clear();
        this.p = null;
        CancellableContinuationImpl cancellableContinuationImpl2 = this.r;
        if (cancellableContinuationImpl2 != null) {
            cancellableContinuationImpl2.cancel(null);
        }
        this.r = null;
        mutableStateFlow2.setValue(null);
        return null;
    }

    public final boolean E() {
        return !this.t && (this.f8081a.f7922c.f8380c.get() & 134217727) > 0;
    }

    public final boolean F() {
        return this.f8087i.d != 0 || E() || G() || this.l.g();
    }

    public final boolean G() {
        return !this.t && (this.f8082b.f8043b.f8380c.get() & 134217727) > 0;
    }

    public final boolean H() {
        boolean z2;
        synchronized (this.f8083c) {
            z2 = this.f8086h.c() || this.f8087i.d != 0 || E() || G();
        }
        return z2;
    }

    public final Object I(Continuation continuation) {
        Object objQ = FlowKt.q(this.u, new Recomposer$join$2(2, null), (ContinuationImpl) continuation);
        return objQ == CoroutineSingletons.COROUTINE_SUSPENDED ? objQ : Unit.f71739a;
    }

    public final List J() {
        List list = this.g;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = this.f8085f;
        List arrayList2 = arrayList.isEmpty() ? EmptyList.f71768b : new ArrayList(arrayList);
        this.g = arrayList2;
        return arrayList2;
    }

    public final void K() {
        CancellableContinuation cancellableContinuationD;
        synchronized (this.f8083c) {
            cancellableContinuationD = D();
            if (((State) this.u.getValue()).compareTo(State.ShuttingDown) <= 0) {
                Throwable th = this.f8084e;
                CancellationException cancellationException = new CancellationException("Recomposer shutdown; frame clock awaiter will never resume");
                cancellationException.initCause(th);
                throw cancellationException;
            }
        }
        if (cancellableContinuationD != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationD.resumeWith(Unit.f71739a);
        }
    }

    public final void L(ControlledComposition controlledComposition) {
        synchronized (this.f8083c) {
            ArrayList arrayList = this.f8089k;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (Intrinsics.c(((MovableContentStateReference) arrayList.get(i2)).f8026c, controlledComposition)) {
                    ArrayList arrayList2 = new ArrayList();
                    M(arrayList2, this, controlledComposition);
                    while (!arrayList2.isEmpty()) {
                        N(arrayList2, null);
                        M(arrayList2, this, controlledComposition);
                    }
                    return;
                }
            }
        }
    }

    public final List N(List list, MutableScatterSet mutableScatterSet) {
        ArrayList arrayList;
        HashMap map = new HashMap(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            ControlledComposition controlledComposition = ((MovableContentStateReference) obj).f8026c;
            Object arrayList2 = map.get(controlledComposition);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                map.put(controlledComposition, arrayList2);
            }
            ((ArrayList) arrayList2).add(obj);
        }
        for (Map.Entry entry : map.entrySet()) {
            ControlledComposition controlledComposition2 = (ControlledComposition) entry.getKey();
            List list2 = (List) entry.getValue();
            if (controlledComposition2.r()) {
                ComposerKt.a("Check failed");
            }
            Snapshot.Companion companion = Snapshot.f8462e;
            xo0 xo0Var = new xo0(controlledComposition2, 5);
            rp0 rp0Var = new rp0(controlledComposition2, mutableScatterSet, 6);
            companion.getClass();
            MutableSnapshot mutableSnapshotG = Snapshot.Companion.g(xo0Var, rp0Var);
            try {
                Snapshot snapshotJ = mutableSnapshotG.j();
                try {
                    synchronized (this.f8083c) {
                        try {
                            arrayList = new ArrayList(list2.size());
                            int size2 = list2.size();
                            for (int i3 = 0; i3 < size2; i3++) {
                                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) list2.get(i3);
                                Object objC = MultiValueMap.c(this.l, movableContentStateReference.f8024a);
                                MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) objC;
                                if (movableContentStateReference2 != null) {
                                    this.m.a(movableContentStateReference2);
                                }
                                arrayList.add(new Pair(movableContentStateReference, objC));
                            }
                            int size3 = arrayList.size();
                            for (int i4 = 0; i4 < size3; i4++) {
                                Pair pair = (Pair) arrayList.get(i4);
                                if (pair.f71706c == null) {
                                    if (this.m.f8037a.b(((MovableContentStateReference) pair.f71705b).f8024a)) {
                                        ArrayList arrayList3 = new ArrayList(arrayList.size());
                                        int size4 = arrayList.size();
                                        for (int i5 = 0; i5 < size4; i5++) {
                                            Pair pair2 = (Pair) arrayList.get(i5);
                                            if (pair2.f71706c == null) {
                                                NestedContentMap nestedContentMap = this.m;
                                                MovableContent movableContent = ((MovableContentStateReference) pair2.f71705b).f8024a;
                                                MutableScatterMap mutableScatterMap = nestedContentMap.f8037a;
                                                NestedMovableContent nestedMovableContent = (NestedMovableContent) MultiValueMap.c(mutableScatterMap, movableContent);
                                                if (mutableScatterMap.f()) {
                                                    nestedContentMap.f8038b.h();
                                                }
                                                if (nestedMovableContent != null) {
                                                    MovableContentStateReference movableContentStateReference3 = nestedMovableContent.f8039a;
                                                    MultiValueMap.a(this.o, nestedMovableContent.f8040b, movableContentStateReference3);
                                                    pair2 = new Pair(pair2.f71705b, movableContentStateReference3);
                                                }
                                            }
                                            arrayList3.add(pair2);
                                        }
                                        arrayList = arrayList3;
                                        break;
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    int size5 = arrayList.size();
                    for (int i6 = 0; i6 < size5; i6++) {
                        if (((Pair) arrayList.get(i6)).f71706c != null) {
                            int size6 = arrayList.size();
                            for (int i7 = 0; i7 < size6; i7++) {
                                if (((Pair) arrayList.get(i7)).f71706c == null) {
                                    ArrayList arrayList4 = new ArrayList(arrayList.size());
                                    int size7 = arrayList.size();
                                    for (int i8 = 0; i8 < size7; i8++) {
                                        Pair pair3 = (Pair) arrayList.get(i8);
                                        MovableContentStateReference movableContentStateReference4 = pair3.f71706c == null ? (MovableContentStateReference) pair3.f71705b : null;
                                        if (movableContentStateReference4 != null) {
                                            arrayList4.add(movableContentStateReference4);
                                        }
                                    }
                                    synchronized (this.f8083c) {
                                        CollectionsKt.j(this.f8089k, arrayList4);
                                    }
                                    ArrayList arrayList5 = new ArrayList(arrayList.size());
                                    int size8 = arrayList.size();
                                    for (int i9 = 0; i9 < size8; i9++) {
                                        Object obj2 = arrayList.get(i9);
                                        if (((Pair) obj2).f71706c != null) {
                                            arrayList5.add(obj2);
                                        }
                                    }
                                    arrayList = arrayList5;
                                    break;
                                }
                            }
                            break;
                        }
                    }
                    controlledComposition2.o(arrayList);
                    Snapshot.q(snapshotJ);
                    A(mutableSnapshotG);
                } catch (Throwable th2) {
                    Snapshot.q(snapshotJ);
                    throw th2;
                }
            } catch (Throwable th3) {
                A(mutableSnapshotG);
                throw th3;
            }
        }
        return CollectionsKt.y0(map.keySet());
    }

    public final ControlledComposition O(ControlledComposition controlledComposition, MutableScatterSet mutableScatterSet) {
        if (controlledComposition.r() || controlledComposition.isDisposed()) {
            return null;
        }
        MutableScatterSet mutableScatterSet2 = this.q;
        if (mutableScatterSet2 != null && mutableScatterSet2.a(controlledComposition)) {
            return null;
        }
        Snapshot.Companion companion = Snapshot.f8462e;
        xo0 xo0Var = new xo0(controlledComposition, 5);
        rp0 rp0Var = new rp0(controlledComposition, mutableScatterSet, 6);
        companion.getClass();
        MutableSnapshot mutableSnapshotG = Snapshot.Companion.g(xo0Var, rp0Var);
        try {
            Snapshot snapshotJ = mutableSnapshotG.j();
            if (mutableScatterSet != null) {
                try {
                    if (mutableScatterSet.c()) {
                        controlledComposition.g(new jm0(mutableScatterSet, controlledComposition, 14));
                    }
                } catch (Throwable th) {
                    Snapshot.q(snapshotJ);
                    throw th;
                }
            }
            boolean zM = controlledComposition.m();
            Snapshot.q(snapshotJ);
            A(mutableSnapshotG);
            if (zM) {
                return controlledComposition;
            }
            return null;
        } catch (Throwable th2) {
            A(mutableSnapshotG);
            throw th2;
        }
    }

    public final void P(Throwable th, ControlledComposition controlledComposition, boolean z2) throws Throwable {
        if (!((Boolean) B.get()).booleanValue() || (th instanceof ComposeRuntimeError)) {
            synchronized (this.f8083c) {
                RecomposerErrorState recomposerErrorState = (RecomposerErrorState) this.s.getValue();
                if (recomposerErrorState != null) {
                    throw recomposerErrorState.f8090a;
                }
                this.s.setValue(new RecomposerErrorState(th, false));
            }
            throw th;
        }
        synchronized (this.f8083c) {
            try {
                this.f8088j.clear();
                this.f8087i.j();
                this.f8086h = new MutableScatterSet(0, 1, null);
                this.f8089k.clear();
                this.l.h();
                this.n.h();
                this.s.setValue(new RecomposerErrorState(th, z2));
                if (controlledComposition != null) {
                    S(controlledComposition);
                }
                if (D() != null) {
                    ComposerKt.a("expected to go to inactive state due to composition error");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean R() {
        boolean zF;
        synchronized (this.f8083c) {
            if (this.f8086h.b()) {
                return F();
            }
            List listJ = J();
            ScatterSetWrapper scatterSetWrapper = new ScatterSetWrapper(this.f8086h);
            this.f8086h = new MutableScatterSet(0, 1, null);
            try {
                int size = listJ.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((ControlledComposition) listJ.get(i2)).d(scatterSetWrapper);
                    if (((State) this.u.getValue()).compareTo(State.ShuttingDown) <= 0) {
                        break;
                    }
                }
                synchronized (this.f8083c) {
                    if (D() != null) {
                        throw new IllegalStateException("called outside of runRecomposeAndApplyChanges");
                    }
                    zF = F();
                }
                return zF;
            } catch (Throwable th) {
                synchronized (this.f8083c) {
                    MutableScatterSet mutableScatterSet = this.f8086h;
                    mutableScatterSet.getClass();
                    Iterator<T> it = scatterSetWrapper.iterator();
                    while (it.hasNext()) {
                        mutableScatterSet.l(it.next());
                    }
                    throw th;
                }
            }
        }
    }

    public final void S(ControlledComposition controlledComposition) {
        ArrayList arrayList = this.p;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.p = arrayList;
        }
        if (!arrayList.contains(controlledComposition)) {
            arrayList.add(controlledComposition);
        }
        if (this.f8085f.remove(controlledComposition)) {
            this.g = null;
        }
    }

    public final Object T(Continuation continuation) throws Throwable {
        Object objF = BuildersKt.f(this.f8081a, new Recomposer$recompositionRunner$2(this, new Recomposer$runRecomposeAndApplyChanges$2(this, null), MonotonicFrameClockKt.a(continuation.getContext()), null), continuation);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (objF != coroutineSingletons) {
            objF = Unit.f71739a;
        }
        return objF == coroutineSingletons ? objF : Unit.f71739a;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void a(ControlledComposition controlledComposition, Function2 function2) throws Throwable {
        State state;
        boolean z2;
        boolean zR = controlledComposition.r();
        synchronized (this.f8083c) {
            State state2 = (State) this.u.getValue();
            state = State.ShuttingDown;
            z2 = state2.compareTo(state) > 0 ? !J().contains(controlledComposition) : true;
        }
        try {
            Snapshot.Companion companion = Snapshot.f8462e;
            xo0 xo0Var = new xo0(controlledComposition, 5);
            rp0 rp0Var = new rp0(controlledComposition, null, 6);
            companion.getClass();
            MutableSnapshot mutableSnapshotG = Snapshot.Companion.g(xo0Var, rp0Var);
            try {
                Snapshot snapshotJ = mutableSnapshotG.j();
                try {
                    controlledComposition.c(function2);
                    Snapshot.q(snapshotJ);
                    A(mutableSnapshotG);
                    synchronized (this.f8083c) {
                        if (((State) this.u.getValue()).compareTo(state) > 0 && !J().contains(controlledComposition)) {
                            this.f8085f.add(controlledComposition);
                            this.g = null;
                        }
                    }
                    if (!zR) {
                        SnapshotKt.i().m();
                    }
                    try {
                        L(controlledComposition);
                        try {
                            controlledComposition.q();
                            controlledComposition.e();
                            if (zR) {
                                return;
                            }
                            SnapshotKt.i().m();
                        } catch (Throwable th) {
                            Q(this, th, 6);
                        }
                    } catch (Throwable th2) {
                        P(th2, controlledComposition, true);
                    }
                } catch (Throwable th3) {
                    Snapshot.q(snapshotJ);
                    throw th3;
                }
            } catch (Throwable th4) {
                A(mutableSnapshotG);
                throw th4;
            }
        } catch (Throwable th5) {
            if (z2) {
                synchronized (this.f8083c) {
                }
            }
            P(th5, controlledComposition, true);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final ScatterSet b(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, Function2 function2) {
        SnapshotThreadLocal snapshotThreadLocal = this.v;
        try {
            ShouldPauseCallback shouldPauseCallbackJ = controlledComposition.j(shouldPauseCallback);
            try {
                a(controlledComposition, function2);
                MutableScatterSet mutableScatterSet = (MutableScatterSet) snapshotThreadLocal.a();
                if (mutableScatterSet == null) {
                    mutableScatterSet = ScatterSetKt.f3371a;
                    mutableScatterSet.getClass();
                }
                controlledComposition.j(shouldPauseCallbackJ);
                snapshotThreadLocal.b(null);
                return mutableScatterSet;
            } catch (Throwable th) {
                controlledComposition.j(shouldPauseCallbackJ);
                throw th;
            }
        } catch (Throwable th2) {
            snapshotThreadLocal.b(null);
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void c(MovableContentStateReference movableContentStateReference) {
        CancellableContinuation cancellableContinuationD;
        synchronized (this.f8083c) {
            try {
                MultiValueMap.a(this.l, movableContentStateReference.f8024a, movableContentStateReference);
                if (movableContentStateReference.f8029h != null) {
                    C(this, movableContentStateReference, movableContentStateReference);
                }
                cancellableContinuationD = D();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (cancellableContinuationD != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationD.resumeWith(Unit.f71739a);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final boolean e() {
        return ((Boolean) B.get()).booleanValue();
    }

    @Override // androidx.compose.runtime.CompositionContext
    /* JADX INFO: renamed from: f */
    public final boolean getF7987b() {
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    /* JADX INFO: renamed from: g */
    public final boolean getF7988c() {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        ComposeStackTraceMode.f8557a.getClass();
        return ComposeStackTraceMode.f8558b == 0;
    }

    @Override // androidx.compose.runtime.CompositionContext
    /* JADX INFO: renamed from: h */
    public final long getF7986a() {
        return 1000L;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final Composition i() {
        return null;
    }

    @Override // androidx.compose.runtime.CompositionContext
    /* JADX INFO: renamed from: k, reason: from getter */
    public final CoroutineContext getX() {
        return this.x;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final boolean m() {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        ComposeStackTraceMode.f8557a.getClass();
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void n(MovableContentStateReference movableContentStateReference) {
        CancellableContinuation cancellableContinuationD;
        synchronized (this.f8083c) {
            this.f8089k.add(movableContentStateReference);
            cancellableContinuationD = D();
        }
        if (cancellableContinuationD != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationD.resumeWith(Unit.f71739a);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void o(ControlledComposition controlledComposition) {
        CancellableContinuation cancellableContinuationD;
        synchronized (this.f8083c) {
            if (this.f8087i.l(controlledComposition)) {
                cancellableContinuationD = null;
            } else {
                this.f8087i.b(controlledComposition);
                cancellableContinuationD = D();
            }
        }
        if (cancellableContinuationD != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationD.resumeWith(Unit.f71739a);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0088 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x008a A[LOOP:0: B:16:0x004a->B:29:0x008a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:37:0x008d A[EDGE_INSN: B:37:0x008d->B:30:0x008d BREAK  A[LOOP:0: B:16:0x004a->B:29:0x008a], SYNTHETIC] */
    @Override // androidx.compose.runtime.CompositionContext
    public final void p(MovableContentStateReference movableContentStateReference, MovableContentState movableContentState, Applier applier) {
        ObjectList objectList;
        synchronized (this.f8083c) {
            this.n.o(movableContentStateReference, movableContentState);
            Object objE = this.o.e(movableContentStateReference);
            if (objE == null) {
                objectList = ObjectListKt.f3349b;
                objectList.getClass();
            } else if (objE instanceof MutableObjectList) {
                objectList = (ObjectList) objE;
            } else {
                Object[] objArr = ObjectListKt.f3348a;
                MutableObjectList mutableObjectList = new MutableObjectList(1);
                mutableObjectList.g(objE);
                objectList = mutableObjectList;
            }
            if (objectList.e()) {
                MutableScatterMap mutableScatterMapF = movableContentState.f8023a.f(applier, objectList);
                Object[] objArr2 = mutableScatterMapF.f3362b;
                Object[] objArr3 = mutableScatterMapF.f3363c;
                long[] jArr = mutableScatterMapF.f3361a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i2 = 0;
                    while (true) {
                        long j2 = jArr[i2];
                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i2 != length) {
                                break;
                                break;
                            }
                            i2++;
                        } else {
                            int i3 = 8 - ((~(i2 - length)) >>> 31);
                            for (int i4 = 0; i4 < i3; i4++) {
                                if ((255 & j2) < 128) {
                                    int i5 = (i2 << 3) + i4;
                                    Object obj = objArr2[i5];
                                    this.n.o((MovableContentStateReference) obj, (MovableContentState) objArr3[i5]);
                                }
                                j2 >>= 8;
                            }
                            if (i3 != 8) {
                                break;
                            } else if (i2 != length) {
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final MovableContentState q(MovableContentStateReference movableContentStateReference) {
        MovableContentState movableContentState;
        synchronized (this.f8083c) {
            movableContentState = (MovableContentState) this.n.m(movableContentStateReference);
        }
        return movableContentState;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final ScatterSet r(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, ScatterSet scatterSet) {
        SnapshotThreadLocal snapshotThreadLocal = this.v;
        try {
            R();
            controlledComposition.d(new ScatterSetWrapper(scatterSet));
            ShouldPauseCallback shouldPauseCallbackJ = controlledComposition.j(shouldPauseCallback);
            try {
                ControlledComposition controlledCompositionO = O(controlledComposition, null);
                if (controlledCompositionO != null) {
                    L(controlledComposition);
                    controlledCompositionO.q();
                    controlledCompositionO.e();
                }
                MutableScatterSet mutableScatterSet = (MutableScatterSet) snapshotThreadLocal.a();
                if (mutableScatterSet == null) {
                    mutableScatterSet = ScatterSetKt.f3371a;
                    mutableScatterSet.getClass();
                }
                controlledComposition.j(shouldPauseCallbackJ);
                snapshotThreadLocal.b(null);
                return mutableScatterSet;
            } catch (Throwable th) {
                controlledComposition.j(shouldPauseCallbackJ);
                throw th;
            }
        } catch (Throwable th2) {
            snapshotThreadLocal.b(null);
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void s(Set set) {
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void u(RecomposeScopeImpl recomposeScopeImpl) {
        SnapshotThreadLocal snapshotThreadLocal = this.v;
        MutableScatterSet mutableScatterSetA = (MutableScatterSet) snapshotThreadLocal.a();
        if (mutableScatterSetA == null) {
            mutableScatterSetA = ScatterSetKt.a();
            snapshotThreadLocal.b(mutableScatterSetA);
        }
        mutableScatterSetA.d(recomposeScopeImpl);
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void v(ControlledComposition controlledComposition) {
        synchronized (this.f8083c) {
            try {
                MutableScatterSet mutableScatterSetA = this.q;
                if (mutableScatterSetA == null) {
                    mutableScatterSetA = ScatterSetKt.a();
                    this.q = mutableScatterSetA;
                }
                mutableScatterSetA.d(controlledComposition);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final CancellationHandle w(Function0 function0) {
        NextFrameEndCallbackQueue nextFrameEndCallbackQueue = this.f8082b;
        return nextFrameEndCallbackQueue.f8043b.a(new NextFrameEndCallbackQueue.NextFrameEndAwaiter(function0), nextFrameEndCallbackQueue.f8044c);
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void z(CompositionImpl compositionImpl) {
        synchronized (this.f8083c) {
            if (this.f8085f.remove(compositionImpl)) {
                this.g = null;
            }
            this.f8087i.n(compositionImpl);
            this.f8088j.remove(compositionImpl);
        }
    }
}
