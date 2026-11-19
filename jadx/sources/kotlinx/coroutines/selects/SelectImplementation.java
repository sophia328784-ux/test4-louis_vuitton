package kotlinx.coroutines.selects;

import defpackage.cj;
import defpackage.ct0;
import defpackage.md;
import defpackage.mt;
import defpackage.o91;
import defpackage.tg0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0011\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004:\u0001\fB\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/selects/SelectImplementation;", "R", "Lkotlinx/coroutines/CancelHandler;", "Lkotlinx/coroutines/selects/SelectBuilder;", "Lkotlinx/coroutines/selects/SelectInstanceInternal;", "Lkotlin/coroutines/CoroutineContext;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", "Lkotlinx/atomicfu/AtomicRef;", "", "state", "ClauseData", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class SelectImplementation<R> implements CancelHandler, SelectBuilder<R>, SelectInstanceInternal<R> {
    public static final /* synthetic */ AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state$volatile");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ long f75185h = o91.f76733a.objectFieldOffset(SelectImplementation.class.getDeclaredField("state$volatile"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineContext f75186b;
    public Object d;
    private volatile /* synthetic */ Object state$volatile = SelectKt.f75200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList f75187c = new ArrayList(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f75188e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f75189f = SelectKt.f75202e;

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0080\u0004\u0018\u00002\u00020\u0001BÆ\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012U\u0010\u000b\u001aQ\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0002\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0006¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0003j\u0002`\n\u0012U\u0010\u000e\u001aQ\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0002\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003j\u0002`\r\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u000f\u001a\u00020\u0001\u0012u\u0010\u0014\u001aq\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0006¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0010\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\t0\u0003\u0018\u00010\u0003j\u0004\u0018\u0001`\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;", "", "clauseObject", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "param", "", "Lkotlinx/coroutines/selects/RegistrationFunction;", "regFunc", "clauseResult", "Lkotlinx/coroutines/selects/ProcessResultFunction;", "processResFunc", "block", "internalResult", "", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/selects/OnCancellationConstructor;", "onCancellationConstructor", "<init>", "(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class ClauseData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f75190a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function3 f75191b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function3 f75192c;
        public final Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Object f75193e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Function3 f75194f;
        public Object g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f75195h = -1;

        public ClauseData(Object obj, Function3<Object, ? super SelectInstance<?>, Object, Unit> function3, Function3<Object, Object, Object, ? extends Object> function4, Object obj2, Object obj3, Function3<? super SelectInstance<?>, Object, Object, ? extends Function3<? super Throwable, Object, ? super CoroutineContext, Unit>> function5) {
            this.f75190a = obj;
            this.f75191b = function3;
            this.f75192c = function4;
            this.d = obj2;
            this.f75193e = obj3;
            this.f75194f = function5;
        }

        public final void a() {
            Object obj = this.g;
            if (obj instanceof Segment) {
                ((Segment) obj).m(SelectImplementation.this.f75186b, this.f75195h);
                return;
            }
            DisposableHandle disposableHandle = obj instanceof DisposableHandle ? (DisposableHandle) obj : null;
            if (disposableHandle != null) {
                disposableHandle.dispose();
            }
        }
    }

    public SelectImplementation(CoroutineContext coroutineContext) {
        this.f75186b = coroutineContext;
    }

    @Override // kotlinx.coroutines.CancelHandler
    public final void a(Throwable th) {
        SelectImplementation<R> selectImplementation;
        while (true) {
            g.getClass();
            Unsafe unsafe = o91.f76733a;
            long j2 = f75185h;
            Object objectVolatile = unsafe.getObjectVolatile(this, j2);
            if (objectVolatile == SelectKt.f75201c) {
                return;
            }
            Symbol symbol = SelectKt.d;
            while (true) {
                Unsafe unsafe2 = o91.f76733a;
                selectImplementation = this;
                if (unsafe2.compareAndSwapObject(selectImplementation, f75185h, objectVolatile, symbol)) {
                    ArrayList arrayList = selectImplementation.f75187c;
                    if (arrayList == null) {
                        return;
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((ClauseData) it.next()).a();
                    }
                    selectImplementation.f75189f = SelectKt.f75202e;
                    selectImplementation.f75187c = null;
                    return;
                }
                if (unsafe2.getObjectVolatile(selectImplementation, j2) != objectVolatile) {
                    break;
                } else {
                    this = selectImplementation;
                }
            }
            this = selectImplementation;
        }
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public final void b(Object obj) {
        this.f75189f = obj;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public final void c(DisposableHandle disposableHandle) {
        this.d = disposableHandle;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public final boolean d(Object obj, Object obj2) {
        return k(obj, obj2) == 0;
    }

    public final void e(ClauseData clauseData) {
        ArrayList<ClauseData> arrayList = this.f75187c;
        if (arrayList == null) {
            return;
        }
        for (ClauseData clauseData2 : arrayList) {
            if (clauseData2 != clauseData) {
                clauseData2.a();
            }
        }
        Symbol symbol = SelectKt.f75201c;
        g.getClass();
        o91.f76733a.putObjectVolatile(this, f75185h, symbol);
        this.f75189f = SelectKt.f75202e;
        this.f75187c = null;
    }

    public final Object f(ContinuationImpl continuationImpl) {
        g.getClass();
        Object objectVolatile = o91.f76733a.getObjectVolatile(this, f75185h);
        objectVolatile.getClass();
        ClauseData clauseData = (ClauseData) objectVolatile;
        Object obj = this.f75189f;
        e(clauseData);
        Function3 function3 = clauseData.f75192c;
        Object obj2 = clauseData.f75190a;
        Object obj3 = clauseData.d;
        Object objA = function3.A(obj2, obj3, obj);
        Object obj4 = clauseData.f75193e;
        if (obj3 == SelectKt.f75203f) {
            obj4.getClass();
            return ((Function1) obj4).invoke(continuationImpl);
        }
        obj4.getClass();
        return ((Function2) obj4).invoke(objA, continuationImpl);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(ContinuationImpl continuationImpl) {
        SelectImplementation$doSelectSuspend$1 selectImplementation$doSelectSuspend$1;
        if (continuationImpl instanceof SelectImplementation$doSelectSuspend$1) {
            selectImplementation$doSelectSuspend$1 = (SelectImplementation$doSelectSuspend$1) continuationImpl;
            int i2 = selectImplementation$doSelectSuspend$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                selectImplementation$doSelectSuspend$1.d = i2 - Integer.MIN_VALUE;
            } else {
                selectImplementation$doSelectSuspend$1 = new SelectImplementation$doSelectSuspend$1(this, continuationImpl);
            }
        } else {
            selectImplementation$doSelectSuspend$1 = new SelectImplementation$doSelectSuspend$1(this, continuationImpl);
        }
        Object obj = selectImplementation$doSelectSuspend$1.f75197b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = selectImplementation$doSelectSuspend$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            selectImplementation$doSelectSuspend$1.d = 1;
            if (l(selectImplementation$doSelectSuspend$1) != coroutineSingletons) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        selectImplementation$doSelectSuspend$1.d = 2;
        Object objF = f(selectImplementation$doSelectSuspend$1);
        return objF == coroutineSingletons ? coroutineSingletons : objF;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    /* JADX INFO: renamed from: getContext, reason: from getter */
    public final CoroutineContext getF75186b() {
        return this.f75186b;
    }

    public final ClauseData h(Object obj) {
        Object next;
        ArrayList arrayList = this.f75187c;
        if (arrayList == null) {
            return null;
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((ClauseData) next).f75190a != obj);
        ClauseData clauseData = (ClauseData) next;
        if (clauseData != null) {
            return clauseData;
        }
        ct0.q("Clause with object ", obj, " is not found");
        return null;
    }

    public final boolean i() {
        g.getClass();
        return o91.f76733a.getObjectVolatile(this, f75185h) instanceof ClauseData;
    }

    @Override // kotlinx.coroutines.Waiter
    public final void invokeOnCancellation(Segment segment, int i2) {
        this.d = segment;
        this.f75188e = i2;
    }

    public final void j(ClauseData clauseData, boolean z) {
        Object obj = clauseData.f75190a;
        g.getClass();
        Unsafe unsafe = o91.f76733a;
        long j2 = f75185h;
        if (unsafe.getObjectVolatile(this, j2) instanceof ClauseData) {
            return;
        }
        if (!z) {
            ArrayList arrayList = this.f75187c;
            arrayList.getClass();
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((ClauseData) it.next()).f75190a == obj) {
                        tg0.c(cj.i(obj, "Cannot use select clauses on the same object: "));
                        return;
                    }
                }
            }
        }
        clauseData.f75191b.A(obj, this, clauseData.d);
        if (this.f75189f != SelectKt.f75202e) {
            o91.f76733a.putObjectVolatile(this, j2, clauseData);
            return;
        }
        if (!z) {
            ArrayList arrayList2 = this.f75187c;
            arrayList2.getClass();
            arrayList2.add(clauseData);
        }
        clauseData.g = this.d;
        clauseData.f75195h = this.f75188e;
        this.d = null;
        this.f75188e = -1;
    }

    public final int k(Object obj, Object obj2) {
        SelectImplementation<R> selectImplementation;
        Unsafe unsafe;
        Unsafe unsafe2;
        while (true) {
            g.getClass();
            Unsafe unsafe3 = o91.f76733a;
            long j2 = f75185h;
            Object objectVolatile = unsafe3.getObjectVolatile(this, j2);
            if (objectVolatile instanceof CancellableContinuation) {
                ClauseData clauseDataH = this.h(obj);
                if (clauseDataH != null) {
                    Function3 function3 = clauseDataH.f75194f;
                    Function3 function4 = function3 != null ? (Function3) function3.A(this, clauseDataH.d, obj2) : null;
                    while (true) {
                        Unsafe unsafe4 = o91.f76733a;
                        selectImplementation = this;
                        if (unsafe4.compareAndSwapObject(selectImplementation, f75185h, objectVolatile, clauseDataH)) {
                            CancellableContinuation cancellableContinuation = (CancellableContinuation) objectVolatile;
                            selectImplementation.f75189f = obj2;
                            Function3 function5 = SelectKt.f75199a;
                            Object objTryResume = cancellableContinuation.tryResume(Unit.f71739a, null, function4);
                            if (objTryResume == null) {
                                selectImplementation.f75189f = SelectKt.f75202e;
                                return 2;
                            }
                            cancellableContinuation.completeResume(objTryResume);
                            return 0;
                        }
                        if (unsafe4.getObjectVolatile(selectImplementation, j2) != objectVolatile) {
                            break;
                        }
                        this = selectImplementation;
                    }
                } else {
                    continue;
                }
            } else {
                selectImplementation = this;
                if (Intrinsics.c(objectVolatile, SelectKt.f75201c) || (objectVolatile instanceof ClauseData)) {
                    return 3;
                }
                if (Intrinsics.c(objectVolatile, SelectKt.d)) {
                    return 2;
                }
                if (Intrinsics.c(objectVolatile, SelectKt.f75200b)) {
                    List listO = CollectionsKt.O(obj);
                    do {
                        unsafe2 = o91.f76733a;
                        if (unsafe2.compareAndSwapObject(selectImplementation, f75185h, objectVolatile, listO)) {
                            return 1;
                        }
                    } while (unsafe2.getObjectVolatile(selectImplementation, j2) == objectVolatile);
                } else {
                    if (!(objectVolatile instanceof List)) {
                        mt.f(objectVolatile, "Unexpected state: ");
                        return 0;
                    }
                    ArrayList arrayListX = CollectionsKt.X(obj, (Collection) objectVolatile);
                    do {
                        unsafe = o91.f76733a;
                        if (unsafe.compareAndSwapObject(selectImplementation, f75185h, objectVolatile, arrayListX)) {
                            return 1;
                        }
                    } while (unsafe.getObjectVolatile(selectImplementation, j2) == objectVolatile);
                }
            }
            this = selectImplementation;
        }
    }

    public final Object l(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl;
        Unsafe unsafe;
        CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl2.initCancellability();
        loop0: while (true) {
            g.getClass();
            Unsafe unsafe2 = o91.f76733a;
            long j2 = f75185h;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j2);
            CancellableContinuationImpl cancellableContinuationImpl3 = cancellableContinuationImpl2;
            Symbol symbol = SelectKt.f75200b;
            if (objectVolatile == symbol) {
                CancellableContinuationImpl cancellableContinuationImpl4 = cancellableContinuationImpl3;
                while (true) {
                    Unsafe unsafe3 = o91.f76733a;
                    cancellableContinuationImpl = cancellableContinuationImpl4;
                    if (unsafe3.compareAndSwapObject(this, f75185h, objectVolatile, cancellableContinuationImpl4)) {
                        CancellableContinuationKt.c(cancellableContinuationImpl, this);
                        break loop0;
                    }
                    if (unsafe3.getObjectVolatile(this, j2) != objectVolatile) {
                        break;
                    }
                    cancellableContinuationImpl4 = cancellableContinuationImpl;
                }
                cancellableContinuationImpl2 = cancellableContinuationImpl;
            } else {
                cancellableContinuationImpl = cancellableContinuationImpl3;
                if (!(objectVolatile instanceof List)) {
                    if (!(objectVolatile instanceof ClauseData)) {
                        mt.f(objectVolatile, "unexpected state: ");
                        return null;
                    }
                    Unit unit = Unit.f71739a;
                    ClauseData clauseData = (ClauseData) objectVolatile;
                    Object obj = this.f75189f;
                    Function3 function3 = clauseData.f75194f;
                    cancellableContinuationImpl.resume(unit, function3 != null ? (Function3) function3.A(this, clauseData.d, obj) : null);
                    break;
                }
                do {
                    unsafe = o91.f76733a;
                    if (unsafe.compareAndSwapObject(this, f75185h, objectVolatile, symbol)) {
                        Iterator it = ((Iterable) objectVolatile).iterator();
                        while (it.hasNext()) {
                            ClauseData clauseDataH = h(it.next());
                            clauseDataH.getClass();
                            clauseDataH.g = null;
                            clauseDataH.f75195h = -1;
                            j(clauseDataH, true);
                        }
                        break;
                    }
                } while (unsafe.getObjectVolatile(this, j2) == objectVolatile);
                cancellableContinuationImpl2 = cancellableContinuationImpl;
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.f71739a;
    }
}
