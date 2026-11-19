package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.Velocity;
import defpackage.md;
import defpackage.xo0;
import defpackage.yt0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/compose/foundation/gestures/ScrollingLogic;", "Landroidx/compose/foundation/gestures/ScrollLogic;", "Landroidx/compose/foundation/gestures/ScrollableState;", "scrollableState", "Landroidx/compose/foundation/OverscrollEffect;", "overscrollEffect", "Landroidx/compose/foundation/gestures/FlingBehavior;", "flingBehavior", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "", "reverseDirection", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "nestedScrollDispatcher", "Landroidx/compose/foundation/gestures/OnScrollChangedDispatcher;", "onScrollChangedDispatcher", "Lkotlin/Function0;", "isScrollableNodeAttached", "<init>", "(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/foundation/gestures/OnScrollChangedDispatcher;Lkotlin/jvm/functions/Function0;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ScrollingLogic implements ScrollLogic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ScrollableState f4707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public OverscrollEffect f4708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FlingBehavior f4709c;
    public Orientation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public NestedScrollDispatcher f4711f;
    public final OnScrollChangedDispatcher g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Function0 f4712h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4713i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4714j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ScrollScope f4715k;
    public final ScrollingLogic$nestedScrollScope$1 l;
    public final xo0 m;

    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1] */
    public ScrollingLogic(ScrollableState scrollableState, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, Orientation orientation, boolean z, NestedScrollDispatcher nestedScrollDispatcher, OnScrollChangedDispatcher onScrollChangedDispatcher, Function0<Boolean> function0) {
        this.f4707a = scrollableState;
        this.f4708b = overscrollEffect;
        this.f4709c = flingBehavior;
        this.d = orientation;
        this.f4710e = z;
        this.f4711f = nestedScrollDispatcher;
        this.g = onScrollChangedDispatcher;
        this.f4712h = function0;
        NestedScrollSource.f9260a.getClass();
        this.f4714j = NestedScrollSource.f9261b;
        this.f4715k = ScrollableKt.f4675b;
        this.l = new NestedScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1
            @Override // androidx.compose.foundation.gestures.NestedScrollScope
            public final long a(int i2, long j2) {
                ScrollingLogic scrollingLogic = this.f4727a;
                scrollingLogic.f4714j = i2;
                OverscrollEffect overscrollEffect2 = scrollingLogic.f4708b;
                return (overscrollEffect2 == null || !(scrollingLogic.f4707a.d() || scrollingLogic.f4707a.b())) ? scrollingLogic.e(scrollingLogic.f4715k, j2, i2) : overscrollEffect2.o(j2, scrollingLogic.f4714j, scrollingLogic.m);
            }

            @Override // androidx.compose.foundation.gestures.NestedScrollScope
            public final long b(int i2, long j2) {
                ScrollingLogic scrollingLogic = this.f4727a;
                return scrollingLogic.e(scrollingLogic.f4715k, j2, i2);
            }
        };
        this.m = new xo0(this, 15);
    }

    @Override // androidx.compose.foundation.gestures.ScrollLogic
    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getF4713i() {
        return this.f4713i;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.ScrollLogic
    public final Object b(long j2, ContinuationImpl continuationImpl) throws Throwable {
        ScrollingLogic$doFlingAnimation$1 scrollingLogic$doFlingAnimation$1;
        ScrollingLogic scrollingLogic;
        Throwable th;
        Ref$LongRef ref$LongRef;
        if (continuationImpl instanceof ScrollingLogic$doFlingAnimation$1) {
            scrollingLogic$doFlingAnimation$1 = (ScrollingLogic$doFlingAnimation$1) continuationImpl;
            int i2 = scrollingLogic$doFlingAnimation$1.f4718e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                scrollingLogic$doFlingAnimation$1.f4718e = i2 - Integer.MIN_VALUE;
            } else {
                scrollingLogic$doFlingAnimation$1 = new ScrollingLogic$doFlingAnimation$1(this, continuationImpl);
            }
        } else {
            scrollingLogic$doFlingAnimation$1 = new ScrollingLogic$doFlingAnimation$1(this, continuationImpl);
        }
        Object obj = scrollingLogic$doFlingAnimation$1.f4717c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = scrollingLogic$doFlingAnimation$1.f4718e;
        if (i3 != 0) {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$LongRef = scrollingLogic$doFlingAnimation$1.f4716b;
            try {
                ResultKt.b(obj);
                scrollingLogic = this;
                scrollingLogic.f4713i = false;
                return new Velocity(ref$LongRef.f71920b);
            } catch (Throwable th2) {
                th = th2;
                scrollingLogic = this;
                scrollingLogic.f4713i = false;
                throw th;
            }
        }
        ResultKt.b(obj);
        Ref$LongRef ref$LongRef2 = new Ref$LongRef();
        ref$LongRef2.f71920b = j2;
        this.f4713i = true;
        try {
            MutatePriority mutatePriority = MutatePriority.Default;
            scrollingLogic = this;
            try {
                ScrollingLogic$doFlingAnimation$2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(scrollingLogic, ref$LongRef2, j2, null);
                scrollingLogic$doFlingAnimation$1.f4716b = ref$LongRef2;
                scrollingLogic$doFlingAnimation$1.f4718e = 1;
                if (scrollingLogic.h(mutatePriority, scrollingLogic$doFlingAnimation$2, scrollingLogic$doFlingAnimation$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                ref$LongRef = ref$LongRef2;
                scrollingLogic.f4713i = false;
                return new Velocity(ref$LongRef.f71920b);
            } catch (Throwable th3) {
                th = th3;
                th = th;
                scrollingLogic.f4713i = false;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            scrollingLogic = this;
        }
    }

    @Override // androidx.compose.foundation.gestures.ScrollLogic
    public final long c(long j2) {
        if (!this.f4707a.a()) {
            return j(f(this.f4707a.e(f(i(j2)))));
        }
        Offset.f8806b.getClass();
        return 0L;
    }

    public final Object d(long j2, boolean z, SuspendLambda suspendLambda) {
        if (z) {
            FlingBehavior flingBehavior = this.f4709c;
            yt0 yt0Var = ScrollableKt.f4674a;
            if (flingBehavior instanceof ScrollableDefaultFlingBehavior) {
                return Unit.f71739a;
            }
        }
        long jA = Velocity.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, j2, this.d == Orientation.Horizontal ? 1 : 2);
        ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$1 = new ScrollingLogic$onScrollStopped$performFling$1(this, null);
        OverscrollEffect overscrollEffect = this.f4708b;
        if (overscrollEffect == null || !(this.f4707a.d() || this.f4707a.b())) {
            Object objInvoke = scrollingLogic$onScrollStopped$performFling$1.invoke(new Velocity(jA), suspendLambda);
            return objInvoke == CoroutineSingletons.COROUTINE_SUSPENDED ? objInvoke : Unit.f71739a;
        }
        Object objM = overscrollEffect.m(jA, scrollingLogic$onScrollStopped$performFling$1, suspendLambda);
        return objM == CoroutineSingletons.COROUTINE_SUSPENDED ? objM : Unit.f71739a;
    }

    public final long e(ScrollScope scrollScope, long j2, int i2) {
        long jL0;
        NestedScrollNode nestedScrollNode = this.f4711f.f9241a;
        NestedScrollNode nestedScrollNode2 = null;
        if (nestedScrollNode != null && nestedScrollNode.o) {
            nestedScrollNode2 = (NestedScrollNode) TraversableNodeKt.b(nestedScrollNode);
        }
        if (nestedScrollNode2 != null) {
            jL0 = nestedScrollNode2.l0(i2, j2);
        } else {
            Offset.f8806b.getClass();
            jL0 = 0;
        }
        long jE = Offset.e(j2, jL0);
        long jG = g(j(scrollScope.e(i(g(Offset.a(jE, this.d == Orientation.Horizontal ? 1 : 2, Call.Parameters.DEFAULT_CAMERA_ZOOM))))));
        this.g.q0(jG);
        return Offset.f(Offset.f(jL0, jG), this.f4711f.b(i2, jG, Offset.e(jE, jG)));
    }

    public final float f(float f2) {
        return this.f4710e ? f2 * (-1.0f) : f2;
    }

    public final long g(long j2) {
        return this.f4710e ? Offset.g(-1.0f, j2) : j2;
    }

    public final Object h(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        Object objC = this.f4707a.c(mutatePriority, new ScrollingLogic$scroll$2(this, null, function2), continuationImpl);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : Unit.f71739a;
    }

    public final float i(long j2) {
        return Float.intBitsToFloat((int) (this.d == Orientation.Horizontal ? j2 >> 32 : j2 & BodyPartID.bodyIdMax));
    }

    public final long j(float f2) {
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            Offset.f8806b.getClass();
            return 0L;
        }
        if (this.d == Orientation.Horizontal) {
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax);
            Offset.Companion companion = Offset.f8806b;
            return jFloatToRawIntBits;
        }
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM) << 32);
        Offset.Companion companion2 = Offset.f8806b;
        return jFloatToRawIntBits2;
    }

    public final float k(long j2) {
        int i2 = (int) (BodyPartID.bodyIdMax & j2);
        int i3 = (int) (j2 >> 32);
        double dAtan2 = (float) Math.atan2(Math.abs(Float.intBitsToFloat(i2)), Math.abs(Float.intBitsToFloat(i3)));
        Orientation orientation = this.d;
        if (dAtan2 >= 0.7853981633974483d) {
            return orientation == Orientation.Vertical ? Float.intBitsToFloat(i2) : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        return orientation == Orientation.Horizontal ? Float.intBitsToFloat(i3) : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }
}
