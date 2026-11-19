package androidx.navigationevent;

import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.OrderedScatterSetKt;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigationevent/NavigationEventProcessor;", "", "<init>", "()V", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NavigationEventProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f18476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StateFlow f18477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableStateFlow f18478c;
    public final StateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayDeque f18479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque f18480f;
    public NavigationEventHandler g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18481h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public NavigationEventInput f18482i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableOrderedScatterSet f18483j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableOrderedScatterSet f18484k;
    public final MutableOrderedScatterSet l;
    public boolean m;
    public boolean n;
    public boolean o;

    public NavigationEventProcessor() {
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(NavigationEventTransitionState.Idle.f18485a);
        this.f18476a = mutableStateFlowA;
        this.f18477b = FlowKt.b(mutableStateFlowA);
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(new NavigationEventHistory());
        this.f18478c = mutableStateFlowA2;
        this.d = FlowKt.b(mutableStateFlowA2);
        this.f18479e = new ArrayDeque();
        this.f18480f = new ArrayDeque();
        this.f18483j = OrderedScatterSetKt.a();
        this.f18484k = OrderedScatterSetKt.a();
        this.l = OrderedScatterSetKt.a();
    }

    public final void a(NavigationEventDispatcher navigationEventDispatcher, NavigationEventInput navigationEventInput, int i2) {
        MutableOrderedScatterSet mutableOrderedScatterSet;
        boolean z;
        navigationEventDispatcher.getClass();
        if (navigationEventInput.f18474a != null) {
            StringBuilder sb = new StringBuilder("Input '");
            sb.append(navigationEventInput);
            NavigationEventDispatcher navigationEventDispatcher2 = navigationEventInput.f18474a;
            sb.append("' is already added to dispatcher ");
            sb.append(navigationEventDispatcher2);
            sb.append(JwtParser.SEPARATOR_CHAR);
            throw new IllegalArgumentException(sb.toString().toString());
        }
        if (i2 != 0) {
            mutableOrderedScatterSet = i2 != 1 ? this.f18483j : this.f18484k;
        } else {
            mutableOrderedScatterSet = this.l;
        }
        mutableOrderedScatterSet.h(navigationEventInput);
        navigationEventInput.f18474a = navigationEventDispatcher;
        ((NavigationEventHistory) this.d.getValue()).getClass();
        if (i2 != 0) {
            z = i2 != 1 ? this.o : this.m;
        } else {
            z = this.n;
        }
        navigationEventInput.b(z);
    }

    public final void b() {
        boolean z;
        boolean z2;
        ArrayDeque arrayDeque = this.f18479e;
        if (arrayDeque == null || !arrayDeque.isEmpty()) {
            Iterator<E> it = arrayDeque.iterator();
            while (true) {
                if (it.hasNext()) {
                    NavigationEventHandler navigationEventHandler = (NavigationEventHandler) it.next();
                    if (navigationEventHandler.a() || navigationEventHandler.b()) {
                        z = true;
                    }
                } else {
                    z = false;
                }
            }
        } else {
            z = false;
        }
        ArrayDeque arrayDeque2 = this.f18480f;
        if (arrayDeque2 == null || !arrayDeque2.isEmpty()) {
            Iterator<E> it2 = arrayDeque2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    NavigationEventHandler navigationEventHandler2 = (NavigationEventHandler) it2.next();
                    if (navigationEventHandler2.a() || navigationEventHandler2.b()) {
                        z2 = true;
                    }
                } else {
                    z2 = false;
                }
            }
        } else {
            z2 = false;
        }
        boolean z3 = z || z2;
        boolean z4 = this.n != z;
        boolean z5 = this.m != z2;
        boolean z6 = this.o != z3;
        if (z4) {
            MutableOrderedScatterSet mutableOrderedScatterSet = this.l;
            Object[] objArr = mutableOrderedScatterSet.f3351b;
            long[] jArr = mutableOrderedScatterSet.f3352c;
            int i2 = mutableOrderedScatterSet.f3353e;
            while (i2 != Integer.MAX_VALUE) {
                int i3 = (int) ((jArr[i2] >> 31) & 2147483647L);
                ((NavigationEventInput) objArr[i2]).b(z);
                i2 = i3;
            }
        }
        if (z5) {
            MutableOrderedScatterSet mutableOrderedScatterSet2 = this.f18484k;
            Object[] objArr2 = mutableOrderedScatterSet2.f3351b;
            long[] jArr2 = mutableOrderedScatterSet2.f3352c;
            int i4 = mutableOrderedScatterSet2.f3353e;
            while (i4 != Integer.MAX_VALUE) {
                int i5 = (int) ((jArr2[i4] >> 31) & 2147483647L);
                ((NavigationEventInput) objArr2[i4]).b(z2);
                i4 = i5;
            }
        }
        if (z6) {
            MutableOrderedScatterSet mutableOrderedScatterSet3 = this.f18483j;
            Object[] objArr3 = mutableOrderedScatterSet3.f3351b;
            long[] jArr3 = mutableOrderedScatterSet3.f3352c;
            int i6 = mutableOrderedScatterSet3.f3353e;
            while (i6 != Integer.MAX_VALUE) {
                int i7 = (int) ((jArr3[i6] >> 31) & 2147483647L);
                ((NavigationEventInput) objArr3[i6]).b(z3);
                i6 = i7;
            }
        }
        this.n = z;
        this.m = z2;
        this.o = z3;
        NavigationEventHandler navigationEventHandlerC = this.g;
        if (navigationEventHandlerC == null) {
            navigationEventHandlerC = c(0);
        }
        d(navigationEventHandlerC);
    }

    public final NavigationEventHandler c(int i2) {
        Object next;
        Object next2;
        NavigationEventHandler navigationEventHandler;
        Object next3;
        ArrayDeque arrayDeque = this.f18480f;
        ArrayDeque arrayDeque2 = this.f18479e;
        Object obj = null;
        if (i2 == -1) {
            Iterator<E> it = arrayDeque2.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((NavigationEventHandler) next).a());
            NavigationEventHandler navigationEventHandler2 = (NavigationEventHandler) next;
            if (navigationEventHandler2 != null) {
                return navigationEventHandler2;
            }
            for (Object obj2 : arrayDeque) {
                if (((NavigationEventHandler) obj2).a()) {
                    obj = obj2;
                    break;
                }
            }
            return (NavigationEventHandler) obj;
        }
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException(("Unsupported direction: '" + i2 + "'.").toString());
            }
            Iterator<E> it2 = arrayDeque2.iterator();
            do {
                if (!it2.hasNext()) {
                    next3 = null;
                    break;
                }
                next3 = it2.next();
            } while (!((NavigationEventHandler) next3).b());
            NavigationEventHandler navigationEventHandler3 = (NavigationEventHandler) next3;
            if (navigationEventHandler3 != null) {
                return navigationEventHandler3;
            }
            for (Object obj3 : arrayDeque) {
                if (((NavigationEventHandler) obj3).b()) {
                    obj = obj3;
                    break;
                }
            }
            return (NavigationEventHandler) obj;
        }
        Iterator<E> it3 = arrayDeque2.iterator();
        do {
            if (!it3.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it3.next();
            navigationEventHandler = (NavigationEventHandler) next2;
            if (navigationEventHandler.a()) {
                break;
            }
        } while (!navigationEventHandler.b());
        NavigationEventHandler navigationEventHandler4 = (NavigationEventHandler) next2;
        if (navigationEventHandler4 != null) {
            return navigationEventHandler4;
        }
        for (Object obj4 : arrayDeque) {
            NavigationEventHandler navigationEventHandler5 = (NavigationEventHandler) obj4;
            if (navigationEventHandler5.a() || navigationEventHandler5.b()) {
                obj = obj4;
                break;
            }
        }
        return (NavigationEventHandler) obj;
    }

    public final void d(NavigationEventHandler navigationEventHandler) {
        NavigationEventHistory navigationEventHistory;
        NavigationEventHandler navigationEventHandlerC = this.g;
        if (navigationEventHandlerC == null) {
            navigationEventHandlerC = c(0);
        }
        if (Intrinsics.c(navigationEventHandlerC, navigationEventHandler)) {
            if (navigationEventHandlerC == null) {
                navigationEventHistory = new NavigationEventHistory();
            } else {
                ArrayList arrayList = new ArrayList();
                for (NavigationEventHandler navigationEventHandler2 : this.f18479e) {
                    if (navigationEventHandler2.a() && !navigationEventHandler2.f18466b.isEmpty()) {
                        arrayList.addAll(navigationEventHandler2.f18466b);
                    }
                }
                for (NavigationEventHandler navigationEventHandler3 : this.f18480f) {
                    if (navigationEventHandler3.a() && !navigationEventHandler3.f18466b.isEmpty()) {
                        arrayList.addAll(navigationEventHandler3.f18466b);
                    }
                }
                navigationEventHistory = new NavigationEventHistory(navigationEventHandlerC.f18465a, arrayList, navigationEventHandlerC.f18467c);
            }
            MutableStateFlow mutableStateFlow = this.f18478c;
            if (Intrinsics.c((NavigationEventHistory) mutableStateFlow.getValue(), navigationEventHistory)) {
                return;
            }
            mutableStateFlow.setValue(navigationEventHistory);
            MutableOrderedScatterSet mutableOrderedScatterSet = this.l;
            Object[] objArr = mutableOrderedScatterSet.f3351b;
            long[] jArr = mutableOrderedScatterSet.f3352c;
            int i2 = mutableOrderedScatterSet.f3353e;
            while (i2 != Integer.MAX_VALUE) {
                int i3 = (int) (2147483647L & (jArr[i2] >> 31));
                ((NavigationEventInput) objArr[i2]).getClass();
                i2 = i3;
            }
            MutableOrderedScatterSet mutableOrderedScatterSet2 = this.f18484k;
            Object[] objArr2 = mutableOrderedScatterSet2.f3351b;
            long[] jArr2 = mutableOrderedScatterSet2.f3352c;
            int i4 = mutableOrderedScatterSet2.f3353e;
            while (i4 != Integer.MAX_VALUE) {
                int i5 = (int) ((jArr2[i4] >> 31) & 2147483647L);
                ((NavigationEventInput) objArr2[i4]).getClass();
                i4 = i5;
            }
            MutableOrderedScatterSet mutableOrderedScatterSet3 = this.f18483j;
            Object[] objArr3 = mutableOrderedScatterSet3.f3351b;
            long[] jArr3 = mutableOrderedScatterSet3.f3352c;
            int i6 = mutableOrderedScatterSet3.f3353e;
            while (i6 != Integer.MAX_VALUE) {
                int i7 = (int) ((jArr3[i6] >> 31) & 2147483647L);
                ((NavigationEventInput) objArr3[i6]).getClass();
                i6 = i7;
            }
        }
    }
}
