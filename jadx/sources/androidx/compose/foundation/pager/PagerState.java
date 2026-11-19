package androidx.compose.foundation.pager;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.lazy.layout.PrefetchScheduler;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import defpackage.p70;
import defpackage.u2;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u00002\u00020\u0001B)\b\u0000\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB\u001d\b\u0016\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/pager/PagerState;", "Landroidx/compose/foundation/gestures/ScrollableState;", "", "currentPage", "", "currentPageOffsetFraction", "Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;", "prefetchScheduler", "<init>", "(IFLandroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V", "(IF)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class PagerState implements ScrollableState {
    public final LazyLayoutPinnedItemList A;
    public final MutableState B;
    public final MutableState C;
    public final MutableState D;
    public final MutableState E;
    public final MutableState F;
    public final MutableState G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f5757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PagerMeasureResult f5758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f5759c;
    public final PagerScrollPosition d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5760e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5761f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f5762h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f5763i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f5764j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ScrollableState f5765k;
    public final boolean l;
    public final MutableState m;
    public Density n;
    public int o;
    public final MutableInteractionSource p;
    public final MutableIntState q;
    public final MutableIntState r;
    public final State s;
    public final State t;
    public final LazyLayoutPrefetchState u;
    public final PagerCacheWindowLogic v;
    public final LazyLayoutBeyondBoundsInfo w;
    public final AwaitFirstLayoutModifier x;
    public final MutableState y;
    public final PagerState$remeasurementModifier$1 z;

    /* JADX WARN: Type inference failed for: r5v11, types: [androidx.compose.foundation.pager.PagerState$remeasurementModifier$1] */
    public PagerState(int i2, float f2, PrefetchScheduler prefetchScheduler) {
        double d = f2;
        if (-0.5d > d || d > 0.5d) {
            InlineClassHelperKt.a("currentPageOffsetFraction " + f2 + " is not within the range -0.5 to 0.5");
        }
        Offset.f8806b.getClass();
        this.f5759c = SnapshotStateKt.g(new Offset(0L));
        this.d = new PagerScrollPosition(i2, f2, this);
        this.f5760e = i2;
        this.g = Long.MAX_VALUE;
        this.f5765k = ScrollableStateKt.a(new p70(this, 1));
        this.l = true;
        this.m = SnapshotStateKt.f(PagerStateKt.f5786c, SnapshotStateKt.h());
        this.n = PagerStateKt.f5785b;
        this.p = InteractionSourceKt.a();
        this.q = SnapshotIntStateKt.a(-1);
        this.r = SnapshotIntStateKt.a(i2);
        this.s = SnapshotStateKt.d(SnapshotStateKt.n(), new u2(this, 10));
        this.t = SnapshotStateKt.d(SnapshotStateKt.n(), new u2(this, 11));
        LazyLayoutPrefetchState lazyLayoutPrefetchState = new LazyLayoutPrefetchState(prefetchScheduler, new p70(this, 2));
        this.u = lazyLayoutPrefetchState;
        this.v = new PagerCacheWindowLogic(new LazyLayoutCacheWindow() { // from class: androidx.compose.foundation.pager.PagerState$pagerCacheWindow$1
            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow
            public final int a() {
                return this.f5774a.o;
            }
        }, lazyLayoutPrefetchState, new u2(this, 12));
        this.w = new LazyLayoutBeyondBoundsInfo();
        this.x = new AwaitFirstLayoutModifier();
        this.y = SnapshotStateKt.g(null);
        this.z = new RemeasurementModifier() { // from class: androidx.compose.foundation.pager.PagerState$remeasurementModifier$1
            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public final void l(LayoutNode layoutNode) {
                ((SnapshotMutableStateImpl) this.f5775b.y).setValue(layoutNode);
            }
        };
        ConstraintsKt.b(0, 0, 0, 0, 15);
        this.A = new LazyLayoutPinnedItemList();
        this.B = ObservableScopeInvalidator.a();
        this.C = ObservableScopeInvalidator.a();
        Boolean bool = Boolean.FALSE;
        this.D = SnapshotStateKt.g(bool);
        this.E = SnapshotStateKt.g(bool);
        this.F = SnapshotStateKt.g(bool);
        this.G = SnapshotStateKt.g(bool);
    }

    public static /* synthetic */ Object g(PagerState pagerState, int i2, TweenSpec tweenSpec, Continuation continuation, int i3) {
        AnimationSpec animationSpecB = tweenSpec;
        if ((i3 & 4) != 0) {
            animationSpecB = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);
        }
        return pagerState.f(i2, animationSpecB, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0076, code lost:
    
        if (r9.c(r7, r8, r0) == r1) goto L24;
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object u(androidx.compose.foundation.pager.PagerState r6, androidx.compose.foundation.MutatePriority r7, kotlin.jvm.functions.Function2 r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof androidx.compose.foundation.pager.PagerState$scroll$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.pager.PagerState$scroll$1 r0 = (androidx.compose.foundation.pager.PagerState$scroll$1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            androidx.compose.foundation.pager.PagerState$scroll$1 r0 = new androidx.compose.foundation.pager.PagerState$scroll$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.f5780e
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.g
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L40
            if (r2 == r5) goto L33
            if (r2 != r4) goto L2d
            androidx.compose.foundation.pager.PagerState r6 = r0.f5778b
            kotlin.ResultKt.b(r9)
            goto L79
        L2d:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L33:
            kotlin.coroutines.jvm.internal.SuspendLambda r6 = r0.d
            r8 = r6
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            androidx.compose.foundation.MutatePriority r7 = r0.f5779c
            androidx.compose.foundation.pager.PagerState r6 = r0.f5778b
            kotlin.ResultKt.b(r9)
            goto L55
        L40:
            kotlin.ResultKt.b(r9)
            r0.f5778b = r6
            r0.f5779c = r7
            r9 = r8
            kotlin.coroutines.jvm.internal.SuspendLambda r9 = (kotlin.coroutines.jvm.internal.SuspendLambda) r9
            r0.d = r9
            r0.g = r5
            java.lang.Object r9 = r6.i(r0)
            if (r9 != r1) goto L55
            goto L78
        L55:
            androidx.compose.foundation.gestures.ScrollableState r9 = r6.f5765k
            boolean r9 = r9.a()
            if (r9 != 0) goto L68
            int r9 = r6.k()
            androidx.compose.runtime.MutableIntState r2 = r6.r
            androidx.compose.runtime.SnapshotMutableIntStateImpl r2 = (androidx.compose.runtime.SnapshotMutableIntStateImpl) r2
            r2.i(r9)
        L68:
            androidx.compose.foundation.gestures.ScrollableState r9 = r6.f5765k
            r0.f5778b = r6
            r0.f5779c = r3
            r0.d = r3
            r0.g = r4
            java.lang.Object r7 = r9.c(r7, r8, r0)
            if (r7 != r1) goto L79
        L78:
            return r1
        L79:
            androidx.compose.runtime.MutableIntState r6 = r6.q
            androidx.compose.runtime.SnapshotMutableIntStateImpl r6 = (androidx.compose.runtime.SnapshotMutableIntStateImpl) r6
            r7 = -1
            r6.i(r7)
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState.u(androidx.compose.foundation.pager.PagerState, androidx.compose.foundation.MutatePriority, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static Object v(PagerState pagerState, int i2, ContinuationImpl continuationImpl) {
        pagerState.getClass();
        Object objC = pagerState.c(MutatePriority.Default, new PagerState$scrollToPage$2(pagerState, i2, null), continuationImpl);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : Unit.f71739a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return this.f5765k.a();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean b() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.E).getF10755b()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final Object c(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        return u(this, mutatePriority, function2, continuation);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean d() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.D).getF10755b()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f2) {
        return this.f5765k.e(f2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
    
        if (c(androidx.compose.foundation.MutatePriority.Default, r6, r0) == r1) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(int r13, androidx.compose.animation.core.AnimationSpec r14, kotlin.coroutines.Continuation r15) {
        /*
            r12 = this;
            boolean r0 = r15 instanceof androidx.compose.foundation.pager.PagerState$animateScrollToPage$1
            if (r0 == 0) goto L13
            r0 = r15
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$1 r0 = (androidx.compose.foundation.pager.PagerState$animateScrollToPage$1) r0
            int r1 = r0.f5769f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5769f = r1
            goto L18
        L13:
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$1 r0 = new androidx.compose.foundation.pager.PagerState$animateScrollToPage$1
            r0.<init>(r12, r15)
        L18:
            java.lang.Object r15 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f5769f
            r3 = 0
            r4 = 0
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L3b
            if (r2 == r6) goto L32
            if (r2 != r5) goto L2c
            kotlin.ResultKt.b(r15)
            goto L82
        L2c:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r12)
            return r3
        L32:
            int r13 = r0.f5766b
            androidx.compose.animation.core.AnimationSpec r14 = r0.f5767c
            kotlin.ResultKt.b(r15)
        L39:
            r10 = r14
            goto L63
        L3b:
            kotlin.ResultKt.b(r15)
            int r15 = r12.k()
            if (r13 != r15) goto L4d
            float r15 = r12.l()
            int r15 = (r15 > r4 ? 1 : (r15 == r4 ? 0 : -1))
            if (r15 != 0) goto L4d
            goto L53
        L4d:
            int r15 = r12.o()
            if (r15 != 0) goto L56
        L53:
            kotlin.Unit r12 = kotlin.Unit.f71739a
            return r12
        L56:
            r0.f5767c = r14
            r0.f5766b = r13
            r0.f5769f = r6
            java.lang.Object r15 = r12.i(r0)
            if (r15 != r1) goto L39
            goto L81
        L63:
            int r8 = r12.j(r13)
            int r13 = r12.q()
            float r13 = (float) r13
            float r9 = r4 * r13
            androidx.compose.foundation.pager.PagerState$animateScrollToPage$3 r6 = new androidx.compose.foundation.pager.PagerState$animateScrollToPage$3
            r11 = 0
            r7 = r12
            r6.<init>(r7, r8, r9, r10, r11)
            r0.f5767c = r3
            r0.f5769f = r5
            androidx.compose.foundation.MutatePriority r12 = androidx.compose.foundation.MutatePriority.Default
            java.lang.Object r12 = r7.c(r12, r6, r0)
            if (r12 != r1) goto L82
        L81:
            return r1
        L82:
            kotlin.Unit r12 = kotlin.Unit.f71739a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerState.f(int, androidx.compose.animation.core.AnimationSpec, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0120 A[Catch: all -> 0x0135, TryCatch #0 {all -> 0x0135, blocks: (B:46:0x00cc, B:49:0x00d5, B:52:0x00e2, B:54:0x00f0, B:62:0x0126, B:60:0x0120, B:57:0x0108), top: B:78:0x00cc }] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void h(PagerMeasureResult pagerMeasureResult, boolean z, boolean z2) {
        List list = pagerMeasureResult.f5739a;
        int i2 = pagerMeasureResult.m;
        MeasuredPage measuredPage = pagerMeasureResult.f5746j;
        MeasuredPage measuredPage2 = pagerMeasureResult.f5747k;
        float f2 = pagerMeasureResult.l;
        this.u.f5506f = list.size();
        int i3 = pagerMeasureResult.f5740b;
        this.o = pagerMeasureResult.f5741c + i3;
        if (!z && this.f5757a) {
            this.f5758b = pagerMeasureResult;
            return;
        }
        boolean z3 = true;
        if (z) {
            this.f5757a = true;
        }
        PagerCacheWindowLogic pagerCacheWindowLogic = this.v;
        boolean z4 = this.l;
        PagerScrollPosition pagerScrollPosition = this.d;
        if (z2) {
            ((SnapshotMutableFloatStateImpl) pagerScrollPosition.f5751c).w(f2);
        } else {
            pagerScrollPosition.getClass();
            pagerScrollPosition.f5752e = measuredPage2 != null ? measuredPage2.f5703e : null;
            if (pagerScrollPosition.d || !list.isEmpty()) {
                pagerScrollPosition.d = true;
                int i4 = measuredPage2 != null ? measuredPage2.f5700a : 0;
                ((SnapshotMutableIntStateImpl) pagerScrollPosition.f5750b).i(i4);
                pagerScrollPosition.f5753f.h(i4);
                ((SnapshotMutableFloatStateImpl) pagerScrollPosition.f5751c).w(f2);
            }
            if (z4) {
                PagerCacheWindowScope pagerCacheWindowScope = pagerCacheWindowLogic.s;
                pagerCacheWindowScope.f5716b = pagerMeasureResult;
                pagerCacheWindowScope.f5717c = pagerCacheWindowLogic.q;
                pagerCacheWindowLogic.k(pagerCacheWindowScope);
            }
        }
        ((SnapshotMutableStateImpl) this.m).setValue(pagerMeasureResult);
        ((SnapshotMutableStateImpl) this.D).setValue(Boolean.valueOf(pagerMeasureResult.n));
        if ((measuredPage != null ? measuredPage.f5700a : 0) == 0 && i2 == 0) {
            z3 = false;
        }
        ((SnapshotMutableStateImpl) this.E).setValue(Boolean.valueOf(z3));
        if (measuredPage != null) {
            this.f5760e = measuredPage.f5700a;
        }
        this.f5761f = i2;
        Snapshot.f8462e.getClass();
        Snapshot snapshotA = Snapshot.Companion.a();
        Function1 function1E = snapshotA != null ? snapshotA.getF8547i() : null;
        Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
        if (z4) {
            try {
                if (pagerMeasureResult.f5745i < o() && Math.abs(this.f5764j) > 0.5f) {
                    float f3 = this.f5764j;
                    if (n().getF5742e() == Orientation.Vertical) {
                        if (Math.signum(f3) != Math.signum(-Float.intBitsToFloat((int) (s() & BodyPartID.bodyIdMax)))) {
                            if (t()) {
                            }
                        }
                    } else if (Math.signum(f3) != Math.signum(-Float.intBitsToFloat((int) (s() >> 32)))) {
                        if (t()) {
                        }
                    }
                    float f4 = this.f5764j;
                    PagerCacheWindowScope pagerCacheWindowScope2 = pagerCacheWindowLogic.s;
                    pagerCacheWindowScope2.f5716b = pagerMeasureResult;
                    pagerCacheWindowScope2.f5717c = pagerCacheWindowLogic.q;
                    pagerCacheWindowLogic.j(pagerCacheWindowScope2, -f4);
                }
            } catch (Throwable th) {
                Snapshot.Companion.e(snapshotA, snapshotB, function1E);
                throw th;
            }
        }
        Snapshot.Companion.e(snapshotA, snapshotB, function1E);
        this.g = PagerStateKt.a(pagerMeasureResult, o());
        o();
        int iA = (int) (pagerMeasureResult.f5742e == Orientation.Horizontal ? pagerMeasureResult.a() >> 32 : pagerMeasureResult.a() & BodyPartID.bodyIdMax);
        long jD = RangesKt.d(pagerMeasureResult.o.d(iA, i3, -pagerMeasureResult.f5743f, pagerMeasureResult.d), 0, iA);
        long j2 = this.g;
        if (jD > j2) {
            jD = j2;
        }
        this.f5762h = jD;
    }

    public final Object i(ContinuationImpl continuationImpl) {
        Object objN;
        return (((SnapshotMutableStateImpl) this.m).getF10755b() == PagerStateKt.f5786c && (objN = this.x.n(continuationImpl)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? objN : Unit.f71739a;
    }

    public final int j(int i2) {
        if (o() > 0) {
            return RangesKt.d(i2, 0, o() - 1);
        }
        return 0;
    }

    public final int k() {
        return ((SnapshotMutableIntStateImpl) this.d.f5750b).f();
    }

    public final float l() {
        return ((SnapshotMutableFloatStateImpl) this.d.f5751c).a();
    }

    public final boolean m() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.F).getF10755b()).booleanValue();
    }

    public final PagerLayoutInfo n() {
        return (PagerLayoutInfo) ((SnapshotMutableStateImpl) this.m).getF10755b();
    }

    public abstract int o();

    public final int p() {
        return ((PagerMeasureResult) ((SnapshotMutableStateImpl) this.m).getF10755b()).f5740b;
    }

    public final int q() {
        return ((PagerMeasureResult) ((SnapshotMutableStateImpl) this.m).getF10755b()).f5741c + p();
    }

    public final int r() {
        return ((Number) this.s.getF10755b()).intValue();
    }

    public final long s() {
        return ((Offset) ((SnapshotMutableStateImpl) this.f5759c).getF10755b()).f8808a;
    }

    public final boolean t() {
        return ((int) Float.intBitsToFloat((int) (s() >> 32))) == 0 && ((int) Float.intBitsToFloat((int) (s() & BodyPartID.bodyIdMax))) == 0;
    }

    public final void w(float f2, int i2, boolean z) {
        PagerScrollPosition pagerScrollPosition = this.d;
        MutableIntState mutableIntState = pagerScrollPosition.f5750b;
        MutableFloatState mutableFloatState = pagerScrollPosition.f5751c;
        if (((SnapshotMutableIntStateImpl) mutableIntState).f() != i2 || ((SnapshotMutableFloatStateImpl) mutableFloatState).a() != f2) {
            this.v.m();
        }
        ((SnapshotMutableIntStateImpl) pagerScrollPosition.f5750b).i(i2);
        pagerScrollPosition.f5753f.h(i2);
        ((SnapshotMutableFloatStateImpl) mutableFloatState).w(f2);
        pagerScrollPosition.f5752e = null;
        if (!z) {
            ObservableScopeInvalidator.b(this.C);
            return;
        }
        Remeasurement remeasurement = (Remeasurement) ((SnapshotMutableStateImpl) this.y).getF10755b();
        if (remeasurement != null) {
            remeasurement.e();
        }
    }

    public PagerState() {
        this(0, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 7, null);
    }

    public /* synthetic */ PagerState(int i2, float f2, PrefetchScheduler prefetchScheduler, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i2, (i3 & 2) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2, (i3 & 4) != 0 ? null : prefetchScheduler);
    }

    public /* synthetic */ PagerState(int i2, float f2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i2, (i3 & 2) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2);
    }

    public PagerState(int i2, float f2) {
        this(i2, f2, null);
    }
}
