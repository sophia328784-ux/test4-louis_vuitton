package androidx.compose.runtime;

import android.os.Trace;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMap;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.GapAnchorKt;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.internal.Thread_jvmKt;
import androidx.compose.runtime.snapshots.ReaderKind;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.runtime.tooling.CompositionObserver;
import androidx.compose.runtime.tooling.ObservableComposition;
import defpackage.jm0;
import defpackage.os;
import defpackage.rs;
import defpackage.v7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B\u001b\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/runtime/CompositionImpl;", "Landroidx/compose/runtime/ControlledComposition;", "Landroidx/compose/runtime/ReusableComposition;", "Landroidx/compose/runtime/RecomposeScopeOwner;", "Landroidx/compose/runtime/CompositionServices;", "Landroidx/compose/runtime/PausableComposition;", "Landroidx/compose/runtime/tooling/ObservableComposition;", "Landroidx/compose/runtime/CompositionContext;", "parent", "Landroidx/compose/runtime/Applier;", "applier", "<init>", "(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/Applier;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CompositionImpl implements ControlledComposition, ReusableComposition, RecomposeScopeOwner, CompositionServices, PausableComposition, ObservableComposition {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompositionContext f7947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Applier f7948c;
    public final AtomicReference d = new AtomicReference(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f7949e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Set f7950f;
    public final SlotTable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableScatterMap f7951h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableScatterSet f7952i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableScatterSet f7953j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableScatterMap f7954k;
    public final ChangeList l;
    public final ChangeList m;
    public final MutableScatterMap n;
    public MutableScatterMap o;
    public boolean p;
    public ShouldPauseCallback q;
    public PausedCompositionImpl r;
    public CompositionImpl s;
    public int t;
    public final CompositionObserverHolder u;
    public final RememberEventDispatcher v;
    public final GapComposer w;
    public int x;
    public Function2 y;

    public CompositionImpl(CompositionContext compositionContext, Applier<?> applier) {
        this.f7947b = compositionContext;
        this.f7948c = applier;
        Set setE = new MutableScatterSet(0, 1, null).e();
        this.f7950f = setE;
        SlotTable slotTable = new SlotTable();
        if (compositionContext.e()) {
            slotTable.l = new MutableIntObjectMap(0, 1, null);
        }
        if (compositionContext.getF7988c()) {
            slotTable.i();
        }
        this.g = slotTable;
        this.f7951h = ScatterMapKt.b();
        this.f7952i = new MutableScatterSet(0, 1, null);
        this.f7953j = new MutableScatterSet(0, 1, null);
        this.f7954k = ScatterMapKt.b();
        ChangeList changeList = new ChangeList();
        this.l = changeList;
        ChangeList changeList2 = new ChangeList();
        this.m = changeList2;
        this.n = ScatterMapKt.b();
        this.o = ScatterMapKt.b();
        CompositionObserverHolder compositionObserverHolder = new CompositionObserverHolder(null, false, compositionContext, 3, null);
        this.u = compositionObserverHolder;
        this.v = new RememberEventDispatcher();
        GapComposer gapComposer = new GapComposer(applier, compositionContext, SlotTableKt.e(slotTable), setE, changeList, changeList2, compositionObserverHolder, this);
        compositionContext.t(gapComposer);
        this.w = gapComposer;
        ComposableSingletons$CompositionKt.f7928a.getClass();
        ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$CompositionKt.f7929b;
    }

    /* JADX WARN: Code duplicated, block: B:164:0x013d A[EDGE_INSN: B:164:0x013d->B:82:0x013d BREAK  A[LOOP:2: B:146:0x00f0->B:80:0x0133], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x0131 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x0133 A[Catch: all -> 0x0123, LOOP:2: B:146:0x00f0->B:80:0x0133, LOOP_END, TryCatch #4 {all -> 0x0123, blocks: (B:64:0x00f0, B:66:0x00ff, B:68:0x0109, B:70:0x010f, B:72:0x011f, B:76:0x0128, B:82:0x013d, B:90:0x015f, B:93:0x0172, B:80:0x0133, B:85:0x0147, B:99:0x0190, B:101:0x019c), top: B:146:0x00f0 }] */
    public final void A(ChangeList changeList) throws Throwable {
        Applier applier;
        RememberManager rememberManager;
        RememberEventDispatcher rememberEventDispatcher;
        long[] jArr;
        int i2;
        long[] jArr2;
        RememberEventDispatcher rememberEventDispatcher2;
        long j2;
        char c2;
        long j3;
        int i3;
        boolean zB;
        long j4;
        ChangeList changeList2 = this.m;
        GapComposer gapComposer = this.w;
        CompositionErrorContextImpl compositionErrorContextImplN = gapComposer.N();
        RememberEventDispatcher rememberEventDispatcher3 = this.v;
        rememberEventDispatcher3.n(this.f7950f, compositionErrorContextImplN);
        try {
            if (changeList.f8235a.c()) {
                try {
                    if (changeList2.f8235a.c() && this.r == null) {
                        rememberEventDispatcher3.j();
                    }
                    return;
                } finally {
                    rememberEventDispatcher3.i();
                }
            }
            PausedCompositionImpl pausedCompositionImpl = this.r;
            if (pausedCompositionImpl == null || (applier = pausedCompositionImpl.l) == null) {
                applier = this.f7948c;
            }
            try {
                Trace.beginSection(Intrinsics.c(applier, pausedCompositionImpl != null ? pausedCompositionImpl.l : null) ? "Compose:recordChanges" : "Compose:applyChanges");
                try {
                    PausedCompositionImpl pausedCompositionImpl2 = this.r;
                    if (pausedCompositionImpl2 == null || (rememberManager = pausedCompositionImpl2.f8065k) == null) {
                        rememberManager = rememberEventDispatcher3;
                    }
                    applier.getClass();
                    SlotTable slotTable = this.g;
                    OperationErrorContext operationErrorContextN = gapComposer.N();
                    SlotWriter slotWriterO = SlotTableKt.e(slotTable).o();
                    int i4 = 0;
                    try {
                        changeList.c(applier, slotWriterO, rememberManager, operationErrorContextN);
                        slotWriterO.e(true);
                        applier.f();
                        Trace.endSection();
                        rememberEventDispatcher3.k();
                        rememberEventDispatcher3.l();
                        if (this.p) {
                            Trace.beginSection("Compose:unobserve");
                            try {
                                this.p = false;
                                MutableScatterMap mutableScatterMap = this.f7951h;
                                long[] jArr3 = mutableScatterMap.f3361a;
                                int length = jArr3.length - 2;
                                if (length >= 0) {
                                    int i5 = 0;
                                    while (true) {
                                        long j5 = jArr3[i5];
                                        char c3 = 7;
                                        long j6 = -9187201950435737472L;
                                        if ((((~j5) << 7) & j5 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i6 = 8;
                                            int i7 = 8 - ((~(i5 - length)) >>> 31);
                                            int i8 = i4;
                                            while (i8 < i7) {
                                                if ((j5 & 255) < 128) {
                                                    c2 = c3;
                                                    int i9 = (i5 << 3) + i8;
                                                    j3 = j6;
                                                    Object obj = mutableScatterMap.f3362b[i9];
                                                    Object obj2 = mutableScatterMap.f3363c[i9];
                                                    if (obj2 instanceof MutableScatterSet) {
                                                        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                                        Object[] objArr = mutableScatterSet.f3368b;
                                                        long[] jArr4 = mutableScatterSet.f3367a;
                                                        int i10 = i6;
                                                        int length2 = jArr4.length - 2;
                                                        i2 = i8;
                                                        jArr2 = jArr3;
                                                        rememberEventDispatcher2 = rememberEventDispatcher3;
                                                        if (length2 >= 0) {
                                                            int i11 = 0;
                                                            while (true) {
                                                                try {
                                                                    long j7 = jArr4[i11];
                                                                    j2 = j5;
                                                                    long[] jArr5 = jArr4;
                                                                    if ((((~j7) << c2) & j7 & j3) == j3) {
                                                                        if (i11 != length2) {
                                                                            break;
                                                                            break;
                                                                        }
                                                                        i11++;
                                                                        jArr4 = jArr5;
                                                                        j5 = j2;
                                                                        i10 = 8;
                                                                    } else {
                                                                        int i12 = 8 - ((~(i11 - length2)) >>> 31);
                                                                        for (int i13 = 0; i13 < i12; i13++) {
                                                                            if ((j7 & 255) < 128) {
                                                                                j4 = j7;
                                                                                int i14 = (i11 << 3) + i13;
                                                                                if (!((RecomposeScopeImpl) objArr[i14]).a()) {
                                                                                    mutableScatterSet.n(i14);
                                                                                }
                                                                            } else {
                                                                                j4 = j7;
                                                                            }
                                                                            j7 = j4 >> i10;
                                                                        }
                                                                        if (i12 != i10) {
                                                                            break;
                                                                        }
                                                                        if (i11 != length2) {
                                                                            break;
                                                                        }
                                                                        i11++;
                                                                        jArr4 = jArr5;
                                                                        j5 = j2;
                                                                        i10 = 8;
                                                                    }
                                                                } catch (Throwable th) {
                                                                    th = th;
                                                                    Trace.endSection();
                                                                    throw th;
                                                                }
                                                            }
                                                        } else {
                                                            j2 = j5;
                                                        }
                                                        zB = mutableScatterSet.b();
                                                    } else {
                                                        i2 = i8;
                                                        jArr2 = jArr3;
                                                        rememberEventDispatcher2 = rememberEventDispatcher3;
                                                        j2 = j5;
                                                        obj2.getClass();
                                                        zB = !((RecomposeScopeImpl) obj2).a();
                                                    }
                                                    if (zB) {
                                                        mutableScatterMap.n(i9);
                                                    }
                                                    i3 = 8;
                                                } else {
                                                    i2 = i8;
                                                    jArr2 = jArr3;
                                                    rememberEventDispatcher2 = rememberEventDispatcher3;
                                                    j2 = j5;
                                                    c2 = c3;
                                                    j3 = j6;
                                                    i3 = i6;
                                                }
                                                j5 = j2 >> i3;
                                                i8 = i2 + 1;
                                                i6 = i3;
                                                c3 = c2;
                                                j6 = j3;
                                                rememberEventDispatcher3 = rememberEventDispatcher2;
                                                jArr3 = jArr2;
                                            }
                                            jArr = jArr3;
                                            rememberEventDispatcher = rememberEventDispatcher3;
                                            if (i7 != i6) {
                                                break;
                                            }
                                        } else {
                                            jArr = jArr3;
                                            rememberEventDispatcher = rememberEventDispatcher3;
                                        }
                                        if (i5 == length) {
                                            break;
                                        }
                                        i5++;
                                        rememberEventDispatcher3 = rememberEventDispatcher;
                                        jArr3 = jArr;
                                        i4 = 0;
                                    }
                                } else {
                                    rememberEventDispatcher = rememberEventDispatcher3;
                                }
                                B();
                                Trace.endSection();
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } else {
                            rememberEventDispatcher = rememberEventDispatcher3;
                        }
                        try {
                            if (changeList2.f8235a.c() && this.r == null) {
                                rememberEventDispatcher.j();
                            }
                            return;
                        } finally {
                            rememberEventDispatcher.i();
                        }
                    } catch (Throwable th3) {
                        try {
                            slotWriterO.e(false);
                            throw th3;
                        } catch (Throwable th4) {
                            th = th4;
                            Trace.endSection();
                            throw th;
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (Throwable th7) {
            th = th7;
        }
        try {
            if (changeList2.f8235a.c() && this.r == null) {
                rememberEventDispatcher3.j();
            }
            throw th;
        } finally {
            rememberEventDispatcher3.i();
        }
    }

    public final void B() {
        long j2;
        char c2;
        long j3;
        long j4;
        long[] jArr;
        long[] jArr2;
        int i2;
        int i3;
        long j5;
        char c3;
        long j6;
        long j7;
        int i4;
        boolean zB;
        int i5;
        int i6;
        MutableScatterMap mutableScatterMap = this.f7954k;
        long[] jArr3 = mutableScatterMap.f3361a;
        int length = jArr3.length - 2;
        long j8 = 255;
        char c4 = 7;
        long j9 = -9187201950435737472L;
        int i7 = 8;
        if (length >= 0) {
            int i8 = 0;
            while (true) {
                long j10 = jArr3[i8];
                j4 = 128;
                if ((((~j10) << c4) & j10 & j9) != j9) {
                    int i9 = 8 - ((~(i8 - length)) >>> 31);
                    int i10 = 0;
                    while (i10 < i9) {
                        if ((j10 & j8) < 128) {
                            j5 = j8;
                            int i11 = (i8 << 3) + i10;
                            Object obj = mutableScatterMap.f3362b[i11];
                            Object obj2 = mutableScatterMap.f3363c[i11];
                            c3 = c4;
                            boolean z = obj2 instanceof MutableScatterSet;
                            j6 = j9;
                            MutableScatterMap mutableScatterMap2 = this.f7951h;
                            if (z) {
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                Object[] objArr = mutableScatterSet.f3368b;
                                long[] jArr4 = mutableScatterSet.f3367a;
                                int length2 = jArr4.length - 2;
                                if (length2 >= 0) {
                                    int i12 = i7;
                                    j7 = j10;
                                    int i13 = 0;
                                    while (true) {
                                        long j11 = jArr4[i13];
                                        jArr2 = jArr3;
                                        i2 = length;
                                        if ((((~j11) << c3) & j11 & j6) != j6) {
                                            int i14 = 8 - ((~(i13 - length2)) >>> 31);
                                            int i15 = 0;
                                            while (i15 < i14) {
                                                if ((j11 & j5) < 128) {
                                                    i5 = i15;
                                                    int i16 = (i13 << 3) + i5;
                                                    i6 = i10;
                                                    if (!mutableScatterMap2.c((DerivedState) objArr[i16])) {
                                                        mutableScatterSet.n(i16);
                                                    }
                                                } else {
                                                    i5 = i15;
                                                    i6 = i10;
                                                }
                                                j11 >>= i12;
                                                i15 = i5 + 1;
                                                i10 = i6;
                                            }
                                            i3 = i10;
                                            if (i14 != i12) {
                                                break;
                                            }
                                        } else {
                                            i3 = i10;
                                        }
                                        if (i13 == length2) {
                                            break;
                                        }
                                        i13++;
                                        jArr3 = jArr2;
                                        length = i2;
                                        i10 = i3;
                                        i12 = 8;
                                    }
                                } else {
                                    jArr2 = jArr3;
                                    i2 = length;
                                    i3 = i10;
                                    j7 = j10;
                                }
                                zB = mutableScatterSet.b();
                            } else {
                                jArr2 = jArr3;
                                i2 = length;
                                i3 = i10;
                                j7 = j10;
                                obj2.getClass();
                                zB = !mutableScatterMap2.c((DerivedState) obj2);
                            }
                            if (zB) {
                                mutableScatterMap.n(i11);
                            }
                            i4 = 8;
                        } else {
                            jArr2 = jArr3;
                            i2 = length;
                            i3 = i10;
                            j5 = j8;
                            c3 = c4;
                            j6 = j9;
                            j7 = j10;
                            i4 = i7;
                        }
                        j10 = j7 >> i4;
                        i10 = i3 + 1;
                        i7 = i4;
                        c4 = c3;
                        j8 = j5;
                        j9 = j6;
                        jArr3 = jArr2;
                        length = i2;
                    }
                    jArr = jArr3;
                    int i17 = length;
                    j2 = j8;
                    c2 = c4;
                    j3 = j9;
                    if (i9 != i7) {
                        break;
                    } else {
                        length = i17;
                    }
                } else {
                    jArr = jArr3;
                    j2 = j8;
                    c2 = c4;
                    j3 = j9;
                }
                if (i8 == length) {
                    break;
                }
                i8++;
                c4 = c2;
                j8 = j2;
                j9 = j3;
                jArr3 = jArr;
                i7 = 8;
            }
        } else {
            j2 = 255;
            c2 = 7;
            j3 = -9187201950435737472L;
            j4 = 128;
        }
        MutableScatterSet mutableScatterSet2 = this.f7953j;
        if (!mutableScatterSet2.c()) {
            return;
        }
        Object[] objArr2 = mutableScatterSet2.f3368b;
        long[] jArr5 = mutableScatterSet2.f3367a;
        int length3 = jArr5.length - 2;
        if (length3 < 0) {
            return;
        }
        int i18 = 0;
        while (true) {
            long j12 = jArr5[i18];
            if ((((~j12) << c2) & j12 & j3) != j3) {
                int i19 = 8 - ((~(i18 - length3)) >>> 31);
                for (int i20 = 0; i20 < i19; i20++) {
                    if ((j12 & j2) < j4) {
                        int i21 = (i18 << 3) + i20;
                        if (((RecomposeScopeImpl) objArr2[i21]).g == null) {
                            mutableScatterSet2.n(i21);
                        }
                    }
                    j12 >>= 8;
                }
                if (i19 != 8) {
                    return;
                }
            }
            if (i18 == length3) {
                return;
            } else {
                i18++;
            }
        }
    }

    public final boolean C() {
        boolean z;
        synchronized (this.f7949e) {
            z = true;
            if (this.x != 1) {
                z = false;
            }
            if (z) {
                this.x = 0;
            }
        }
        return z;
    }

    public final PausedCompositionImpl D(boolean z, Function2 function2) {
        if (this.r != null) {
            PreconditionsKt.b("A pausable composition is in progress");
        }
        PausedCompositionImpl pausedCompositionImpl = new PausedCompositionImpl(this, this.f7947b, this.w, this.f7950f, function2, z, this.f7948c, this.f7949e);
        this.r = pausedCompositionImpl;
        return pausedCompositionImpl;
    }

    public final void E() {
        AtomicReference atomicReference = this.d;
        Object obj = CompositionKt.f7955a;
        Object andSet = atomicReference.getAndSet(obj);
        if (andSet != null) {
            if (andSet.equals(obj)) {
                ComposerKt.b("pending composition has not been applied");
                os.d();
                return;
            }
            if (andSet instanceof Set) {
                z((Set) andSet, true);
                return;
            }
            if (!(andSet instanceof Object[])) {
                ComposerKt.b("corrupt pendingModifications drain: " + atomicReference);
                os.d();
                return;
            }
            for (Set set : (Set[]) andSet) {
                z(set, true);
            }
        }
    }

    public final void F() {
        AtomicReference atomicReference = this.d;
        Object andSet = atomicReference.getAndSet(null);
        if (Intrinsics.c(andSet, CompositionKt.f7955a)) {
            return;
        }
        if (andSet instanceof Set) {
            z((Set) andSet, false);
            return;
        }
        if (andSet instanceof Object[]) {
            for (Set set : (Set[]) andSet) {
                z(set, false);
            }
            return;
        }
        if (andSet == null) {
            if (this.r == null) {
                ComposerKt.a("calling recordModificationsOf and applyChanges concurrently is not supported");
            }
        } else {
            ComposerKt.b("corrupt pendingModifications drain: " + atomicReference);
            os.d();
        }
    }

    public final void G() {
        EmptySet emptySet = EmptySet.f71770b;
        AtomicReference atomicReference = this.d;
        Object andSet = atomicReference.getAndSet(emptySet);
        if (Intrinsics.c(andSet, CompositionKt.f7955a) || andSet == null) {
            return;
        }
        if (andSet instanceof Set) {
            z((Set) andSet, false);
            return;
        }
        if (!(andSet instanceof Object[])) {
            ComposerKt.b("corrupt pendingModifications drain: " + atomicReference);
            os.d();
            return;
        }
        for (Set set : (Set[]) andSet) {
            z(set, false);
        }
    }

    public final void H() {
        String str;
        int i2 = this.x;
        if (i2 != 0) {
            if (i2 == 1) {
                str = "The composition should be activated before setting content.";
            } else if (i2 != 2) {
                str = i2 != 3 ? "" : "The composition is disposed";
            } else {
                str = "A previous pausable composition for this composition was cancelled. This composition must be disposed.";
            }
            PreconditionsKt.b(str);
        }
        if (this.r == null) {
            return;
        }
        PreconditionsKt.b("A pausable composition is in progress");
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003f  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00bf A[Catch: all -> 0x0042, LOOP:0: B:48:0x0088->B:60:0x00bf, LOOP_END, TryCatch #0 {all -> 0x0042, blocks: (B:4:0x0009, B:6:0x000e, B:8:0x0016, B:10:0x001d, B:14:0x0027, B:16:0x0031, B:13:0x0022, B:25:0x0047, B:27:0x004d, B:32:0x0058, B:36:0x005e, B:37:0x0066, B:40:0x006c, B:41:0x0072, B:43:0x0078, B:45:0x007c, B:48:0x0088, B:50:0x0098, B:52:0x00a4, B:54:0x00ad, B:57:0x00b7, B:60:0x00bf, B:61:0x00c2, B:64:0x00c7), top: B:77:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00c7 A[Catch: all -> 0x0042, EDGE_INSN: B:64:0x00c7->B:65:0x00cc BREAK  A[LOOP:0: B:48:0x0088->B:60:0x00bf], TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:4:0x0009, B:6:0x000e, B:8:0x0016, B:10:0x001d, B:14:0x0027, B:16:0x0031, B:13:0x0022, B:25:0x0047, B:27:0x004d, B:32:0x0058, B:36:0x005e, B:37:0x0066, B:40:0x006c, B:41:0x0072, B:43:0x0078, B:45:0x007c, B:48:0x0088, B:50:0x0098, B:52:0x00a4, B:54:0x00ad, B:57:0x00b7, B:60:0x00bf, B:61:0x00c2, B:64:0x00c7), top: B:77:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x00c7 A[SYNTHETIC] */
    public final InvalidationResult I(RecomposeScopeImpl recomposeScopeImpl, Anchor anchor, Object obj) {
        synchronized (this.f7949e) {
            try {
                CompositionImpl compositionImpl = this.s;
                CompositionImpl compositionImpl2 = null;
                if (compositionImpl != null) {
                    SlotTable slotTable = this.g;
                    int i2 = this.t;
                    if (slotTable.f8212h) {
                        ComposerKt.a("Writer is active");
                    }
                    if (i2 < 0 || i2 >= slotTable.f8209c) {
                        ComposerKt.a("Invalid group index");
                    }
                    GapAnchor gapAnchorA = GapAnchorKt.a(anchor);
                    if (slotTable.p(gapAnchorA)) {
                        int iA = SlotTableKt.a(i2, slotTable.f8208b) + i2;
                        int i3 = gapAnchorA.f8187a;
                        if (i2 > i3 || i3 >= iA) {
                            compositionImpl = null;
                        }
                    } else {
                        compositionImpl = null;
                    }
                    compositionImpl2 = compositionImpl;
                }
                if (compositionImpl2 == null) {
                    GapComposer gapComposer = this.w;
                    if (gapComposer.F && gapComposer.C0(recomposeScopeImpl, obj)) {
                        return InvalidationResult.IMMINENT;
                    }
                    if (obj != null) {
                        boolean z = obj instanceof DerivedState;
                        MutableScatterMap mutableScatterMap = this.o;
                        if (z) {
                            Object objE = mutableScatterMap.e(recomposeScopeImpl);
                            if (objE == null) {
                                ScopeMap.a(this.o, recomposeScopeImpl, obj);
                                break;
                            }
                            if (objE instanceof MutableScatterSet) {
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) objE;
                                Object[] objArr = mutableScatterSet.f3368b;
                                long[] jArr = mutableScatterSet.f3367a;
                                int length = jArr.length - 2;
                                if (length < 0) {
                                    ScopeMap.a(this.o, recomposeScopeImpl, obj);
                                    break;
                                }
                                int i4 = 0;
                                loop0: while (true) {
                                    long j2 = jArr[i4];
                                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i5 = 8 - ((~(i4 - length)) >>> 31);
                                        for (int i6 = 0; i6 < i5; i6++) {
                                            if ((255 & j2) < 128 && objArr[(i4 << 3) + i6] == ScopeInvalidated.f8117a) {
                                                break loop0;
                                            }
                                            j2 >>= 8;
                                        }
                                        if (i5 == 8) {
                                            if (i4 == length) {
                                                i4++;
                                            }
                                        }
                                        ScopeMap.a(this.o, recomposeScopeImpl, obj);
                                        break;
                                    }
                                    if (i4 == length) {
                                        ScopeMap.a(this.o, recomposeScopeImpl, obj);
                                        break;
                                    }
                                    i4++;
                                }
                            } else {
                                if (objE != ScopeInvalidated.f8117a) {
                                    ScopeMap.a(this.o, recomposeScopeImpl, obj);
                                    break;
                                }
                            }
                        } else {
                            mutableScatterMap.o(recomposeScopeImpl, ScopeInvalidated.f8117a);
                        }
                    } else {
                        this.o.o(recomposeScopeImpl, ScopeInvalidated.f8117a);
                    }
                }
                if (compositionImpl2 != null) {
                    return compositionImpl2.I(recomposeScopeImpl, anchor, obj);
                }
                this.f7947b.o(this);
                return this.w.F ? InvalidationResult.DEFERRED : InvalidationResult.SCHEDULED;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void J(Object obj) {
        Object objE = this.f7951h.e(obj);
        if (objE == null) {
            return;
        }
        boolean z = objE instanceof MutableScatterSet;
        MutableScatterMap mutableScatterMap = this.n;
        if (!z) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objE;
            if (recomposeScopeImpl.b(obj) == InvalidationResult.IMMINENT) {
                ScopeMap.a(mutableScatterMap, obj, recomposeScopeImpl);
                return;
            }
            return;
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) objE;
        Object[] objArr = mutableScatterSet.f3368b;
        long[] jArr = mutableScatterSet.f3367a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) objArr[(i2 << 3) + i4];
                        if (recomposeScopeImpl2.b(obj) == InvalidationResult.IMMINENT) {
                            ScopeMap.a(mutableScatterMap, obj, recomposeScopeImpl2);
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00d3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00d5 A[LOOP:0: B:32:0x0081->B:47:0x00d5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x00da A[EDGE_INSN: B:54:0x00da->B:48:0x00da BREAK  A[LOOP:0: B:32:0x0081->B:47:0x00d5], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x001e  */
    @Override // androidx.compose.runtime.ControlledComposition, androidx.compose.runtime.RecomposeScopeOwner
    public final void a(Object obj) {
        RecomposeScopeImpl recomposeScopeImplG0;
        int i2;
        boolean z;
        GapComposer gapComposer = this.w;
        if (gapComposer.A <= 0 && (recomposeScopeImplG0 = gapComposer.g0()) != null) {
            int i3 = recomposeScopeImplG0.f8077b | 1;
            recomposeScopeImplG0.f8077b = i3;
            int i4 = 0;
            if ((i3 & 32) == 0) {
                MutableObjectIntMap mutableObjectIntMap = recomposeScopeImplG0.f8080f;
                if (mutableObjectIntMap == null) {
                    mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
                    recomposeScopeImplG0.f8080f = mutableObjectIntMap;
                }
                int i5 = recomposeScopeImplG0.f8079e;
                int iE = mutableObjectIntMap.e(obj);
                if (iE < 0) {
                    iE = ~iE;
                    i2 = -1;
                } else {
                    i2 = mutableObjectIntMap.f3342c[iE];
                }
                mutableObjectIntMap.f3341b[iE] = obj;
                mutableObjectIntMap.f3342c[iE] = i5;
                if (i2 == recomposeScopeImplG0.f8079e) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            CompositionObserver compositionObserverA = this.u.a();
            if (compositionObserverA != null) {
                compositionObserverA.g();
            }
            if (z) {
                return;
            }
            if (obj instanceof StateObjectImpl) {
                int i6 = ReaderKind.f8460a;
                ((StateObjectImpl) obj).J(1);
            }
            ScopeMap.a(this.f7951h, obj, recomposeScopeImplG0);
            if (obj instanceof DerivedState) {
                DerivedState derivedState = (DerivedState) obj;
                DerivedSnapshotState.ResultRecord resultRecordI = derivedState.I();
                MutableScatterMap mutableScatterMap = this.f7954k;
                ScopeMap.c(mutableScatterMap, obj);
                ObjectIntMap objectIntMap = resultRecordI.f7969e;
                Object[] objArr = objectIntMap.f3341b;
                long[] jArr = objectIntMap.f3340a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i7 = 0;
                    while (true) {
                        long j2 = jArr[i7];
                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i7 != length) {
                                break;
                                break;
                            } else {
                                i7++;
                                i4 = 0;
                            }
                        } else {
                            int i8 = 8;
                            int i9 = 8 - ((~(i7 - length)) >>> 31);
                            int i10 = i4;
                            while (i10 < i9) {
                                if ((j2 & 255) < 128) {
                                    StateObject stateObject = (StateObject) objArr[(i7 << 3) + i10];
                                    if (stateObject instanceof StateObjectImpl) {
                                        int i11 = ReaderKind.f8460a;
                                        ((StateObjectImpl) stateObject).J(1);
                                    }
                                    ScopeMap.a(mutableScatterMap, stateObject, obj);
                                }
                                j2 >>= i8;
                                i10++;
                                i8 = i8;
                            }
                            if (i9 != i8) {
                                break;
                            }
                            if (i7 != length) {
                                break;
                            }
                            i7++;
                            i4 = 0;
                        }
                    }
                }
                Object obj2 = resultRecordI.f7970f;
                MutableScatterMap mutableScatterMap2 = recomposeScopeImplG0.g;
                if (mutableScatterMap2 == null) {
                    mutableScatterMap2 = new MutableScatterMap(0, 1, null);
                    recomposeScopeImplG0.g = mutableScatterMap2;
                }
                mutableScatterMap2.o(derivedState, obj2);
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final void b() {
        for (Object obj : this.g.d) {
            RecomposeScope recomposeScope = obj instanceof RecomposeScope ? (RecomposeScope) obj : null;
            if (recomposeScope != null) {
                recomposeScope.invalidate();
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final void c(Function2 function2) {
        try {
            synchronized (this.f7949e) {
                E();
                MutableScatterMap mutableScatterMap = this.o;
                this.o = ScatterMapKt.b();
                try {
                    GapComposer gapComposer = this.w;
                    ShouldPauseCallback shouldPauseCallback = this.q;
                    if (!gapComposer.f7979e.b()) {
                        ComposerKt.a("Expected applyChanges() to have been called");
                    }
                    gapComposer.P = shouldPauseCallback;
                    try {
                        gapComposer.X(mutableScatterMap, function2);
                        gapComposer.P = null;
                    } catch (Throwable th) {
                        gapComposer.P = null;
                        throw th;
                    }
                } catch (Throwable th2) {
                    this.o = mutableScatterMap;
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                if (!this.f7950f.isEmpty()) {
                    RememberEventDispatcher rememberEventDispatcher = this.v;
                    try {
                        rememberEventDispatcher.n(this.f7950f, this.w.N());
                        rememberEventDispatcher.j();
                    } finally {
                        rememberEventDispatcher.i();
                    }
                }
                throw th3;
            } catch (Throwable th4) {
                w();
                throw th4;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.ControlledComposition
    public final void d(ScatterSetWrapper scatterSetWrapper) {
        Object obj;
        while (true) {
            Object obj2 = this.d.get();
            if (obj2 == null || obj2.equals(CompositionKt.f7955a)) {
                obj = scatterSetWrapper;
            } else if (obj2 instanceof Set) {
                obj = new Set[]{obj2, scatterSetWrapper};
            } else {
                if (!(obj2 instanceof Object[])) {
                    v7.i(this.d, "corrupt pendingModifications: ");
                    return;
                }
                Set[] setArr = (Set[]) obj2;
                int length = setArr.length;
                Object[] objArrCopyOf = Arrays.copyOf(setArr, length + 1);
                objArrCopyOf[length] = scatterSetWrapper;
                obj = objArrCopyOf;
            }
            AtomicReference atomicReference = this.d;
            do {
                if (atomicReference.compareAndSet(obj2, obj)) {
                    if (obj2 == null) {
                        synchronized (this.f7949e) {
                            F();
                        }
                        return;
                    }
                    return;
                }
            } while (atomicReference.get() == obj2);
        }
    }

    @Override // androidx.compose.runtime.ReusableComposition
    public final void deactivate() {
        synchronized (this.f7949e) {
            try {
                if (this.r != null) {
                    PreconditionsKt.b("Deactivate is not supported while pausable composition is in progress");
                }
                boolean z = this.g.f8209c == 0;
                if (!z || !this.f7950f.isEmpty()) {
                    Trace.beginSection("Compose:deactivate");
                    try {
                        RememberEventDispatcher rememberEventDispatcher = this.v;
                        try {
                            rememberEventDispatcher.n(this.f7950f, this.w.N());
                            if (!z) {
                                this.f7948c.getClass();
                                SlotTable slotTable = this.g;
                                RememberEventDispatcher rememberEventDispatcher2 = this.v;
                                SlotWriter slotWriterO = slotTable.o();
                                try {
                                    slotWriterO.n(slotWriterO.t, new rs(rememberEventDispatcher2, slotWriterO, 17));
                                    slotWriterO.e(true);
                                    this.f7948c.f();
                                    rememberEventDispatcher.k();
                                } catch (Throwable th) {
                                    slotWriterO.e(false);
                                    throw th;
                                }
                            }
                            rememberEventDispatcher.j();
                            rememberEventDispatcher.i();
                            Trace.endSection();
                        } catch (Throwable th2) {
                            rememberEventDispatcher.i();
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        Trace.endSection();
                        throw th3;
                    }
                }
                this.f7951h.h();
                this.f7954k.h();
                this.o.h();
                this.l.a();
                this.m.a();
                GapComposer gapComposer = this.w;
                gapComposer.E.clear();
                gapComposer.s.clear();
                gapComposer.f7979e.a();
                gapComposer.v = null;
                this.x = 1;
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    @Override // androidx.compose.runtime.Composition
    public final void dispose() {
        synchronized (this.f7949e) {
            try {
                if (this.w.F) {
                    PreconditionsKt.b("Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block.");
                }
                if (this.x != 3) {
                    this.x = 3;
                    ComposableSingletons$CompositionKt.f7928a.getClass();
                    this.y = ComposableSingletons$CompositionKt.f7930c;
                    ChangeList changeList = this.w.L;
                    if (changeList != null) {
                        A(changeList);
                    }
                    boolean z = this.g.f8209c == 0;
                    if (!z || !this.f7950f.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.v;
                        try {
                            rememberEventDispatcher.n(this.f7950f, this.w.N());
                            if (!z) {
                                this.f7948c.getClass();
                                SlotTable slotTable = this.g;
                                RememberEventDispatcher rememberEventDispatcher2 = this.v;
                                SlotWriter slotWriterO = slotTable.o();
                                try {
                                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                                    slotWriterO.n(slotWriterO.t, new defpackage.c(rememberEventDispatcher2, 17));
                                    slotWriterO.J();
                                    slotWriterO.e(true);
                                    this.f7948c.clear();
                                    this.f7948c.f();
                                    rememberEventDispatcher.k();
                                } catch (Throwable th) {
                                    slotWriterO.e(false);
                                    throw th;
                                }
                            }
                            rememberEventDispatcher.j();
                            rememberEventDispatcher.i();
                        } catch (Throwable th2) {
                            rememberEventDispatcher.i();
                            throw th2;
                        }
                    }
                    GapComposer gapComposer = this.w;
                    gapComposer.getClass();
                    Trace.beginSection("Compose:Composer.dispose");
                    try {
                        gapComposer.f7977b.y(gapComposer);
                        gapComposer.E.clear();
                        gapComposer.s.clear();
                        gapComposer.f7979e.a();
                        gapComposer.v = null;
                        gapComposer.f7976a.clear();
                        Trace.endSection();
                    } catch (Throwable th3) {
                        Trace.endSection();
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        this.f7947b.z(this);
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final void e() {
        synchronized (this.f7949e) {
            try {
                if (!this.m.b()) {
                    A(this.m);
                }
            } catch (Throwable th) {
                try {
                    if (!this.f7950f.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.v;
                        try {
                            rememberEventDispatcher.n(this.f7950f, this.w.N());
                            rememberEventDispatcher.j();
                        } finally {
                            rememberEventDispatcher.i();
                        }
                    }
                    throw th;
                } catch (Throwable th2) {
                    w();
                    throw th2;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.PausableComposition
    public final PausedCompositionImpl f(Function2 function2) {
        return D(C(), function2);
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final void g(jm0 jm0Var) {
        GapComposer gapComposer = this.w;
        if (gapComposer.F) {
            ComposerKt.a("Preparing a composition while composing is not supported");
        }
        gapComposer.F = true;
        try {
            jm0Var.mo47invoke();
        } finally {
            gapComposer.F = false;
        }
    }

    @Override // androidx.compose.runtime.Composition
    public final void h(Function2 function2) {
        boolean zC = C();
        H();
        CompositionContext compositionContext = this.f7947b;
        if (!zC) {
            this.y = function2;
            compositionContext.a(this, function2);
            return;
        }
        GapComposer gapComposer = this.w;
        gapComposer.R();
        this.y = function2;
        compositionContext.a(this, function2);
        gapComposer.M();
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final void i(MovableContentState movableContentState) {
        RememberEventDispatcher rememberEventDispatcher = this.v;
        try {
            rememberEventDispatcher.n(this.f7950f, this.w.N());
            movableContentState.f8023a.a(rememberEventDispatcher);
            rememberEventDispatcher.k();
        } finally {
            rememberEventDispatcher.i();
        }
    }

    @Override // androidx.compose.runtime.Composition
    public final boolean isDisposed() {
        return this.x == 3;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final ShouldPauseCallback j(ShouldPauseCallback shouldPauseCallback) {
        ShouldPauseCallback shouldPauseCallback2 = this.q;
        this.q = shouldPauseCallback;
        return shouldPauseCallback2;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final Object k(ControlledComposition controlledComposition, int i2, Function0 function0) {
        if (controlledComposition == null || controlledComposition.equals(this) || i2 < 0) {
            return function0.mo47invoke();
        }
        this.s = (CompositionImpl) controlledComposition;
        this.t = i2;
        try {
            return function0.mo47invoke();
        } finally {
            this.s = null;
            this.t = 0;
        }
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    public final void l(RecomposeScopeImpl recomposeScopeImpl) {
        this.p = true;
        CompositionObserver compositionObserverA = this.u.a();
        if (compositionObserverA != null) {
            compositionObserverA.d();
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final boolean m() {
        synchronized (this.f7949e) {
            PausedCompositionImpl pausedCompositionImpl = this.r;
            boolean z = false;
            if (pausedCompositionImpl != null && (pausedCompositionImpl.f8062h.get() != PausedCompositionState.Recomposing || pausedCompositionImpl.f8063i != Thread_jvmKt.a())) {
                AtomicReference atomicReference = pausedCompositionImpl.f8062h;
                PausedCompositionState pausedCompositionState = PausedCompositionState.ApplyPending;
                PausedCompositionState pausedCompositionState2 = PausedCompositionState.RecomposePending;
                while (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2) && atomicReference.get() == pausedCompositionState) {
                }
                pausedCompositionImpl.l.f8107a.e(9);
                return false;
            }
            E();
            try {
                MutableScatterMap mutableScatterMap = this.o;
                this.o = ScatterMapKt.b();
                try {
                    GapComposer gapComposer = this.w;
                    ShouldPauseCallback shouldPauseCallback = this.q;
                    Changes changes = gapComposer.f7979e;
                    if (!changes.b()) {
                        ComposerKt.a("Expected applyChanges() to have been called");
                    }
                    if (mutableScatterMap.f3364e > 0 || !gapComposer.s.isEmpty()) {
                        gapComposer.P = shouldPauseCallback;
                        try {
                            gapComposer.X(mutableScatterMap, null);
                            gapComposer.P = null;
                            z = !changes.b();
                        } catch (Throwable th) {
                            gapComposer.P = null;
                            throw th;
                        }
                    }
                    if (!z) {
                        F();
                    }
                    return z;
                } catch (Throwable th2) {
                    this.o = mutableScatterMap;
                    throw th2;
                }
            } catch (Throwable th3) {
                try {
                    if (!this.f7950f.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.v;
                        try {
                            rememberEventDispatcher.n(this.f7950f, this.w.N());
                            rememberEventDispatcher.j();
                        } finally {
                            rememberEventDispatcher.i();
                        }
                    }
                    throw th3;
                } catch (Throwable th4) {
                    w();
                    throw th4;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x005b A[LOOP:0: B:7:0x001c->B:21:0x005b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x007b A[SYNTHETIC] */
    @Override // androidx.compose.runtime.ControlledComposition
    public final boolean n(Set set) {
        boolean z = set instanceof ScatterSetWrapper;
        MutableScatterMap mutableScatterMap = this.f7954k;
        MutableScatterMap mutableScatterMap2 = this.f7951h;
        if (z) {
            ScatterSet scatterSet = ((ScatterSetWrapper) set).f8172b;
            Object[] objArr = scatterSet.f3368b;
            long[] jArr = scatterSet.f3367a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i2 = 0;
                loop0: while (true) {
                    long j2 = jArr[i2];
                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i3 = 8 - ((~(i2 - length)) >>> 31);
                        for (int i4 = 0; i4 < i3; i4++) {
                            if ((255 & j2) < 128) {
                                Object obj = objArr[(i2 << 3) + i4];
                                if (mutableScatterMap2.c(obj) || mutableScatterMap.c(obj)) {
                                    break loop0;
                                }
                            }
                            j2 >>= 8;
                        }
                        if (i3 == 8) {
                            if (i2 != length) {
                                i2++;
                            }
                        }
                    } else if (i2 != length) {
                        i2++;
                    }
                }
                return true;
            }
        } else {
            for (Object obj2 : set) {
                if (mutableScatterMap2.c(obj2) || mutableScatterMap.c(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final void o(ArrayList arrayList) {
        Set set = this.f7950f;
        GapComposer gapComposer = this.w;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!Intrinsics.c(((MovableContentStateReference) ((Pair) arrayList.get(i2)).f71705b).f8026c, this)) {
                ComposerKt.a("Check failed");
                break;
            }
        }
        try {
            gapComposer.getClass();
            Trace.beginSection("Compose:insertMovableContent");
            try {
                try {
                    gapComposer.i0(arrayList);
                    gapComposer.T();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } catch (Throwable th2) {
                gapComposer.S();
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                if (!set.isEmpty()) {
                    RememberEventDispatcher rememberEventDispatcher = this.v;
                    try {
                        rememberEventDispatcher.n(set, gapComposer.N());
                        rememberEventDispatcher.j();
                    } finally {
                        rememberEventDispatcher.i();
                    }
                }
                throw th3;
            } catch (Throwable th4) {
                w();
                throw th4;
            }
        }
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    public final InvalidationResult p(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        CompositionImpl compositionImpl;
        CompositionObserver compositionObserverA;
        int i2 = recomposeScopeImpl.f8077b;
        if ((i2 & 2) != 0) {
            recomposeScopeImpl.f8077b = i2 | 4;
        }
        GapAnchor gapAnchor = recomposeScopeImpl.f8078c;
        if (gapAnchor == null || !gapAnchor.a()) {
            return InvalidationResult.IGNORED;
        }
        SlotTable slotTable = this.g;
        slotTable.getClass();
        GapAnchor gapAnchor2 = recomposeScopeImpl.f8078c;
        if (gapAnchor2 != null && slotTable.p(GapAnchorKt.a(gapAnchor2))) {
            if (recomposeScopeImpl.d == null) {
                return InvalidationResult.IGNORED;
            }
            InvalidationResult invalidationResultI = I(recomposeScopeImpl, gapAnchor, obj);
            if (invalidationResultI != InvalidationResult.IGNORED && (compositionObserverA = this.u.a()) != null) {
                compositionObserverA.b();
            }
            return invalidationResultI;
        }
        synchronized (this.f7949e) {
            compositionImpl = this.s;
        }
        if (compositionImpl != null) {
            GapComposer gapComposer = compositionImpl.w;
            if (gapComposer.F && gapComposer.C0(recomposeScopeImpl, obj)) {
                return InvalidationResult.IMMINENT;
            }
        }
        return InvalidationResult.IGNORED;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final void q() {
        synchronized (this.f7949e) {
            try {
                A(this.l);
                F();
            } catch (Throwable th) {
                try {
                    if (!this.f7950f.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.v;
                        try {
                            rememberEventDispatcher.n(this.f7950f, this.w.N());
                            rememberEventDispatcher.j();
                        } finally {
                            rememberEventDispatcher.i();
                        }
                    }
                    throw th;
                } catch (Throwable th2) {
                    w();
                    throw th2;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final boolean r() {
        return this.w.F;
    }

    @Override // androidx.compose.runtime.ReusableComposition
    public final void s(Function2 function2) {
        C();
        H();
        GapComposer gapComposer = this.w;
        gapComposer.R();
        this.y = function2;
        this.f7947b.a(this, function2);
        gapComposer.M();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0057 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0059 A[Catch: all -> 0x004f, LOOP:0: B:11:0x001f->B:23:0x0059, LOOP_END, TryCatch #0 {all -> 0x004f, blocks: (B:4:0x0003, B:6:0x000e, B:8:0x0012, B:11:0x001f, B:13:0x002f, B:15:0x003b, B:17:0x0044, B:20:0x0051, B:23:0x0059, B:24:0x005c), top: B:29:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0061 A[EDGE_INSN: B:31:0x0061->B:25:0x0061 BREAK  A[LOOP:0: B:11:0x001f->B:23:0x0059], SYNTHETIC] */
    @Override // androidx.compose.runtime.ControlledComposition
    public final void t(Object obj) {
        synchronized (this.f7949e) {
            try {
                J(obj);
                Object objE = this.f7954k.e(obj);
                if (objE != null) {
                    if (objE instanceof MutableScatterSet) {
                        MutableScatterSet mutableScatterSet = (MutableScatterSet) objE;
                        Object[] objArr = mutableScatterSet.f3368b;
                        long[] jArr = mutableScatterSet.f3367a;
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
                                            J((DerivedState) objArr[(i2 << 3) + i4]);
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
                    } else {
                        J((DerivedState) objE);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.Composition
    public final boolean u() {
        boolean z;
        synchronized (this.f7949e) {
            z = this.o.f3364e > 0;
        }
        return z;
    }

    @Override // androidx.compose.runtime.PausableComposition
    public final PausedCompositionImpl v(Function2 function2) {
        C();
        H();
        return D(true, function2);
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final void w() {
        this.d.set(null);
        this.l.a();
        this.m.a();
        Set set = this.f7950f;
        if (set.isEmpty()) {
            return;
        }
        RememberEventDispatcher rememberEventDispatcher = this.v;
        try {
            rememberEventDispatcher.n(set, this.w.N());
            rememberEventDispatcher.j();
        } finally {
            rememberEventDispatcher.i();
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public final void x() {
        synchronized (this.f7949e) {
            try {
                this.w.v = null;
                if (!this.f7950f.isEmpty()) {
                    RememberEventDispatcher rememberEventDispatcher = this.v;
                    try {
                        rememberEventDispatcher.n(this.f7950f, this.w.N());
                        rememberEventDispatcher.j();
                        rememberEventDispatcher.i();
                    } catch (Throwable th) {
                        rememberEventDispatcher.i();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                try {
                    if (!this.f7950f.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher2 = this.v;
                        try {
                            rememberEventDispatcher2.n(this.f7950f, this.w.N());
                            rememberEventDispatcher2.j();
                        } finally {
                            rememberEventDispatcher2.i();
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    w();
                    throw th3;
                }
            }
        }
    }

    public final void y(Object obj, boolean z) {
        Object objE = this.f7951h.e(obj);
        if (objE == null) {
            return;
        }
        boolean z2 = objE instanceof MutableScatterSet;
        MutableScatterSet mutableScatterSet = this.f7952i;
        MutableScatterSet mutableScatterSet2 = this.f7953j;
        MutableScatterMap mutableScatterMap = this.n;
        if (!z2) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objE;
            if (ScopeMap.b(mutableScatterMap, obj, recomposeScopeImpl) || recomposeScopeImpl.b(obj) == InvalidationResult.IGNORED) {
                return;
            }
            if (recomposeScopeImpl.g == null || z) {
                mutableScatterSet.d(recomposeScopeImpl);
                return;
            } else {
                mutableScatterSet2.d(recomposeScopeImpl);
                return;
            }
        }
        MutableScatterSet mutableScatterSet3 = (MutableScatterSet) objE;
        Object[] objArr = mutableScatterSet3.f3368b;
        long[] jArr = mutableScatterSet3.f3367a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) objArr[(i2 << 3) + i4];
                        if (!ScopeMap.b(mutableScatterMap, obj, recomposeScopeImpl2) && recomposeScopeImpl2.b(obj) != InvalidationResult.IGNORED) {
                            if (recomposeScopeImpl2.g == null || z) {
                                mutableScatterSet.d(recomposeScopeImpl2);
                            } else {
                                mutableScatterSet2.d(recomposeScopeImpl2);
                            }
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:220:0x0122 A[EDGE_INSN: B:220:0x0122->B:215:0x0122 BREAK  A[LOOP:13: B:63:0x0151->B:74:0x0185], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x0183 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x0185 A[LOOP:13: B:63:0x0151->B:74:0x0185, LOOP_END] */
    public final void z(Set set, boolean z) {
        long j2;
        long j3;
        long j4;
        char c2;
        long[] jArr;
        long[] jArr2;
        long j5;
        boolean zA;
        long[] jArr3;
        long j6;
        long[] jArr4;
        long[] jArr5;
        long j7;
        boolean zB;
        long[] jArr6;
        long j8;
        long[] jArr7;
        long[] jArr8;
        char c3;
        long j9;
        int i2;
        int i3;
        boolean z2 = set instanceof ScatterSetWrapper;
        MutableScatterMap mutableScatterMap = this.f7954k;
        Object obj = null;
        int i4 = 8;
        if (z2) {
            ScatterSet scatterSet = ((ScatterSetWrapper) set).f8172b;
            Object[] objArr = scatterSet.f3368b;
            long[] jArr9 = scatterSet.f3367a;
            int length = jArr9.length - 2;
            if (length >= 0) {
                int i5 = 0;
                j2 = 128;
                j3 = 255;
                while (true) {
                    long j10 = jArr9[i5];
                    char c4 = 7;
                    j4 = -9187201950435737472L;
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i6 = 8 - ((~(i5 - length)) >>> 31);
                        int i7 = 0;
                        while (i7 < i6) {
                            if ((j10 & 255) < 128) {
                                Object obj2 = objArr[(i5 << 3) + i7];
                                c3 = c4;
                                if (obj2 instanceof RecomposeScopeImpl) {
                                    ((RecomposeScopeImpl) obj2).b(obj);
                                } else {
                                    y(obj2, z);
                                    Object objE = mutableScatterMap.e(obj2);
                                    if (objE != null) {
                                        if (objE instanceof MutableScatterSet) {
                                            MutableScatterSet mutableScatterSet = (MutableScatterSet) objE;
                                            Object[] objArr2 = mutableScatterSet.f3368b;
                                            long[] jArr10 = mutableScatterSet.f3367a;
                                            int length2 = jArr10.length - 2;
                                            if (length2 >= 0) {
                                                int i8 = i4;
                                                i2 = length;
                                                int i9 = 0;
                                                while (true) {
                                                    long j11 = jArr10[i9];
                                                    j9 = j10;
                                                    long[] jArr11 = jArr10;
                                                    if ((((~j11) << c3) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i10 = 8 - ((~(i9 - length2)) >>> 31);
                                                        int i11 = 0;
                                                        while (i11 < i10) {
                                                            if ((j11 & 255) < 128) {
                                                                y((DerivedState) objArr2[(i9 << 3) + i11], z);
                                                            }
                                                            j11 >>= i8;
                                                            i11++;
                                                            jArr9 = jArr9;
                                                        }
                                                        jArr8 = jArr9;
                                                        if (i10 != i8) {
                                                            break;
                                                        }
                                                    } else {
                                                        jArr8 = jArr9;
                                                    }
                                                    if (i9 == length2) {
                                                        break;
                                                    }
                                                    i9++;
                                                    jArr10 = jArr11;
                                                    j10 = j9;
                                                    jArr9 = jArr8;
                                                    i8 = 8;
                                                }
                                            }
                                        } else {
                                            jArr8 = jArr9;
                                            j9 = j10;
                                            i2 = length;
                                            y((DerivedState) objE, z);
                                        }
                                    }
                                    i3 = 8;
                                }
                                jArr8 = jArr9;
                                j9 = j10;
                                i2 = length;
                                i3 = 8;
                            } else {
                                jArr8 = jArr9;
                                c3 = c4;
                                j9 = j10;
                                i2 = length;
                                i3 = i4;
                            }
                            j10 = j9 >> i3;
                            i7++;
                            length = i2;
                            i4 = i3;
                            c4 = c3;
                            jArr9 = jArr8;
                            obj = null;
                        }
                        jArr7 = jArr9;
                        c2 = c4;
                        int i12 = length;
                        if (i6 != i4) {
                            break;
                        } else {
                            length = i12;
                        }
                    } else {
                        jArr7 = jArr9;
                        c2 = 7;
                    }
                    if (i5 == length) {
                        break;
                    }
                    i5++;
                    jArr9 = jArr7;
                    obj = null;
                    i4 = 8;
                }
            } else {
                j2 = 128;
                j3 = 255;
                j4 = -9187201950435737472L;
                c2 = 7;
            }
        } else {
            j2 = 128;
            j3 = 255;
            j4 = -9187201950435737472L;
            c2 = 7;
            for (Object obj3 : set) {
                if (obj3 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj3).b(null);
                } else {
                    y(obj3, z);
                    Object objE2 = mutableScatterMap.e(obj3);
                    if (objE2 != null) {
                        if (objE2 instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet2 = (MutableScatterSet) objE2;
                            Object[] objArr3 = mutableScatterSet2.f3368b;
                            long[] jArr12 = mutableScatterSet2.f3367a;
                            int length3 = jArr12.length - 2;
                            if (length3 >= 0) {
                                int i13 = 0;
                                while (true) {
                                    long j12 = jArr12[i13];
                                    if ((((~j12) << 7) & j12 & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i13 != length3) {
                                            break;
                                            break;
                                        }
                                        i13++;
                                    } else {
                                        int i14 = 8 - ((~(i13 - length3)) >>> 31);
                                        for (int i15 = 0; i15 < i14; i15++) {
                                            if ((j12 & 255) < 128) {
                                                y((DerivedState) objArr3[(i13 << 3) + i15], z);
                                            }
                                            j12 >>= 8;
                                        }
                                        if (i14 != 8) {
                                            break;
                                        } else if (i13 != length3) {
                                            break;
                                        } else {
                                            i13++;
                                        }
                                    }
                                }
                            }
                        } else {
                            y((DerivedState) objE2, z);
                        }
                    }
                }
            }
        }
        MutableScatterMap mutableScatterMap2 = this.f7951h;
        MutableScatterSet mutableScatterSet3 = this.f7952i;
        if (z) {
            MutableScatterSet mutableScatterSet4 = this.f7953j;
            if (mutableScatterSet4.c()) {
                long[] jArr13 = mutableScatterMap2.f3361a;
                int length4 = jArr13.length - 2;
                if (length4 >= 0) {
                    int i16 = 0;
                    while (true) {
                        long j13 = jArr13[i16];
                        if ((((~j13) << c2) & j13 & j4) != j4) {
                            int i17 = 8 - ((~(i16 - length4)) >>> 31);
                            int i18 = 0;
                            while (i18 < i17) {
                                if ((j13 & j3) < j2) {
                                    int i19 = (i16 << 3) + i18;
                                    Object obj4 = mutableScatterMap2.f3362b[i19];
                                    Object obj5 = mutableScatterMap2.f3363c[i19];
                                    if (obj5 instanceof MutableScatterSet) {
                                        MutableScatterSet mutableScatterSet5 = (MutableScatterSet) obj5;
                                        Object[] objArr4 = mutableScatterSet5.f3368b;
                                        long[] jArr14 = mutableScatterSet5.f3367a;
                                        int length5 = jArr14.length - 2;
                                        if (length5 >= 0) {
                                            j7 = j13;
                                            int i20 = 0;
                                            while (true) {
                                                long j14 = jArr14[i20];
                                                Object[] objArr5 = objArr4;
                                                long[] jArr15 = jArr14;
                                                if ((((~j14) << c2) & j14 & j4) != j4) {
                                                    int i21 = 8 - ((~(i20 - length5)) >>> 31);
                                                    int i22 = 0;
                                                    while (i22 < i21) {
                                                        if ((j14 & j3) < j2) {
                                                            jArr6 = jArr13;
                                                            int i23 = (i20 << 3) + i22;
                                                            j8 = j14;
                                                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr5[i23];
                                                            if (mutableScatterSet4.a(recomposeScopeImpl) || mutableScatterSet3.a(recomposeScopeImpl)) {
                                                                mutableScatterSet5.n(i23);
                                                            }
                                                        } else {
                                                            jArr6 = jArr13;
                                                            j8 = j14;
                                                        }
                                                        j14 = j8 >> 8;
                                                        i22++;
                                                        jArr13 = jArr6;
                                                    }
                                                    jArr5 = jArr13;
                                                    if (i21 != 8) {
                                                        break;
                                                    }
                                                } else {
                                                    jArr5 = jArr13;
                                                }
                                                if (i20 == length5) {
                                                    break;
                                                }
                                                i20++;
                                                objArr4 = objArr5;
                                                jArr14 = jArr15;
                                                jArr13 = jArr5;
                                            }
                                        } else {
                                            jArr5 = jArr13;
                                            j7 = j13;
                                        }
                                        zB = mutableScatterSet5.b();
                                    } else {
                                        jArr5 = jArr13;
                                        j7 = j13;
                                        obj5.getClass();
                                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj5;
                                        zB = mutableScatterSet4.a(recomposeScopeImpl2) || mutableScatterSet3.a(recomposeScopeImpl2);
                                    }
                                    if (zB) {
                                        mutableScatterMap2.n(i19);
                                    }
                                } else {
                                    jArr5 = jArr13;
                                    j7 = j13;
                                }
                                j13 = j7 >> 8;
                                i18++;
                                jArr13 = jArr5;
                            }
                            jArr4 = jArr13;
                            if (i17 != 8) {
                                break;
                            }
                        } else {
                            jArr4 = jArr13;
                        }
                        if (i16 == length4) {
                            break;
                        }
                        i16++;
                        jArr13 = jArr4;
                    }
                }
                mutableScatterSet4.f();
                B();
                return;
            }
        }
        if (mutableScatterSet3.c()) {
            long[] jArr16 = mutableScatterMap2.f3361a;
            int length6 = jArr16.length - 2;
            if (length6 >= 0) {
                int i24 = 0;
                while (true) {
                    long j15 = jArr16[i24];
                    if ((((~j15) << c2) & j15 & j4) != j4) {
                        int i25 = 8 - ((~(i24 - length6)) >>> 31);
                        int i26 = 0;
                        while (i26 < i25) {
                            if ((j15 & j3) < j2) {
                                int i27 = (i24 << 3) + i26;
                                Object obj6 = mutableScatterMap2.f3362b[i27];
                                Object obj7 = mutableScatterMap2.f3363c[i27];
                                if (obj7 instanceof MutableScatterSet) {
                                    MutableScatterSet mutableScatterSet6 = (MutableScatterSet) obj7;
                                    Object[] objArr6 = mutableScatterSet6.f3368b;
                                    long[] jArr17 = mutableScatterSet6.f3367a;
                                    int length7 = jArr17.length - 2;
                                    if (length7 >= 0) {
                                        j5 = j15;
                                        int i28 = 0;
                                        while (true) {
                                            long j16 = jArr17[i28];
                                            Object[] objArr7 = objArr6;
                                            long[] jArr18 = jArr17;
                                            if ((((~j16) << c2) & j16 & j4) != j4) {
                                                int i29 = 8 - ((~(i28 - length7)) >>> 31);
                                                int i30 = 0;
                                                while (i30 < i29) {
                                                    if ((j16 & j3) < j2) {
                                                        jArr3 = jArr16;
                                                        int i31 = (i28 << 3) + i30;
                                                        j6 = j16;
                                                        if (mutableScatterSet3.a((RecomposeScopeImpl) objArr7[i31])) {
                                                            mutableScatterSet6.n(i31);
                                                        }
                                                    } else {
                                                        jArr3 = jArr16;
                                                        j6 = j16;
                                                    }
                                                    j16 = j6 >> 8;
                                                    i30++;
                                                    jArr16 = jArr3;
                                                }
                                                jArr2 = jArr16;
                                                if (i29 != 8) {
                                                    break;
                                                }
                                            } else {
                                                jArr2 = jArr16;
                                            }
                                            if (i28 == length7) {
                                                break;
                                            }
                                            i28++;
                                            objArr6 = objArr7;
                                            jArr17 = jArr18;
                                            jArr16 = jArr2;
                                        }
                                    } else {
                                        jArr2 = jArr16;
                                        j5 = j15;
                                    }
                                    zA = mutableScatterSet6.b();
                                } else {
                                    jArr2 = jArr16;
                                    j5 = j15;
                                    obj7.getClass();
                                    zA = mutableScatterSet3.a((RecomposeScopeImpl) obj7);
                                }
                                if (zA) {
                                    mutableScatterMap2.n(i27);
                                }
                            } else {
                                jArr2 = jArr16;
                                j5 = j15;
                            }
                            j15 = j5 >> 8;
                            i26++;
                            jArr16 = jArr2;
                        }
                        jArr = jArr16;
                        if (i25 != 8) {
                            break;
                        }
                    } else {
                        jArr = jArr16;
                    }
                    if (i24 == length6) {
                        break;
                    }
                    i24++;
                    jArr16 = jArr;
                }
            }
            B();
            mutableScatterSet3.f();
        }
    }
}
