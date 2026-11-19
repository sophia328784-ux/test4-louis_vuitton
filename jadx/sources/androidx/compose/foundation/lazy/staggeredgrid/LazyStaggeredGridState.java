package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollDeltaBetweenPasses;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.lazy.layout.PrefetchScheduler;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import defpackage.l00;
import defpackage.n50;
import defpackage.n60;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB#\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB\u001d\b\u0016\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\u0007\u0010\f¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;", "Landroidx/compose/foundation/gestures/ScrollableState;", "", "initialFirstVisibleItems", "initialFirstVisibleOffsets", "Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;", "prefetchScheduler", "<init>", "([I[ILandroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V", "", "initialFirstVisibleItemIndex", "initialFirstVisibleItemOffset", "(II)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyStaggeredGridState implements ScrollableState {
    public static final Companion x = new Companion(null);
    public static final SaverKt$Saver$1 y = ListSaverKt.a(new n50(7), new n60(25));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f5665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LazyStaggeredGridMeasureResult f5666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LazyStaggeredGridScrollPosition f5667c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LazyStaggeredGridLaneInfo f5668e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableState f5669f;
    public final MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Remeasurement f5670h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LazyStaggeredGridState$remeasurementModifier$1 f5671i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AwaitFirstLayoutModifier f5672j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LazyLayoutBeyondBoundsInfo f5673k;
    public final boolean l;
    public final LazyLayoutPrefetchState m;
    public final ScrollableState n;
    public float o;
    public int p;
    public final MutableIntObjectMap q;
    public final MutableInteractionSource r;
    public final LazyLayoutPinnedItemList s;
    public final LazyLayoutItemAnimator t;
    public final MutableState u;
    public final MutableState v;
    public final LazyLayoutScrollDeltaBetweenPasses w;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$remeasurementModifier$1] */
    public LazyStaggeredGridState(int[] iArr, int[] iArr2, PrefetchScheduler prefetchScheduler) {
        this.f5667c = new LazyStaggeredGridScrollPosition(iArr, iArr2, new LazyStaggeredGridState$scrollPosition$1(2, this, LazyStaggeredGridState.class, "fillNearestIndices", "fillNearestIndices(II)[I", 0));
        this.d = SnapshotStateKt.f(LazyStaggeredGridMeasureResultKt.f5641a, SnapshotStateKt.h());
        this.f5668e = new LazyStaggeredGridLaneInfo();
        Boolean bool = Boolean.FALSE;
        this.f5669f = SnapshotStateKt.g(bool);
        this.g = SnapshotStateKt.g(bool);
        this.f5671i = new RemeasurementModifier() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$remeasurementModifier$1
            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public final void l(LayoutNode layoutNode) {
                this.f5674b.f5670h = layoutNode;
            }
        };
        this.f5672j = new AwaitFirstLayoutModifier();
        this.f5673k = new LazyLayoutBeyondBoundsInfo();
        this.l = true;
        this.m = new LazyLayoutPrefetchState(prefetchScheduler, null, 2, null);
        this.n = ScrollableStateKt.a(new l00(this, 23));
        this.p = -1;
        this.q = IntObjectMapKt.a();
        this.r = InteractionSourceKt.a();
        this.s = new LazyLayoutPinnedItemList();
        this.t = new LazyLayoutItemAnimator();
        this.u = ObservableScopeInvalidator.a();
        this.v = ObservableScopeInvalidator.a();
        this.w = new LazyLayoutScrollDeltaBetweenPasses();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return this.n.a();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean b() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.g).getF10755b()).booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
    
        if (r6.n.c(r7, r8, r0) == r1) goto L23;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(androidx.compose.foundation.MutatePriority r7, kotlin.jvm.functions.Function2 r8, kotlin.coroutines.Continuation r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scroll$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scroll$1 r0 = (androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scroll$1) r0
            int r1 = r0.f5678f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5678f = r1
            goto L18
        L13:
            androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scroll$1 r0 = new androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scroll$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f5678f
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3c
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            kotlin.ResultKt.b(r9)
            goto L6c
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L31:
            kotlin.coroutines.jvm.internal.SuspendLambda r7 = r0.f5676c
            r8 = r7
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            androidx.compose.foundation.MutatePriority r7 = r0.f5675b
            kotlin.ResultKt.b(r9)
            goto L5d
        L3c:
            kotlin.ResultKt.b(r9)
            androidx.compose.runtime.MutableState r9 = r6.d
            androidx.compose.runtime.SnapshotMutableStateImpl r9 = (androidx.compose.runtime.SnapshotMutableStateImpl) r9
            java.lang.Object r9 = r9.getF10755b()
            androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResult r2 = androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResultKt.f5641a
            if (r9 != r2) goto L5d
            r0.f5675b = r7
            r9 = r8
            kotlin.coroutines.jvm.internal.SuspendLambda r9 = (kotlin.coroutines.jvm.internal.SuspendLambda) r9
            r0.f5676c = r9
            r0.f5678f = r5
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier r9 = r6.f5672j
            java.lang.Object r9 = r9.n(r0)
            if (r9 != r1) goto L5d
            goto L6b
        L5d:
            r0.f5675b = r3
            r0.f5676c = r3
            r0.f5678f = r4
            androidx.compose.foundation.gestures.ScrollableState r6 = r6.n
            java.lang.Object r6 = r6.c(r7, r8, r0)
            if (r6 != r1) goto L6c
        L6b:
            return r1
        L6c:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState.c(androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean d() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f5669f).getF10755b()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f2) {
        return this.n.e(f2);
    }

    /* JADX WARN: Code duplicated, block: B:71:0x0154 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x0156 A[LOOP:1: B:62:0x011a->B:72:0x0156, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:95:0x015a A[EDGE_INSN: B:95:0x015a->B:73:0x015a BREAK  A[LOOP:1: B:62:0x011a->B:72:0x0156], SYNTHETIC] */
    public final void f(LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult, boolean z, boolean z2) {
        Object obj;
        Function1 f8547i;
        LazyStaggeredGridScrollPosition lazyStaggeredGridScrollPosition = this.f5667c;
        LazyLayoutScrollDeltaBetweenPasses lazyLayoutScrollDeltaBetweenPasses = this.w;
        if (!z && this.f5665a) {
            this.f5666b = lazyStaggeredGridMeasureResult;
            Snapshot.f8462e.getClass();
            Snapshot snapshotA = Snapshot.Companion.a();
            f8547i = snapshotA != null ? snapshotA.getF8547i() : null;
            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
            try {
                if (lazyLayoutScrollDeltaBetweenPasses.a() && Arrays.equals(lazyStaggeredGridMeasureResult.f5632a, lazyStaggeredGridScrollPosition.f5653b) && Arrays.equals(lazyStaggeredGridMeasureResult.f5633b, lazyStaggeredGridScrollPosition.d)) {
                    lazyLayoutScrollDeltaBetweenPasses.b();
                }
                return;
            } finally {
                Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
            }
        }
        if (z) {
            this.f5665a = true;
        }
        float f2 = this.o;
        float f3 = lazyStaggeredGridMeasureResult.f5634c;
        List list = lazyStaggeredGridMeasureResult.m;
        int[] iArr = lazyStaggeredGridMeasureResult.f5632a;
        int[] iArr2 = lazyStaggeredGridMeasureResult.f5633b;
        this.o = f2 - f3;
        ((SnapshotMutableStateImpl) this.d).setValue(lazyStaggeredGridMeasureResult);
        if (z2) {
            lazyStaggeredGridScrollPosition.d = iArr2;
            ((SnapshotMutableIntStateImpl) lazyStaggeredGridScrollPosition.f5655e).i(LazyStaggeredGridScrollPosition.b(lazyStaggeredGridScrollPosition.f5653b, iArr2));
        } else {
            lazyStaggeredGridScrollPosition.getClass();
            int iA = LazyStaggeredGridScrollPosition.a(iArr);
            int size = list.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    obj = null;
                    break;
                }
                obj = list.get(i2);
                if (((LazyStaggeredGridMeasuredItem) obj).f5643a == iA) {
                    break;
                } else {
                    i2++;
                }
            }
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = (LazyStaggeredGridMeasuredItem) obj;
            lazyStaggeredGridScrollPosition.g = lazyStaggeredGridMeasuredItem != null ? lazyStaggeredGridMeasuredItem.f5644b : null;
            lazyStaggeredGridScrollPosition.f5657h.h(iA);
            if (lazyStaggeredGridScrollPosition.f5656f || lazyStaggeredGridMeasureResult.l > 0) {
                lazyStaggeredGridScrollPosition.f5656f = true;
                Snapshot.f8462e.getClass();
                Snapshot snapshotA2 = Snapshot.Companion.a();
                f8547i = snapshotA2 != null ? snapshotA2.getF8547i() : null;
                Snapshot snapshotB2 = Snapshot.Companion.b(snapshotA2);
                try {
                    lazyStaggeredGridScrollPosition.f5653b = iArr;
                    ((SnapshotMutableIntStateImpl) lazyStaggeredGridScrollPosition.f5654c).i(LazyStaggeredGridScrollPosition.a(iArr));
                    lazyStaggeredGridScrollPosition.d = iArr2;
                    ((SnapshotMutableIntStateImpl) lazyStaggeredGridScrollPosition.f5655e).i(LazyStaggeredGridScrollPosition.b(iArr, iArr2));
                    Snapshot.Companion.e(snapshotA2, snapshotB2, f8547i);
                } catch (Throwable th) {
                    Snapshot.Companion.e(snapshotA2, snapshotB2, f8547i);
                    throw th;
                }
            }
            if (this.p != -1 && !list.isEmpty()) {
                int f5311a = ((LazyStaggeredGridItemInfo) CollectionsKt.B(list)).getF5212a();
                int f5311a2 = ((LazyStaggeredGridItemInfo) CollectionsKt.M(list)).getF5212a();
                int i3 = this.p;
                if (f5311a > i3 || i3 > f5311a2) {
                    this.p = -1;
                    MutableIntObjectMap mutableIntObjectMap = this.q;
                    Object[] objArr = mutableIntObjectMap.f3260c;
                    long[] jArr = mutableIntObjectMap.f3258a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i4 = 0;
                        while (true) {
                            long j2 = jArr[i4];
                            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                                if (i4 != length) {
                                    break;
                                    break;
                                }
                                i4++;
                            } else {
                                int i5 = 8 - ((~(i4 - length)) >>> 31);
                                for (int i6 = 0; i6 < i5; i6++) {
                                    if ((j2 & 255) < 128) {
                                        ((LazyLayoutPrefetchState.PrefetchHandle) objArr[(i4 << 3) + i6]).cancel();
                                    }
                                    j2 >>= 8;
                                }
                                if (i5 != 8) {
                                    break;
                                } else if (i4 != length) {
                                    break;
                                } else {
                                    i4++;
                                }
                            }
                        }
                    }
                    mutableIntObjectMap.c();
                }
            }
        }
        ((SnapshotMutableStateImpl) this.g).setValue(Boolean.valueOf(iArr[0] != 0 || iArr2[0] > 0));
        ((SnapshotMutableStateImpl) this.f5669f).setValue(Boolean.valueOf(lazyStaggeredGridMeasureResult.f5636f));
        if (z) {
            lazyLayoutScrollDeltaBetweenPasses.c(lazyStaggeredGridMeasureResult.f5635e, lazyStaggeredGridMeasureResult.f5640k, lazyStaggeredGridMeasureResult.t);
        }
    }

    public final LazyStaggeredGridLayoutInfo g() {
        return (LazyStaggeredGridLayoutInfo) ((SnapshotMutableStateImpl) this.d).getF10755b();
    }

    public final void h(float f2, LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult) {
        MutableIntObjectMap mutableIntObjectMap;
        int iD;
        int i2;
        long jD;
        if (!this.l || lazyStaggeredGridMeasureResult.m.isEmpty()) {
            return;
        }
        boolean z = f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM;
        List list = lazyStaggeredGridMeasureResult.m;
        int i3 = z ? ((LazyStaggeredGridMeasuredItem) CollectionsKt.M(list)).f5643a : ((LazyStaggeredGridMeasuredItem) CollectionsKt.B(list)).f5643a;
        if (i3 == this.p) {
            return;
        }
        this.p = i3;
        MutableIntSet mutableIntSetA = IntSetKt.a();
        LazyStaggeredGridSlots lazyStaggeredGridSlots = lazyStaggeredGridMeasureResult.f5638i;
        int[] iArr = lazyStaggeredGridSlots.f5663b;
        int length = iArr.length;
        int i4 = 0;
        while (true) {
            mutableIntObjectMap = this.q;
            if (i4 >= length) {
                break;
            }
            LazyStaggeredGridLaneInfo lazyStaggeredGridLaneInfo = this.f5668e;
            if (z) {
                iD = i3 + 1;
                int length2 = lazyStaggeredGridLaneInfo.f5608a + lazyStaggeredGridLaneInfo.f5609b.length;
                while (true) {
                    if (iD >= length2) {
                        iD = lazyStaggeredGridLaneInfo.f5608a + lazyStaggeredGridLaneInfo.f5609b.length;
                        break;
                    } else if (lazyStaggeredGridLaneInfo.a(iD, i4)) {
                        break;
                    } else {
                        iD++;
                    }
                }
            } else {
                iD = lazyStaggeredGridLaneInfo.d(i3, i4);
            }
            int i5 = iD;
            if (i5 < 0 || i5 >= lazyStaggeredGridMeasureResult.l || mutableIntSetA.a(i5)) {
                break;
            }
            mutableIntSetA.f3264b[mutableIntSetA.d(i5)] = i5;
            if (!mutableIntObjectMap.a(i5)) {
                boolean zA = lazyStaggeredGridMeasureResult.f5639j.a(i5);
                int i6 = zA ? 0 : i4;
                int i7 = zA ? length : 1;
                if (i7 == 1) {
                    i2 = iArr[i6];
                } else {
                    int[] iArr2 = lazyStaggeredGridSlots.f5662a;
                    int i8 = iArr2[i6];
                    int i9 = (i6 + i7) - 1;
                    i2 = (iArr2[i9] + iArr[i9]) - i8;
                }
                if (lazyStaggeredGridMeasureResult.u == Orientation.Vertical) {
                    Constraints.f10998b.getClass();
                    jD = Constraints.Companion.e(i2);
                } else {
                    Constraints.f10998b.getClass();
                    jD = Constraints.Companion.d(i2);
                }
                mutableIntObjectMap.i(i5, this.m.a(i5, jD, true, null));
            }
            i4++;
            i3 = i5;
        }
        long[] jArr = mutableIntObjectMap.f3258a;
        int length3 = jArr.length - 2;
        if (length3 < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j2 = jArr[i10];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length3)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j2) < 128) {
                        int i13 = (i10 << 3) + i12;
                        int i14 = mutableIntObjectMap.f3259b[i13];
                        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle = (LazyLayoutPrefetchState.PrefetchHandle) mutableIntObjectMap.f3260c[i13];
                        boolean zA2 = mutableIntSetA.a(i14);
                        if (!zA2) {
                            prefetchHandle.cancel();
                        }
                        if (!zA2) {
                            mutableIntObjectMap.h(i13);
                        }
                    }
                    j2 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length3) {
                return;
            } else {
                i10++;
            }
        }
    }

    public /* synthetic */ LazyStaggeredGridState(int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? 0 : i3);
    }

    public LazyStaggeredGridState(int i2, int i3) {
        this(new int[]{i2}, new int[]{i3}, null);
    }
}
