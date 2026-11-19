package androidx.compose.foundation.lazy.grid;

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
import defpackage.n50;
import defpackage.n60;
import defpackage.ze;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB'\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB%\b\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u000bB\u001d\b\u0016\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\f¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridState;", "Landroidx/compose/foundation/gestures/ScrollableState;", "", "firstVisibleItemIndex", "firstVisibleItemScrollOffset", "Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;", "prefetchStrategy", "<init>", "(IILandroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;)V", "Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;", "cacheWindow", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutCacheWindow;II)V", "(II)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyGridState implements ScrollableState {
    public static final Companion w = new Companion(null);
    public static final SaverKt$Saver$1 x = ListSaverKt.a(new n50(5), new n60(18));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyGridPrefetchStrategy f5354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f5355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LazyGridMeasureResult f5356c;
    public final LazyGridScrollPosition d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableState f5357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableInteractionSource f5358f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ScrollableState f5359h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f5360i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Remeasurement f5361j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LazyGridState$remeasurementModifier$1 f5362k;
    public final AwaitFirstLayoutModifier l;
    public final LazyLayoutItemAnimator m;
    public final LazyLayoutBeyondBoundsInfo n;
    public final LazyLayoutPrefetchState o;
    public final LazyGridState$prefetchScope$1 p;
    public final LazyLayoutPinnedItemList q;
    public final MutableState r;
    public final MutableState s;
    public final MutableState t;
    public final MutableState u;
    public final LazyLayoutScrollDeltaBetweenPasses v;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [androidx.compose.foundation.lazy.grid.LazyGridState$remeasurementModifier$1] */
    public LazyGridState(int i2, int i3, LazyGridPrefetchStrategy lazyGridPrefetchStrategy) {
        this.f5354a = lazyGridPrefetchStrategy;
        this.d = new LazyGridScrollPosition(i2, i3);
        this.f5357e = SnapshotStateKt.f(LazyGridStateKt.f5373a, SnapshotStateKt.h());
        this.f5358f = InteractionSourceKt.a();
        this.f5359h = ScrollableStateKt.a(new l00(this, 19));
        this.f5360i = true;
        this.f5362k = new RemeasurementModifier() { // from class: androidx.compose.foundation.lazy.grid.LazyGridState$remeasurementModifier$1
            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public final void l(LayoutNode layoutNode) {
                this.f5364b.f5361j = layoutNode;
            }
        };
        this.l = new AwaitFirstLayoutModifier();
        this.m = new LazyLayoutItemAnimator();
        this.n = new LazyLayoutBeyondBoundsInfo();
        lazyGridPrefetchStrategy.getClass();
        this.o = new LazyLayoutPrefetchState(null, new ze(this, i2, 7));
        this.p = new LazyGridState$prefetchScope$1(this);
        this.q = new LazyLayoutPinnedItemList();
        this.r = ObservableScopeInvalidator.a();
        this.s = ObservableScopeInvalidator.a();
        Boolean bool = Boolean.FALSE;
        this.t = SnapshotStateKt.g(bool);
        this.u = SnapshotStateKt.g(bool);
        this.v = new LazyLayoutScrollDeltaBetweenPasses();
    }

    public static void i(LazyGridState lazyGridState) {
        if (lazyGridState.f5359h.a()) {
            BuildersKt.c(((LazyGridMeasureResult) ((SnapshotMutableStateImpl) lazyGridState.f5357e).getF10755b()).f5307h, null, null, new LazyGridState$requestScrollToItem$1(lazyGridState, null), 3);
        }
        lazyGridState.k(0, 0, false);
    }

    public static Object j(LazyGridState lazyGridState, int i2, SuspendLambda suspendLambda) {
        lazyGridState.getClass();
        Object objC = lazyGridState.c(MutatePriority.Default, new LazyGridState$scrollToItem$2(lazyGridState, i2, null), suspendLambda);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : Unit.f71739a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return this.f5359h.a();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean b() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.u).getF10755b()).booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
    
        if (r6.f5359h.c(r7, r8, r0) == r1) goto L23;
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
            boolean r0 = r9 instanceof androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1 r0 = (androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1) r0
            int r1 = r0.f5370f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5370f = r1
            goto L18
        L13:
            androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1 r0 = new androidx.compose.foundation.lazy.grid.LazyGridState$scroll$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f5370f
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
            kotlin.coroutines.jvm.internal.SuspendLambda r7 = r0.f5368c
            r8 = r7
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            androidx.compose.foundation.MutatePriority r7 = r0.f5367b
            kotlin.ResultKt.b(r9)
            goto L5d
        L3c:
            kotlin.ResultKt.b(r9)
            androidx.compose.runtime.MutableState r9 = r6.f5357e
            androidx.compose.runtime.SnapshotMutableStateImpl r9 = (androidx.compose.runtime.SnapshotMutableStateImpl) r9
            java.lang.Object r9 = r9.getF10755b()
            androidx.compose.foundation.lazy.grid.LazyGridMeasureResult r2 = androidx.compose.foundation.lazy.grid.LazyGridStateKt.f5373a
            if (r9 != r2) goto L5d
            r0.f5367b = r7
            r9 = r8
            kotlin.coroutines.jvm.internal.SuspendLambda r9 = (kotlin.coroutines.jvm.internal.SuspendLambda) r9
            r0.f5368c = r9
            r0.f5370f = r5
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier r9 = r6.l
            java.lang.Object r9 = r9.n(r0)
            if (r9 != r1) goto L5d
            goto L6b
        L5d:
            r0.f5367b = r3
            r0.f5368c = r3
            r0.f5370f = r4
            androidx.compose.foundation.gestures.ScrollableState r6 = r6.f5359h
            java.lang.Object r6 = r6.c(r7, r8, r0)
            if (r6 != r1) goto L6c
        L6b:
            return r1
        L6c:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.grid.LazyGridState.c(androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean d() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.t).getF10755b()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f2) {
        return this.f5359h.e(f2);
    }

    public final void f(LazyGridMeasureResult lazyGridMeasureResult, boolean z, boolean z2) {
        LazyGridMeasuredItem[] lazyGridMeasuredItemArr;
        LazyGridMeasuredItem lazyGridMeasuredItem;
        LazyGridMeasuredItem[] lazyGridMeasuredItemArr2;
        LazyGridMeasuredItem lazyGridMeasuredItem2;
        LazyGridMeasuredItem[] lazyGridMeasuredItemArr3;
        LazyGridMeasuredItem lazyGridMeasuredItem3;
        List list = lazyGridMeasureResult.m;
        LazyGridMeasuredLine lazyGridMeasuredLine = lazyGridMeasureResult.f5302a;
        int i2 = lazyGridMeasureResult.f5303b;
        this.o.f5506f = list.size();
        Object obj = null;
        obj = null;
        obj = null;
        LazyGridScrollPosition lazyGridScrollPosition = this.d;
        LazyLayoutScrollDeltaBetweenPasses lazyLayoutScrollDeltaBetweenPasses = this.v;
        if (!z && this.f5355b) {
            this.f5356c = lazyGridMeasureResult;
            Snapshot.f8462e.getClass();
            Snapshot snapshotA = Snapshot.Companion.a();
            Function1 f8547i = snapshotA != null ? snapshotA.getF8547i() : null;
            Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
            try {
                if (lazyLayoutScrollDeltaBetweenPasses.a() && i2 == ((SnapshotMutableIntStateImpl) lazyGridScrollPosition.f5336b).f() && lazyGridMeasuredLine != null && (lazyGridMeasuredItemArr3 = lazyGridMeasuredLine.f5323b) != null && (lazyGridMeasuredItem3 = (LazyGridMeasuredItem) ArraysKt.x(lazyGridMeasuredItemArr3)) != null && lazyGridMeasuredItem3.f5311a == ((SnapshotMutableIntStateImpl) lazyGridScrollPosition.f5335a).f()) {
                    lazyLayoutScrollDeltaBetweenPasses.b();
                }
                return;
            } finally {
                Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
            }
        }
        if (z) {
            this.f5355b = true;
        }
        this.g -= lazyGridMeasureResult.d;
        ((SnapshotMutableStateImpl) this.f5357e).setValue(lazyGridMeasureResult);
        int i3 = 0;
        ((SnapshotMutableStateImpl) this.u).setValue(Boolean.valueOf(((lazyGridMeasuredLine != null ? lazyGridMeasuredLine.f5322a : 0) == 0 && i2 == 0) ? false : true));
        ((SnapshotMutableStateImpl) this.t).setValue(Boolean.valueOf(lazyGridMeasureResult.f5304c));
        if (z2) {
            lazyGridScrollPosition.getClass();
            if (i2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                InlineClassHelperKt.c("scrollOffset should be non-negative");
            }
            ((SnapshotMutableIntStateImpl) lazyGridScrollPosition.f5336b).i(i2);
        } else {
            lazyGridScrollPosition.getClass();
            if (lazyGridMeasuredLine != null && (lazyGridMeasuredItemArr2 = lazyGridMeasuredLine.f5323b) != null && (lazyGridMeasuredItem2 = (LazyGridMeasuredItem) ArraysKt.x(lazyGridMeasuredItemArr2)) != null) {
                obj = lazyGridMeasuredItem2.f5312b;
            }
            lazyGridScrollPosition.d = obj;
            if (lazyGridScrollPosition.f5337c || lazyGridMeasureResult.p > 0) {
                lazyGridScrollPosition.f5337c = true;
                if (i2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    InlineClassHelperKt.c("scrollOffset should be non-negative (" + i2 + ')');
                }
                if (lazyGridMeasuredLine != null && (lazyGridMeasuredItemArr = lazyGridMeasuredLine.f5323b) != null && (lazyGridMeasuredItem = (LazyGridMeasuredItem) ArraysKt.x(lazyGridMeasuredItemArr)) != null) {
                    i3 = lazyGridMeasuredItem.f5311a;
                }
                lazyGridScrollPosition.a(i3, i2);
            }
            if (this.f5360i) {
                this.f5354a.e(this.p, lazyGridMeasureResult);
            }
        }
        if (z) {
            lazyLayoutScrollDeltaBetweenPasses.c(lazyGridMeasureResult.f5306f, lazyGridMeasureResult.f5308i, lazyGridMeasureResult.f5307h);
        }
    }

    public final int g() {
        return ((SnapshotMutableIntStateImpl) this.d.f5335a).f();
    }

    public final LazyGridLayoutInfo h() {
        return (LazyGridLayoutInfo) ((SnapshotMutableStateImpl) this.f5357e).getF10755b();
    }

    public final void k(int i2, int i3, boolean z) {
        LazyGridScrollPosition lazyGridScrollPosition = this.d;
        if (((SnapshotMutableIntStateImpl) lazyGridScrollPosition.f5335a).f() != i2 || ((SnapshotMutableIntStateImpl) lazyGridScrollPosition.f5336b).f() != 0) {
            LazyLayoutItemAnimator lazyLayoutItemAnimator = this.m;
            lazyLayoutItemAnimator.e();
            lazyLayoutItemAnimator.f5455b = null;
            lazyLayoutItemAnimator.f5456c = -1;
            Object obj = this.f5354a;
            CacheWindowLogic cacheWindowLogic = obj instanceof CacheWindowLogic ? (CacheWindowLogic) obj : null;
            if (cacheWindowLogic != null) {
                cacheWindowLogic.m();
            }
        }
        lazyGridScrollPosition.a(i2, 0);
        lazyGridScrollPosition.d = null;
        if (!z) {
            ObservableScopeInvalidator.b(this.s);
            return;
        }
        Remeasurement remeasurement = this.f5361j;
        if (remeasurement != null) {
            remeasurement.e();
        }
    }

    public LazyGridState(int i2, int i3) {
        this(i2, i3, new DefaultLazyGridPrefetchStrategy(2));
    }

    public LazyGridState(int i2, int i3, LazyGridPrefetchStrategy lazyGridPrefetchStrategy, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? 0 : i3, (i4 & 4) != 0 ? new DefaultLazyGridPrefetchStrategy(2) : lazyGridPrefetchStrategy);
    }

    public LazyGridState() {
        this(0, 0, (LazyGridPrefetchStrategy) null, 7, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ LazyGridState(LazyLayoutCacheWindow lazyLayoutCacheWindow, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(lazyLayoutCacheWindow, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? 0 : i3);
    }

    public LazyGridState(LazyLayoutCacheWindow lazyLayoutCacheWindow, int i2, int i3) {
        this(i2, i3, new LazyGridCacheWindowPrefetchStrategy(lazyLayoutCacheWindow));
    }

    public /* synthetic */ LazyGridState(int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? 0 : i3);
    }
}
