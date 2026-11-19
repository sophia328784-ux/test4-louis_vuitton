package androidx.lifecycle;

import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.collection.MutableScatterMap;
import androidx.lifecycle.FastSafeIterableMap;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import defpackage.cj;
import defpackage.ct0;
import defpackage.fc;
import defpackage.md;
import defpackage.tg0;
import defpackage.zy0;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/lifecycle/LifecycleRegistry;", "Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/LifecycleOwner;", "provider", "<init>", "(Landroidx/lifecycle/LifecycleOwner;)V", "ObserverWithState", "Companion", "lifecycle-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class LifecycleRegistry extends Lifecycle {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Companion f13448k = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FastSafeIterableMap f13450c;
    public final WeakReference d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f13452f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f13453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Lifecycle.State f13454i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f13455j;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/LifecycleRegistry$Companion;", "", "lifecycle-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;", "", "Landroidx/lifecycle/LifecycleObserver;", "observer", "Landroidx/lifecycle/Lifecycle$State;", "initialState", "<init>", "(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V", "lifecycle-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ObserverWithState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Lifecycle.State f13456a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LifecycleEventObserver f13457b;

        public ObserverWithState(LifecycleObserver lifecycleObserver, Lifecycle.State state) {
            LifecycleEventObserver reflectiveGenericLifecycleObserver;
            state.getClass();
            this.f13456a = state;
            lifecycleObserver.getClass();
            HashMap map = Lifecycling.f13459a;
            boolean z = lifecycleObserver instanceof LifecycleEventObserver;
            boolean z2 = lifecycleObserver instanceof DefaultLifecycleObserver;
            if (z && z2) {
                reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) lifecycleObserver, (LifecycleEventObserver) lifecycleObserver);
            } else if (z2) {
                reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) lifecycleObserver, null);
            } else if (z) {
                reflectiveGenericLifecycleObserver = (LifecycleEventObserver) lifecycleObserver;
            } else {
                Class<?> cls = lifecycleObserver.getClass();
                if (Lifecycling.b(cls) == 2) {
                    Object obj = Lifecycling.f13460b.get(cls);
                    obj.getClass();
                    List list = (List) obj;
                    if (list.size() == 1) {
                        reflectiveGenericLifecycleObserver = new SingleGeneratedAdapterObserver(Lifecycling.a((Constructor) list.get(0), lifecycleObserver));
                    } else {
                        int size = list.size();
                        GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[size];
                        for (int i2 = 0; i2 < size; i2++) {
                            generatedAdapterArr[i2] = Lifecycling.a((Constructor) list.get(i2), lifecycleObserver);
                        }
                        reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(generatedAdapterArr);
                    }
                } else {
                    reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(lifecycleObserver);
                }
            }
            this.f13457b = reflectiveGenericLifecycleObserver;
        }

        public final void a(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State stateA = event.a();
            Lifecycle.State state = this.f13456a;
            if (stateA != null && stateA.compareTo(state) < 0) {
                state = stateA;
            }
            this.f13456a = state;
            this.f13457b.onStateChanged(lifecycleOwner, event);
            this.f13456a = stateA;
        }
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z) {
        this.f13449b = z;
        this.f13450c = new FastSafeIterableMap();
        this.d = new WeakReference(lifecycleOwner);
        this.f13453h = new ArrayList();
        Lifecycle.State state = Lifecycle.State.INITIALIZED;
        this.f13454i = state;
        this.f13455j = StateFlowKt.a(state);
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void a(LifecycleObserver lifecycleObserver) {
        Object obj;
        LifecycleOwner lifecycleOwner;
        lifecycleObserver.getClass();
        f("addObserver");
        Lifecycle.State state = this.f13454i;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ObserverWithState observerWithState = new ObserverWithState(lifecycleObserver, state2);
        FastSafeIterableMap fastSafeIterableMap = this.f13450c;
        fastSafeIterableMap.getClass();
        MutableScatterMap mutableScatterMap = fastSafeIterableMap.f13418a;
        FastSafeIterableMap.Entry entry = (FastSafeIterableMap.Entry) mutableScatterMap.e(lifecycleObserver);
        if (entry != null) {
            obj = entry.f13422c;
        } else {
            FastSafeIterableMap.Entry entry2 = new FastSafeIterableMap.Entry(lifecycleObserver, observerWithState);
            mutableScatterMap.o(lifecycleObserver, entry2);
            FastSafeIterableMap.Entry entry3 = fastSafeIterableMap.f13420c;
            if (entry3 == null) {
                fastSafeIterableMap.f13419b = entry2;
                fastSafeIterableMap.f13420c = entry2;
            } else {
                entry3.d = entry2;
                entry2.f13423e = entry3;
                fastSafeIterableMap.f13420c = entry2;
            }
            obj = null;
        }
        if (((ObserverWithState) obj) == null && (lifecycleOwner = (LifecycleOwner) this.d.f13537a.get()) != null) {
            boolean z = this.f13451e != 0 || this.f13452f;
            Lifecycle.State stateE = e(lifecycleObserver);
            this.f13451e++;
            while (observerWithState.f13456a.compareTo(stateE) < 0) {
                FastSafeIterableMap fastSafeIterableMap2 = this.f13450c;
                fastSafeIterableMap2.getClass();
                if (!fastSafeIterableMap2.f13418a.c(lifecycleObserver)) {
                    break;
                }
                Lifecycle.State state3 = observerWithState.f13456a;
                ArrayList arrayList = this.f13453h;
                arrayList.add(state3);
                Lifecycle.Event.Companion companion = Lifecycle.Event.INSTANCE;
                Lifecycle.State state4 = observerWithState.f13456a;
                companion.getClass();
                Lifecycle.Event eventB = Lifecycle.Event.Companion.b(state4);
                if (eventB == null) {
                    ct0.o(observerWithState.f13456a, "no event up from ");
                    return;
                } else {
                    observerWithState.a(lifecycleOwner, eventB);
                    CollectionsKt.d0(arrayList);
                    stateE = e(lifecycleObserver);
                }
            }
            if (!z) {
                j();
            }
            this.f13451e--;
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Lifecycle.State getF13454i() {
        return this.f13454i;
    }

    @Override // androidx.lifecycle.Lifecycle
    public final StateFlow c() {
        return FlowKt.b(this.f13455j);
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void d(LifecycleObserver lifecycleObserver) {
        lifecycleObserver.getClass();
        f("removeObserver");
        FastSafeIterableMap fastSafeIterableMap = this.f13450c;
        fastSafeIterableMap.getClass();
        lifecycleObserver.getClass();
        FastSafeIterableMap.Entry entry = (FastSafeIterableMap.Entry) fastSafeIterableMap.f13418a.m(lifecycleObserver);
        if (entry == null) {
            return;
        }
        FastSafeIterableMap.Entry entry2 = entry.f13423e;
        FastSafeIterableMap.Entry entry3 = entry.d;
        if (entry2 == null) {
            fastSafeIterableMap.f13419b = entry3;
        } else {
            entry2.d = entry3;
        }
        FastSafeIterableMap.Entry entry4 = entry.d;
        if (entry4 == null) {
            fastSafeIterableMap.f13420c = entry2;
        } else {
            entry4.f13423e = entry2;
        }
        entry.f13424f = true;
    }

    public final Lifecycle.State e(LifecycleObserver lifecycleObserver) {
        ObserverWithState observerWithState;
        FastSafeIterableMap fastSafeIterableMap = this.f13450c;
        fastSafeIterableMap.getClass();
        lifecycleObserver.getClass();
        FastSafeIterableMap.Entry entry = (FastSafeIterableMap.Entry) fastSafeIterableMap.f13418a.e(lifecycleObserver);
        FastSafeIterableMap.Entry entry2 = entry != null ? entry.f13423e : null;
        Lifecycle.State state = (entry2 == null || (observerWithState = (ObserverWithState) entry2.f13422c) == null) ? null : observerWithState.f13456a;
        ArrayList arrayList = this.f13453h;
        Lifecycle.State state2 = arrayList.isEmpty() ? null : (Lifecycle.State) cj.c(1, arrayList);
        Lifecycle.State state3 = this.f13454i;
        if (state == null || state.compareTo(state3) >= 0) {
            state = state3;
        }
        return (state2 == null || state2.compareTo(state) >= 0) ? state : state2;
    }

    public final void f(String str) {
        if (this.f13449b) {
            ArchTaskExecutor.a().f1353a.getClass();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                return;
            }
            tg0.c(fc.h("Method ", str, " must be called on the main thread"));
        }
    }

    public final void g(Lifecycle.Event event) {
        event.getClass();
        f("handleLifecycleEvent");
        h(event.a());
    }

    public final void h(Lifecycle.State state) {
        if (this.f13454i == state) {
            return;
        }
        LifecycleOwner lifecycleOwner = (LifecycleOwner) this.d.f13537a.get();
        Lifecycle.State state2 = this.f13454i;
        if (state2 == Lifecycle.State.INITIALIZED && state == Lifecycle.State.DESTROYED) {
            throw new IllegalStateException(("State must be at least '" + Lifecycle.State.CREATED + "' to be moved to '" + state + "' in component " + lifecycleOwner).toString());
        }
        Lifecycle.State state3 = Lifecycle.State.DESTROYED;
        if (state2 == state3 && state2 != state) {
            throw new IllegalStateException(("State is '" + state3 + "' and cannot be moved to `" + state + "` in component " + lifecycleOwner).toString());
        }
        this.f13454i = state;
        if (this.f13452f || this.f13451e != 0) {
            this.g = true;
            return;
        }
        this.f13452f = true;
        j();
        this.f13452f = false;
        if (this.f13454i == state3) {
            this.f13450c = new FastSafeIterableMap();
        }
    }

    public final void i(Lifecycle.State state) {
        state.getClass();
        f("setCurrentState");
        h(state);
    }

    public final void j() {
        Object obj = this.d.f13537a.get();
        if (obj == null) {
            md.k("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
            return;
        }
        final LifecycleOwner lifecycleOwner = (LifecycleOwner) obj;
        while (true) {
            FastSafeIterableMap fastSafeIterableMap = this.f13450c;
            final int i2 = 0;
            if (fastSafeIterableMap.f13418a.f3364e == 0) {
                break;
            }
            FastSafeIterableMap.Entry entry = fastSafeIterableMap.f13419b;
            if (entry == null) {
                zy0.c("Collection is empty.");
                return;
            }
            Object obj2 = entry.f13422c;
            Lifecycle.State state = ((ObserverWithState) obj2).f13456a;
            FastSafeIterableMap.Entry entry2 = fastSafeIterableMap.f13420c;
            if (entry2 == null) {
                zy0.c("Collection is empty.");
                return;
            }
            Lifecycle.State state2 = ((ObserverWithState) entry2.f13422c).f13456a;
            if (state == state2 && this.f13454i == state2) {
                break;
            }
            this.g = false;
            Lifecycle.State state3 = this.f13454i;
            if (entry == null) {
                zy0.c("Collection is empty.");
                return;
            }
            if (state3.compareTo(((ObserverWithState) obj2).f13456a) < 0) {
                FastSafeIterableMap fastSafeIterableMap2 = this.f13450c;
                Function1 function1 = new Function1(this) { // from class: q90

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ LifecycleRegistry f79052c;

                    {
                        this.f79052c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        int i3 = i2;
                        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
                        LifecycleRegistry lifecycleRegistry = this.f79052c;
                        Map.Entry entry3 = (Map.Entry) obj3;
                        switch (i3) {
                            case 0:
                                LifecycleRegistry.Companion companion = LifecycleRegistry.f13448k;
                                entry3.getClass();
                                LifecycleObserver lifecycleObserver = (LifecycleObserver) entry3.getKey();
                                LifecycleRegistry.ObserverWithState observerWithState = (LifecycleRegistry.ObserverWithState) entry3.getValue();
                                while (true) {
                                    Lifecycle.State state4 = observerWithState.f13456a;
                                    Lifecycle.State state5 = lifecycleRegistry.f13454i;
                                    ArrayList arrayList = lifecycleRegistry.f13453h;
                                    if (state4.compareTo(state5) > 0 && !lifecycleRegistry.g) {
                                        FastSafeIterableMap fastSafeIterableMap3 = lifecycleRegistry.f13450c;
                                        fastSafeIterableMap3.getClass();
                                        lifecycleObserver.getClass();
                                        if (fastSafeIterableMap3.f13418a.c(lifecycleObserver)) {
                                            Lifecycle.Event.Companion companion2 = Lifecycle.Event.INSTANCE;
                                            Lifecycle.State state6 = observerWithState.f13456a;
                                            companion2.getClass();
                                            Lifecycle.Event eventA = Lifecycle.Event.Companion.a(state6);
                                            if (eventA == null) {
                                                tg0.d(observerWithState.f13456a, "no event down from ");
                                                return null;
                                            }
                                            arrayList.add(eventA.a());
                                            observerWithState.a(lifecycleOwner2, eventA);
                                            CollectionsKt.d0(arrayList);
                                        }
                                    }
                                }
                                return Unit.f71739a;
                            default:
                                LifecycleRegistry.Companion companion3 = LifecycleRegistry.f13448k;
                                entry3.getClass();
                                LifecycleObserver lifecycleObserver2 = (LifecycleObserver) entry3.getKey();
                                LifecycleRegistry.ObserverWithState observerWithState2 = (LifecycleRegistry.ObserverWithState) entry3.getValue();
                                while (true) {
                                    Lifecycle.State state7 = observerWithState2.f13456a;
                                    Lifecycle.State state8 = lifecycleRegistry.f13454i;
                                    ArrayList arrayList2 = lifecycleRegistry.f13453h;
                                    if (state7.compareTo(state8) < 0 && !lifecycleRegistry.g) {
                                        FastSafeIterableMap fastSafeIterableMap4 = lifecycleRegistry.f13450c;
                                        fastSafeIterableMap4.getClass();
                                        lifecycleObserver2.getClass();
                                        if (fastSafeIterableMap4.f13418a.c(lifecycleObserver2)) {
                                            arrayList2.add(observerWithState2.f13456a);
                                            Lifecycle.Event.Companion companion4 = Lifecycle.Event.INSTANCE;
                                            Lifecycle.State state9 = observerWithState2.f13456a;
                                            companion4.getClass();
                                            Lifecycle.Event eventB = Lifecycle.Event.Companion.b(state9);
                                            if (eventB == null) {
                                                tg0.d(observerWithState2.f13456a, "no event up from ");
                                                return null;
                                            }
                                            observerWithState2.a(lifecycleOwner2, eventB);
                                            CollectionsKt.d0(arrayList2);
                                        }
                                    }
                                }
                                return Unit.f71739a;
                        }
                    }
                };
                fastSafeIterableMap2.getClass();
                for (FastSafeIterableMap.Entry entry3 = fastSafeIterableMap2.f13420c; entry3 != null; entry3 = entry3.f13423e) {
                    if (!entry3.f13424f) {
                        function1.invoke(entry3);
                    }
                }
            }
            FastSafeIterableMap.Entry entry4 = this.f13450c.f13420c;
            if (!this.g && entry4 != null && this.f13454i.compareTo(((ObserverWithState) entry4.f13422c).f13456a) > 0) {
                FastSafeIterableMap fastSafeIterableMap3 = this.f13450c;
                final int i3 = 1;
                Function1 function2 = new Function1(this) { // from class: q90

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ LifecycleRegistry f79052c;

                    {
                        this.f79052c = this;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        int i4 = i3;
                        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
                        LifecycleRegistry lifecycleRegistry = this.f79052c;
                        Map.Entry entry5 = (Map.Entry) obj3;
                        switch (i4) {
                            case 0:
                                LifecycleRegistry.Companion companion = LifecycleRegistry.f13448k;
                                entry5.getClass();
                                LifecycleObserver lifecycleObserver = (LifecycleObserver) entry5.getKey();
                                LifecycleRegistry.ObserverWithState observerWithState = (LifecycleRegistry.ObserverWithState) entry5.getValue();
                                while (true) {
                                    Lifecycle.State state4 = observerWithState.f13456a;
                                    Lifecycle.State state5 = lifecycleRegistry.f13454i;
                                    ArrayList arrayList = lifecycleRegistry.f13453h;
                                    if (state4.compareTo(state5) > 0 && !lifecycleRegistry.g) {
                                        FastSafeIterableMap fastSafeIterableMap4 = lifecycleRegistry.f13450c;
                                        fastSafeIterableMap4.getClass();
                                        lifecycleObserver.getClass();
                                        if (fastSafeIterableMap4.f13418a.c(lifecycleObserver)) {
                                            Lifecycle.Event.Companion companion2 = Lifecycle.Event.INSTANCE;
                                            Lifecycle.State state6 = observerWithState.f13456a;
                                            companion2.getClass();
                                            Lifecycle.Event eventA = Lifecycle.Event.Companion.a(state6);
                                            if (eventA == null) {
                                                tg0.d(observerWithState.f13456a, "no event down from ");
                                                return null;
                                            }
                                            arrayList.add(eventA.a());
                                            observerWithState.a(lifecycleOwner2, eventA);
                                            CollectionsKt.d0(arrayList);
                                        }
                                    }
                                }
                                return Unit.f71739a;
                            default:
                                LifecycleRegistry.Companion companion3 = LifecycleRegistry.f13448k;
                                entry5.getClass();
                                LifecycleObserver lifecycleObserver2 = (LifecycleObserver) entry5.getKey();
                                LifecycleRegistry.ObserverWithState observerWithState2 = (LifecycleRegistry.ObserverWithState) entry5.getValue();
                                while (true) {
                                    Lifecycle.State state7 = observerWithState2.f13456a;
                                    Lifecycle.State state8 = lifecycleRegistry.f13454i;
                                    ArrayList arrayList2 = lifecycleRegistry.f13453h;
                                    if (state7.compareTo(state8) < 0 && !lifecycleRegistry.g) {
                                        FastSafeIterableMap fastSafeIterableMap5 = lifecycleRegistry.f13450c;
                                        fastSafeIterableMap5.getClass();
                                        lifecycleObserver2.getClass();
                                        if (fastSafeIterableMap5.f13418a.c(lifecycleObserver2)) {
                                            arrayList2.add(observerWithState2.f13456a);
                                            Lifecycle.Event.Companion companion4 = Lifecycle.Event.INSTANCE;
                                            Lifecycle.State state9 = observerWithState2.f13456a;
                                            companion4.getClass();
                                            Lifecycle.Event eventB = Lifecycle.Event.Companion.b(state9);
                                            if (eventB == null) {
                                                tg0.d(observerWithState2.f13456a, "no event up from ");
                                                return null;
                                            }
                                            observerWithState2.a(lifecycleOwner2, eventB);
                                            CollectionsKt.d0(arrayList2);
                                        }
                                    }
                                }
                                return Unit.f71739a;
                        }
                    }
                };
                fastSafeIterableMap3.getClass();
                for (FastSafeIterableMap.Entry entry5 = fastSafeIterableMap3.f13419b; entry5 != null; entry5 = entry5.d) {
                    if (!entry5.f13424f) {
                        function2.invoke(entry5);
                    }
                }
            }
        }
        this.g = false;
        this.f13455j.setValue(this.f13454i);
    }

    public /* synthetic */ LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(lifecycleOwner, z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LifecycleRegistry(LifecycleOwner lifecycleOwner) {
        this(lifecycleOwner, true);
        lifecycleOwner.getClass();
    }
}
