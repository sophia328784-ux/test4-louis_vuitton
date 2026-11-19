package androidx.compose.foundation.lazy;

import android.os.Trace;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollDeltaBetweenPasses;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
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
import defpackage.l00;
import defpackage.md;
import defpackage.n50;
import defpackage.n60;
import defpackage.ze;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB'\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB%\b\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u000bB\u001d\b\u0016\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\f¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListState;", "Landroidx/compose/foundation/gestures/ScrollableState;", "", "firstVisibleItemIndex", "firstVisibleItemScrollOffset", "Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;", "prefetchStrategy", "<init>", "(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;)V", "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;", "cacheWindow", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)V", "(II)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyListState implements ScrollableState {
    public static final Companion y = new Companion(null);
    public static final SaverKt$Saver$1 z = ListSaverKt.a(new n50(6), new n60(23));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyListPrefetchStrategy f5232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f5233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LazyListMeasureResult f5234c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LazyListScrollPosition f5235e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableState f5236f;
    public final MutableInteractionSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f5237h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5238i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ScrollableState f5239j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f5240k;
    public Remeasurement l;
    public final LazyListState$remeasurementModifier$1 m;
    public final AwaitFirstLayoutModifier n;
    public final LazyLayoutItemAnimator o;
    public final LazyLayoutBeyondBoundsInfo p;
    public final LazyLayoutPrefetchState q;
    public final LazyListState$prefetchScope$1 r;
    public final LazyLayoutPinnedItemList s;
    public final MutableState t;
    public final MutableState u;
    public final MutableState v;
    public final MutableState w;
    public final LazyLayoutScrollDeltaBetweenPasses x;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListState$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [androidx.compose.foundation.lazy.LazyListState$remeasurementModifier$1] */
    public LazyListState(int i2, int i3, LazyListPrefetchStrategy lazyListPrefetchStrategy) {
        this.f5232a = lazyListPrefetchStrategy;
        this.f5235e = new LazyListScrollPosition(i2, i3);
        this.f5236f = SnapshotStateKt.f(LazyListStateKt.f5255a, SnapshotStateKt.h());
        this.g = InteractionSourceKt.a();
        this.f5239j = ScrollableStateKt.a(new l00(this, 21));
        this.f5240k = true;
        this.m = new RemeasurementModifier() { // from class: androidx.compose.foundation.lazy.LazyListState$remeasurementModifier$1
            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public final void l(LayoutNode layoutNode) {
                this.f5248b.l = layoutNode;
            }
        };
        this.n = new AwaitFirstLayoutModifier();
        this.o = new LazyLayoutItemAnimator();
        this.p = new LazyLayoutBeyondBoundsInfo();
        lazyListPrefetchStrategy.getClass();
        this.q = new LazyLayoutPrefetchState(null, new ze(this, i2, 8));
        this.r = new LazyListState$prefetchScope$1(this);
        this.s = new LazyLayoutPinnedItemList();
        this.t = ObservableScopeInvalidator.a();
        Boolean bool = Boolean.FALSE;
        this.u = SnapshotStateKt.g(bool);
        this.v = SnapshotStateKt.g(bool);
        this.w = ObservableScopeInvalidator.a();
        this.x = new LazyLayoutScrollDeltaBetweenPasses();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return this.f5239j.a();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean b() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.v).getF10755b()).booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
    
        if (r6.f5239j.c(r7, r8, r0) == r1) goto L23;
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
            boolean r0 = r9 instanceof androidx.compose.foundation.lazy.LazyListState$scroll$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.lazy.LazyListState$scroll$1 r0 = (androidx.compose.foundation.lazy.LazyListState$scroll$1) r0
            int r1 = r0.f5252f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5252f = r1
            goto L18
        L13:
            androidx.compose.foundation.lazy.LazyListState$scroll$1 r0 = new androidx.compose.foundation.lazy.LazyListState$scroll$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f5252f
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
            kotlin.coroutines.jvm.internal.SuspendLambda r7 = r0.f5250c
            r8 = r7
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            androidx.compose.foundation.MutatePriority r7 = r0.f5249b
            kotlin.ResultKt.b(r9)
            goto L5d
        L3c:
            kotlin.ResultKt.b(r9)
            androidx.compose.runtime.MutableState r9 = r6.f5236f
            androidx.compose.runtime.SnapshotMutableStateImpl r9 = (androidx.compose.runtime.SnapshotMutableStateImpl) r9
            java.lang.Object r9 = r9.getF10755b()
            androidx.compose.foundation.lazy.LazyListMeasureResult r2 = androidx.compose.foundation.lazy.LazyListStateKt.f5255a
            if (r9 != r2) goto L5d
            r0.f5249b = r7
            r9 = r8
            kotlin.coroutines.jvm.internal.SuspendLambda r9 = (kotlin.coroutines.jvm.internal.SuspendLambda) r9
            r0.f5250c = r9
            r0.f5252f = r5
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier r9 = r6.n
            java.lang.Object r9 = r9.n(r0)
            if (r9 != r1) goto L5d
            goto L6b
        L5d:
            r0.f5249b = r3
            r0.f5250c = r3
            r0.f5252f = r4
            androidx.compose.foundation.gestures.ScrollableState r6 = r6.f5239j
            java.lang.Object r6 = r6.c(r7, r8, r0)
            if (r6 != r1) goto L6c
        L6b:
            return r1
        L6c:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListState.c(androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean d() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.u).getF10755b()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f2) {
        return this.f5239j.e(f2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object, kotlin.Unit] */
    public final Object f(int i2, int i3, Continuation continuation) {
        LazyListState$animateScrollToItem$1 lazyListState$animateScrollToItem$1;
        if (continuation instanceof LazyListState$animateScrollToItem$1) {
            lazyListState$animateScrollToItem$1 = (LazyListState$animateScrollToItem$1) continuation;
            int i4 = lazyListState$animateScrollToItem$1.d;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                lazyListState$animateScrollToItem$1.d = i4 - Integer.MIN_VALUE;
            } else {
                lazyListState$animateScrollToItem$1 = new LazyListState$animateScrollToItem$1(this, continuation);
            }
        } else {
            lazyListState$animateScrollToItem$1 = new LazyListState$animateScrollToItem$1(this, continuation);
        }
        Object obj = lazyListState$animateScrollToItem$1.f5241b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = lazyListState$animateScrollToItem$1.d;
        try {
            if (i5 == 0) {
                ResultKt.b(obj);
                this.f5238i = true;
                LazyListState$animateScrollToItem$2 lazyListState$animateScrollToItem$2 = new LazyListState$animateScrollToItem$2(this, i2, i3, null);
                lazyListState$animateScrollToItem$1.d = 1;
                if (c(MutatePriority.Default, lazyListState$animateScrollToItem$2, lazyListState$animateScrollToItem$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i5 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            this.f5238i = false;
            this = Unit.f71739a;
            return this;
        } catch (Throwable th) {
            this.f5238i = false;
            throw th;
        }
    }

    public final void g(LazyListMeasureResult lazyListMeasureResult, boolean z2, boolean z3) {
        List list = lazyListMeasureResult.f5211k;
        int i2 = lazyListMeasureResult.f5204b;
        LazyListMeasuredItem lazyListMeasuredItem = lazyListMeasureResult.f5203a;
        this.q.f5506f = list.size();
        LazyLayoutScrollDeltaBetweenPasses lazyLayoutScrollDeltaBetweenPasses = this.x;
        LazyListScrollPosition lazyListScrollPosition = this.f5235e;
        if (!z2 && this.f5233b) {
            this.f5234c = lazyListMeasureResult;
            Snapshot.f8462e.getClass();
            Snapshot snapshotA = Snapshot.Companion.a();
            Function1 f8547i = snapshotA != null ? snapshotA.getF8547i() : null;
            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
            try {
                if (lazyLayoutScrollDeltaBetweenPasses.a() && lazyListMeasuredItem != null && lazyListMeasuredItem.f5212a == ((SnapshotMutableIntStateImpl) lazyListScrollPosition.f5226a).f() && i2 == ((SnapshotMutableIntStateImpl) lazyListScrollPosition.f5227b).f()) {
                    lazyLayoutScrollDeltaBetweenPasses.b();
                }
                return;
            } finally {
                Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
            }
        }
        if (z2) {
            this.f5233b = true;
        }
        ((SnapshotMutableStateImpl) this.v).setValue(Boolean.valueOf(((lazyListMeasuredItem != null ? lazyListMeasuredItem.f5212a : 0) == 0 && i2 == 0) ? false : true));
        ((SnapshotMutableStateImpl) this.u).setValue(Boolean.valueOf(lazyListMeasureResult.f5205c));
        this.f5237h -= lazyListMeasureResult.d;
        ((SnapshotMutableStateImpl) this.f5236f).setValue(lazyListMeasureResult);
        if (z3) {
            lazyListScrollPosition.getClass();
            if (i2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                InlineClassHelperKt.c("scrollOffset should be non-negative");
            }
            ((SnapshotMutableIntStateImpl) lazyListScrollPosition.f5227b).i(i2);
        } else {
            LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) CollectionsKt.firstOrNull(list);
            LazyListMeasuredItem lazyListMeasuredItem3 = (LazyListMeasuredItem) CollectionsKt.N(list);
            Trace.setCounter("firstVisibleItem:index", lazyListMeasuredItem2 != null ? lazyListMeasuredItem2.f5212a : -1L);
            Trace.setCounter("lastVisibleItem:index", lazyListMeasuredItem3 != null ? lazyListMeasuredItem3.f5212a : -1L);
            lazyListScrollPosition.getClass();
            lazyListScrollPosition.d = lazyListMeasuredItem != null ? lazyListMeasuredItem.l : null;
            if (lazyListScrollPosition.f5228c || lazyListMeasureResult.n > 0) {
                lazyListScrollPosition.f5228c = true;
                if (i2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    InlineClassHelperKt.c("scrollOffset should be non-negative");
                }
                lazyListScrollPosition.a(lazyListMeasuredItem != null ? lazyListMeasuredItem.f5212a : 0, i2);
            }
            if (this.f5240k) {
                this.f5232a.b(this.r, lazyListMeasureResult);
            }
        }
        if (z2) {
            lazyLayoutScrollDeltaBetweenPasses.c(lazyListMeasureResult.f5207f, lazyListMeasureResult.f5209i, lazyListMeasureResult.f5208h);
        }
    }

    public final int h() {
        return ((SnapshotMutableIntStateImpl) this.f5235e.f5226a).f();
    }

    public final int i() {
        return ((SnapshotMutableIntStateImpl) this.f5235e.f5227b).f();
    }

    public final LazyListLayoutInfo j() {
        return (LazyListLayoutInfo) ((SnapshotMutableStateImpl) this.f5236f).getF10755b();
    }

    public final Object k(int i2, int i3, Continuation continuation) {
        Object objC = c(MutatePriority.Default, new LazyListState$scrollToItem$2(this, i2, i3, null), continuation);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : Unit.f71739a;
    }

    public final void l(int i2, int i3, boolean z2) {
        LazyListScrollPosition lazyListScrollPosition = this.f5235e;
        if (((SnapshotMutableIntStateImpl) lazyListScrollPosition.f5226a).f() != i2 || ((SnapshotMutableIntStateImpl) lazyListScrollPosition.f5227b).f() != i3) {
            LazyLayoutItemAnimator lazyLayoutItemAnimator = this.o;
            lazyLayoutItemAnimator.e();
            lazyLayoutItemAnimator.f5455b = null;
            lazyLayoutItemAnimator.f5456c = -1;
            Object obj = this.f5232a;
            CacheWindowLogic cacheWindowLogic = obj instanceof CacheWindowLogic ? (CacheWindowLogic) obj : null;
            if (cacheWindowLogic != null) {
                cacheWindowLogic.m();
            }
        }
        lazyListScrollPosition.a(i2, i3);
        lazyListScrollPosition.d = null;
        Remeasurement remeasurement = this.l;
        if (remeasurement != null) {
            remeasurement.e();
        }
    }

    public LazyListState(int i2, int i3) {
        this(i2, i3, new DefaultLazyListPrefetchStrategy(2));
    }

    public LazyListState(int i2, int i3, LazyListPrefetchStrategy lazyListPrefetchStrategy, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? 0 : i3, (i4 & 4) != 0 ? new DefaultLazyListPrefetchStrategy(2) : lazyListPrefetchStrategy);
    }

    public LazyListState() {
        this(0, 0, (LazyListPrefetchStrategy) null, 7, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ LazyListState(LazyLayoutCacheWindow lazyLayoutCacheWindow, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyLayoutCacheWindow, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? 0 : i3);
    }

    public LazyListState(LazyLayoutCacheWindow lazyLayoutCacheWindow, int i2, int i3) {
        this(i2, i3, new LazyListCacheWindowStrategy(lazyLayoutCacheWindow));
    }

    public /* synthetic */ LazyListState(int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? 0 : i3);
    }
}
