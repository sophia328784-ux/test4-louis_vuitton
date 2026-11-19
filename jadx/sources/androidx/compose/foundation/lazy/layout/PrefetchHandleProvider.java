package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.NestedPrefetchScopeImpl;
import androidx.compose.foundation.lazy.layout.k;
import androidx.compose.runtime.PausedComposition;
import androidx.compose.runtime.ShouldPauseCallback;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.PausedPrecompositionImpl;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import defpackage.o60;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.LongSaturatedMathKt;
import kotlin.time.MonotonicTimeSource;
import kotlin.time.TimeSource;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\nB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;", "", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;", "itemContentFactory", "Landroidx/compose/ui/layout/SubcomposeLayoutState;", "subcomposeLayoutState", "Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;", "executor", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V", "HandleAndRequestImpl", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PrefetchHandleProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyLayoutItemContentFactory f5544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SubcomposeLayoutState f5545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PrefetchScheduler f5546c;
    public boolean d = true;

    public PrefetchHandleProvider(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeLayoutState subcomposeLayoutState, PrefetchScheduler prefetchScheduler) {
        this.f5544a = lazyLayoutItemContentFactory;
        this.f5545b = subcomposeLayoutState;
        this.f5546c = prefetchScheduler;
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0083\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0013B<\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0019\u0010\r\u001a\u0015\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\u0002\b\f¢\u0006\u0004\b\u000e\u0010\u000fBF\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0019\u0010\r\u001a\u0015\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\u0002\b\f¢\u0006\u0004\b\u000e\u0010\u0012¨\u0006\u0014"}, d2 = {"Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;", "Landroidx/compose/foundation/lazy/layout/PrefetchRequest;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;", "", "index", "Landroidx/compose/foundation/lazy/layout/PrefetchMetrics;", "prefetchMetrics", "Landroidx/compose/foundation/lazy/layout/PriorityPrefetchScheduler;", "priorityPrefetchScheduler", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "onItemPremeasured", "<init>", "(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;ILandroidx/compose/foundation/lazy/layout/PrefetchMetrics;Landroidx/compose/foundation/lazy/layout/PriorityPrefetchScheduler;Lkotlin/jvm/functions/Function1;)V", "Landroidx/compose/ui/unit/Constraints;", CryptoServicesPermission.CONSTRAINTS, "(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;IJLandroidx/compose/foundation/lazy/layout/PrefetchMetrics;Landroidx/compose/foundation/lazy/layout/PriorityPrefetchScheduler;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "NestedPrefetchController", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class HandleAndRequestImpl implements LazyLayoutPrefetchState.PrefetchHandle, PrefetchRequest, LazyLayoutPrefetchState.PrefetchResultScope {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5547a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PrefetchMetrics f5548b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PriorityPrefetchScheduler f5549c;
        public final Function1 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Constraints f5550e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SubcomposeLayoutState.PrecomposedSlotHandle f5551f;
        public SubcomposeLayoutState.PausedPrecomposition g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f5552h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f5553i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f5554j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Object f5555k;
        public boolean l;
        public NestedPrefetchController m;
        public boolean n;
        public long o;
        public long p;
        public long q;
        public boolean r;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl$NestedPrefetchController;", "", "", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;", "states", "<init>", "(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;Ljava/util/List;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public final class NestedPrefetchController {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final List f5556a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final List[] f5557b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f5558c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f5559e;

            public NestedPrefetchController(List<LazyLayoutPrefetchState> list) {
                this.f5556a = list;
                this.f5557b = new List[list.size()];
                if (list.isEmpty()) {
                    InlineClassHelperKt.a("NestedPrefetchController shouldn't be created with no states");
                }
            }
        }

        public HandleAndRequestImpl(int i2, PrefetchMetrics prefetchMetrics, PriorityPrefetchScheduler priorityPrefetchScheduler, Function1<? super LazyLayoutPrefetchState.PrefetchResultScope, Unit> function1) {
            this.f5547a = i2;
            this.f5548b = prefetchMetrics;
            this.f5549c = priorityPrefetchScheduler;
            this.d = function1;
            TimeSource.Monotonic.f74589a.getClass();
            MonotonicTimeSource.f74587a.getClass();
            this.q = MonotonicTimeSource.b();
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchResultScope
        public final long a(int i2) {
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.f5551f;
            if (precomposedSlotHandle != null) {
                return precomposedSlotHandle.a(i2);
            }
            IntSize.f11020b.getClass();
            return 0L;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchResultScope
        public final int b() {
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.f5551f;
            if (precomposedSlotHandle != null) {
                return precomposedSlotHandle.b();
            }
            return 0;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
        public final void c() {
            this.n = true;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
        public final void cancel() {
            if (this.f5553i) {
                return;
            }
            this.f5553i = true;
            e();
        }

        @Override // androidx.compose.foundation.lazy.layout.PrefetchRequest
        public final boolean d(PrefetchRequestScope prefetchRequestScope) {
            boolean zF;
            if (!PrefetchHandleProvider.this.d) {
                return false;
            }
            if (this.n) {
                Trace.beginSection("compose:lazy:prefetch:execute:urgent");
                try {
                    zF = f(prefetchRequestScope);
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } else {
                zF = f(prefetchRequestScope);
            }
            Trace.setCounter("compose:lazy:prefetch:execute:item", -1L);
            return zF;
        }

        public final void e() {
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition = this.g;
            if (pausedPrecomposition != null) {
                pausedPrecomposition.cancel();
            }
            this.g = null;
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.f5551f;
            if (precomposedSlotHandle != null) {
                precomposedSlotHandle.dispose();
            }
            this.f5551f = null;
            this.m = null;
        }

        /* JADX WARN: Code duplicated, block: B:108:0x01e7  */
        /* JADX WARN: Code duplicated, block: B:72:0x0145  */
        public final boolean f(PrefetchRequestScope prefetchRequestScope) {
            Constraints constraints;
            boolean z;
            List list;
            int i2 = this.f5547a;
            long j2 = i2;
            Trace.setCounter("compose:lazy:prefetch:execute:item", j2);
            LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) PrefetchHandleProvider.this.f5544a.f5476b.mo47invoke();
            if (!this.f5553i) {
                int iB = lazyLayoutItemProvider.b();
                if (i2 >= 0 && i2 < iB) {
                    Object objD = lazyLayoutItemProvider.d(i2);
                    Object obj = this.f5555k;
                    if (obj != null && !objD.equals(obj)) {
                        e();
                        return false;
                    }
                    Object objF = lazyLayoutItemProvider.f(i2);
                    PrefetchMetrics prefetchMetrics = this.f5548b;
                    Averages averages = prefetchMetrics.f5563c;
                    if (prefetchMetrics.f5562b != objF || averages == null) {
                        MutableScatterMap mutableScatterMap = prefetchMetrics.f5561a;
                        Object objE = mutableScatterMap.e(objF);
                        if (objE == null) {
                            objE = new Averages();
                            mutableScatterMap.o(objF, objE);
                        }
                        averages = (Averages) objE;
                        prefetchMetrics.f5562b = objF;
                        prefetchMetrics.f5563c = averages;
                    }
                    g();
                    long jA = prefetchRequestScope.a();
                    this.o = jA;
                    TimeSource.Monotonic.f74589a.getClass();
                    MonotonicTimeSource.f74587a.getClass();
                    this.q = MonotonicTimeSource.b();
                    this.p = 0L;
                    Trace.setCounter("compose:lazy:prefetch:available_time_nanos", jA);
                    if (!g()) {
                        if (i(this.o, averages.f5385a + averages.f5386b)) {
                            Trace.beginSection("compose:lazy:prefetch:compose");
                            try {
                                h(objD, objF, averages);
                                Trace.endSection();
                            } catch (Throwable th) {
                                Trace.endSection();
                                throw th;
                            }
                        }
                        if (!g()) {
                            return true;
                        }
                    }
                    if (this.g != null) {
                        if (!i(this.o, averages.f5387c)) {
                            return true;
                        }
                        Trace.beginSection("compose:lazy:prefetch:apply");
                        try {
                            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition = this.g;
                            if (pausedPrecomposition == null) {
                                throw new IllegalArgumentException("Nothing to apply!");
                            }
                            this.f5551f = pausedPrecomposition.apply();
                            this.g = null;
                            this.f5554j = true;
                            Trace.endSection();
                            j();
                            averages.f5387c = Averages.a(this.p, averages.f5387c);
                        } catch (Throwable th2) {
                            Trace.endSection();
                            throw th2;
                        }
                    }
                    int i3 = 3;
                    if (!this.l) {
                        if (this.o <= r11) {
                            return true;
                        }
                        Trace.beginSection("compose:lazy:prefetch:resolve-nested");
                        try {
                            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.f5551f;
                            if (precomposedSlotHandle == null) {
                                throw o60.u("Should precompose before resolving nested prefetch states");
                            }
                            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                            precomposedSlotHandle.c(new a(ref$ObjectRef, i3));
                            List list2 = (List) ref$ObjectRef.f71921b;
                            this.m = list2 != null ? new NestedPrefetchController(list2) : null;
                            this.l = true;
                            Trace.endSection();
                        } catch (Throwable th3) {
                            Trace.endSection();
                            throw th3;
                        }
                    }
                    NestedPrefetchController nestedPrefetchController = this.m;
                    if (nestedPrefetchController != null) {
                        int i4 = averages.f5388e;
                        boolean z2 = this.n;
                        List[] listArr = nestedPrefetchController.f5557b;
                        int i5 = nestedPrefetchController.f5558c;
                        List list3 = nestedPrefetchController.f5556a;
                        if (i5 < list3.size()) {
                            if (HandleAndRequestImpl.this.f5553i) {
                                InlineClassHelperKt.c("Should not execute nested prefetch on canceled request");
                            }
                            Trace.beginSection("compose:lazy:prefetch:update_nested_prefetch_count");
                            try {
                                int size = list3.size();
                                for (int i6 = 0; i6 < size; i6++) {
                                    ((LazyLayoutPrefetchState) list3.get(i6)).f5505e = i4;
                                }
                                Trace.endSection();
                                Trace.beginSection("compose:lazy:prefetch:nested");
                                while (nestedPrefetchController.f5558c < list3.size()) {
                                    try {
                                        if (listArr[nestedPrefetchController.f5558c] != null) {
                                            i3 = i3;
                                        } else {
                                            if (prefetchRequestScope.a() <= r11) {
                                                Trace.endSection();
                                                return true;
                                            }
                                            int i7 = nestedPrefetchController.f5558c;
                                            LazyLayoutPrefetchState lazyLayoutPrefetchState = (LazyLayoutPrefetchState) list3.get(i7);
                                            Function1 function1 = lazyLayoutPrefetchState.f5503b;
                                            if (function1 == null) {
                                                list = EmptyList.f71768b;
                                            } else {
                                                LazyLayoutPrefetchState.NestedPrefetchScopeImpl nestedPrefetchScopeImpl = lazyLayoutPrefetchState.new NestedPrefetchScopeImpl(lazyLayoutPrefetchState.f5505e);
                                                function1.invoke(nestedPrefetchScopeImpl);
                                                ArrayList arrayList = nestedPrefetchScopeImpl.f5508b;
                                                lazyLayoutPrefetchState.g = arrayList.size();
                                                list = arrayList;
                                            }
                                            listArr[i7] = list;
                                        }
                                        List list4 = listArr[nestedPrefetchController.f5558c];
                                        list4.getClass();
                                        while (nestedPrefetchController.d < list4.size()) {
                                            PrefetchRequest prefetchRequest = (PrefetchRequest) list4.get(nestedPrefetchController.d);
                                            if (z2) {
                                                HandleAndRequestImpl handleAndRequestImpl = prefetchRequest instanceof HandleAndRequestImpl ? (HandleAndRequestImpl) prefetchRequest : null;
                                                if (handleAndRequestImpl != null) {
                                                    z = true;
                                                    handleAndRequestImpl.n = true;
                                                } else {
                                                    z = true;
                                                }
                                            } else {
                                                z = true;
                                            }
                                            nestedPrefetchController.f5559e = z;
                                            if (prefetchRequest.d(prefetchRequestScope)) {
                                                Trace.endSection();
                                                return z;
                                            }
                                            nestedPrefetchController.d++;
                                        }
                                        nestedPrefetchController.d = 0;
                                        nestedPrefetchController.f5558c++;
                                        i3 = i3;
                                    } catch (Throwable th4) {
                                        Trace.endSection();
                                        throw th4;
                                    }
                                }
                                Trace.endSection();
                            } catch (Throwable th5) {
                                Trace.endSection();
                                throw th5;
                            }
                        }
                    }
                    NestedPrefetchController nestedPrefetchController2 = this.m;
                    if (nestedPrefetchController2 != null && nestedPrefetchController2.f5559e) {
                        j();
                        Trace.setCounter("compose:lazy:prefetch:execute:item", j2);
                        NestedPrefetchController nestedPrefetchController3 = this.m;
                        if (nestedPrefetchController3 != null) {
                            nestedPrefetchController3.f5559e = false;
                        }
                    }
                    if (!this.f5552h && (constraints = this.f5550e) != null) {
                        if (!i(this.o, averages.d)) {
                            return true;
                        }
                        Trace.beginSection("compose:lazy:prefetch:measure");
                        try {
                            long j3 = constraints.f10999a;
                            if (this.f5553i) {
                                InlineClassHelperKt.a("Callers should check whether the request is still valid before calling performMeasure()");
                            }
                            if (this.f5552h) {
                                InlineClassHelperKt.a("Request was already measured!");
                            }
                            this.f5552h = true;
                            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle2 = this.f5551f;
                            if (precomposedSlotHandle2 == null) {
                                throw o60.u("performComposition() must be called before performMeasure()");
                            }
                            int iB2 = precomposedSlotHandle2.b();
                            for (int i8 = 0; i8 < iB2; i8++) {
                                precomposedSlotHandle2.d(i8, j3);
                            }
                            Trace.endSection();
                            j();
                            averages.d = Averages.a(this.p, averages.d);
                            Function1 function2 = this.d;
                            if (function2 != null) {
                                function2.invoke(this);
                            }
                        } catch (Throwable th6) {
                            Trace.endSection();
                            throw th6;
                        }
                    }
                    NestedPrefetchController nestedPrefetchController4 = this.m;
                    if (this.f5552h && this.l && nestedPrefetchController4 != null) {
                        List list5 = nestedPrefetchController4.f5556a;
                        List list6 = list5;
                        int size2 = list6.size();
                        int iMin = Integer.MAX_VALUE;
                        for (int i9 = 0; i9 < size2; i9++) {
                            iMin = Math.min(iMin, ((LazyLayoutPrefetchState) list5.get(i9)).f5506f);
                        }
                        if (iMin == Integer.MAX_VALUE) {
                            iMin = 0;
                        }
                        int i10 = averages.f5388e;
                        averages.f5388e = i10 == -1 ? iMin : ((i10 * 3) + iMin) / 4;
                        int size3 = list6.size();
                        int iMin2 = Integer.MAX_VALUE;
                        for (int i11 = 0; i11 < size3; i11++) {
                            iMin2 = Math.min(iMin2, ((LazyLayoutPrefetchState) list5.get(i11)).g);
                        }
                        if (iMin2 == Integer.MAX_VALUE) {
                            iMin2 = 0;
                        }
                        if (iMin2 < iMin) {
                            averages.d = 0L;
                        }
                    }
                    return false;
                }
            }
            e();
            return false;
        }

        public final boolean g() {
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition;
            return this.f5554j || ((pausedPrecomposition = this.g) != null && pausedPrecomposition.a());
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchResultScope
        /* JADX INFO: renamed from: getIndex, reason: from getter */
        public final int getF5547a() {
            return this.f5547a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v5, types: [androidx.compose.foundation.lazy.layout.k] */
        public final void h(final Object obj, Object obj2, final Averages averages) {
            PausedPrecompositionImpl pausedPrecompositionImpl;
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition = this.g;
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition2 = pausedPrecomposition;
            if (pausedPrecomposition == null) {
                PrefetchHandleProvider prefetchHandleProvider = PrefetchHandleProvider.this;
                Function2 function2A = prefetchHandleProvider.f5544a.a(obj, obj2, this.f5547a);
                final LayoutNodeSubcompositionsState layoutNodeSubcompositionsStateA = prefetchHandleProvider.f5545b.a();
                if (layoutNodeSubcompositionsStateA.f9479b.c()) {
                    layoutNodeSubcompositionsStateA.l(obj, function2A, true);
                    pausedPrecompositionImpl = new PausedPrecompositionImpl() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$precomposePaused$2
                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final boolean a() {
                            PausedComposition pausedComposition;
                            LayoutNodeSubcompositionsState.NodeState nodeStateC = c();
                            if (nodeStateC == null || (pausedComposition = nodeStateC.f9493f) == null) {
                                return true;
                            }
                            return pausedComposition.a();
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final SubcomposeLayoutState.PrecomposedSlotHandle apply() {
                            LayoutNodeSubcompositionsState.NodeState nodeStateC = c();
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = layoutNodeSubcompositionsStateA;
                            if (nodeStateC != null) {
                                layoutNodeSubcompositionsState.c(nodeStateC, false);
                            }
                            return layoutNodeSubcompositionsState.f(obj);
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final boolean b(k kVar) {
                            LayoutNodeSubcompositionsState.NodeState nodeStateC = c();
                            PausedComposition pausedComposition = nodeStateC != null ? nodeStateC.f9493f : null;
                            if (pausedComposition == null || pausedComposition.a()) {
                                return true;
                            }
                            Snapshot.f8462e.getClass();
                            Snapshot snapshotA = Snapshot.Companion.a();
                            Function1 f8461f = snapshotA != null ? snapshotA.getF8461f() : null;
                            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                            try {
                                boolean zB = pausedComposition.b(kVar);
                                Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                return zB;
                            } catch (Throwable th) {
                                try {
                                    nodeStateC.getClass();
                                    throw th;
                                } catch (Throwable th2) {
                                    Snapshot.Companion.e(snapshotA, snapshotB, f8461f);
                                    throw th2;
                                }
                            }
                        }

                        public final LayoutNodeSubcompositionsState.NodeState c() {
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = layoutNodeSubcompositionsStateA;
                            LayoutNode layoutNode = (LayoutNode) layoutNodeSubcompositionsState.f9486k.e(obj);
                            if (layoutNode != null) {
                                return (LayoutNodeSubcompositionsState.NodeState) layoutNodeSubcompositionsState.g.e(layoutNode);
                            }
                            return null;
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final void cancel() {
                            LayoutNodeSubcompositionsState.NodeState nodeStateC = c();
                            if ((nodeStateC != null ? nodeStateC.f9493f : null) != null) {
                                LayoutNodeSubcompositionsState.b(layoutNodeSubcompositionsStateA, obj);
                            }
                        }
                    };
                } else {
                    pausedPrecompositionImpl = new PausedPrecompositionImpl() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$precomposePaused$1
                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final boolean a() {
                            return true;
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final SubcomposeLayoutState.PrecomposedSlotHandle apply() {
                            return layoutNodeSubcompositionsStateA.f(obj);
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final boolean b(k kVar) {
                            return true;
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final void cancel() {
                        }
                    };
                }
                PausedPrecompositionImpl pausedPrecompositionImpl2 = pausedPrecompositionImpl;
                this.g = pausedPrecompositionImpl2;
                this.f5555k = obj;
                pausedPrecomposition2 = pausedPrecompositionImpl2;
            }
            this.r = false;
            while (!pausedPrecomposition2.a() && !this.r) {
                pausedPrecomposition2.b(new ShouldPauseCallback() { // from class: androidx.compose.foundation.lazy.layout.k
                    @Override // androidx.compose.runtime.ShouldPauseCallback
                    public final boolean e() {
                        PrefetchHandleProvider.HandleAndRequestImpl handleAndRequestImpl = this.f5596b;
                        if (!handleAndRequestImpl.r) {
                            handleAndRequestImpl.j();
                            long j2 = handleAndRequestImpl.p;
                            Averages averages2 = averages;
                            long jA = Averages.a(j2, averages2.f5385a);
                            averages2.f5385a = jA;
                            handleAndRequestImpl.r = !handleAndRequestImpl.i(handleAndRequestImpl.o, jA + averages2.f5386b);
                        }
                        return handleAndRequestImpl.r;
                    }
                });
            }
            j();
            boolean z = this.r;
            long j2 = this.p;
            if (z) {
                averages.f5386b = Averages.a(j2, averages.f5386b);
            } else {
                averages.f5385a = Averages.a(j2, averages.f5385a);
            }
        }

        public final boolean i(long j2, long j3) {
            if (this.n) {
                j3 = 0;
            }
            return j2 > j3;
        }

        public final void j() {
            TimeSource.Monotonic.f74589a.getClass();
            MonotonicTimeSource monotonicTimeSource = MonotonicTimeSource.f74587a;
            monotonicTimeSource.getClass();
            long jB = MonotonicTimeSource.b();
            long j2 = this.q;
            monotonicTimeSource.getClass();
            long jC = LongSaturatedMathKt.c(jB, j2, DurationUnit.NANOSECONDS);
            long j3 = jC >> 1;
            Duration.Companion companion = Duration.INSTANCE;
            if ((1 & ((int) jC)) != 0) {
                if (j3 > 9223372036854L) {
                    j3 = Long.MAX_VALUE;
                } else {
                    j3 = j3 < -9223372036854L ? Long.MIN_VALUE : j3 * 1000000;
                }
            }
            this.p = j3;
            long j4 = this.o - j3;
            this.o = j4;
            this.q = jB;
            Trace.setCounter("compose:lazy:prefetch:available_time_nanos", j4);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("HandleAndRequestImpl { index = ");
            sb.append(this.f5547a);
            sb.append(", constraints = ");
            sb.append(this.f5550e);
            sb.append(", isComposed = ");
            sb.append(g());
            sb.append(", isMeasured = ");
            sb.append(this.f5552h);
            sb.append(", isCanceled = ");
            return defpackage.a.p(sb, this.f5553i, " }");
        }

        public HandleAndRequestImpl(PrefetchHandleProvider prefetchHandleProvider, int i2, long j2, PrefetchMetrics prefetchMetrics, PriorityPrefetchScheduler priorityPrefetchScheduler, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
            this(i2, prefetchMetrics, priorityPrefetchScheduler, function1);
            this.f5550e = new Constraints(j2);
        }
    }
}
