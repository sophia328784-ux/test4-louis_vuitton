package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;", "Landroidx/compose/foundation/gestures/FlingBehavior;", "Landroidx/compose/foundation/gestures/TargetedFlingBehavior;", "originalFlingBehavior", "Landroidx/compose/foundation/pager/PagerState;", "pagerState", "<init>", "(Landroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class PagerWrapperFlingBehavior implements FlingBehavior {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TargetedFlingBehavior f5788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PagerState f5789b;

    public PagerWrapperFlingBehavior(TargetedFlingBehavior targetedFlingBehavior, PagerState pagerState) {
        this.f5788a = targetedFlingBehavior;
        this.f5789b = pagerState;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.FlingBehavior
    public final Object a(ScrollScope scrollScope, float f2, Continuation continuation) {
        PagerWrapperFlingBehavior$performFling$1 pagerWrapperFlingBehavior$performFling$1;
        if (continuation instanceof PagerWrapperFlingBehavior$performFling$1) {
            pagerWrapperFlingBehavior$performFling$1 = (PagerWrapperFlingBehavior$performFling$1) continuation;
            int i2 = pagerWrapperFlingBehavior$performFling$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pagerWrapperFlingBehavior$performFling$1.d = i2 - Integer.MIN_VALUE;
            } else {
                pagerWrapperFlingBehavior$performFling$1 = new PagerWrapperFlingBehavior$performFling$1(this, (ContinuationImpl) continuation);
            }
        } else {
            pagerWrapperFlingBehavior$performFling$1 = new PagerWrapperFlingBehavior$performFling$1(this, (ContinuationImpl) continuation);
        }
        Object objB = pagerWrapperFlingBehavior$performFling$1.f5790b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pagerWrapperFlingBehavior$performFling$1.d;
        int i4 = 1;
        if (i3 == 0) {
            ResultKt.b(objB);
            e eVar = new e(this, scrollScope, i4);
            pagerWrapperFlingBehavior$performFling$1.d = 1;
            objB = this.f5788a.b(scrollScope, f2, eVar, pagerWrapperFlingBehavior$performFling$1);
            if (objB == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objB);
        }
        float fFloatValue = ((Number) objB).floatValue();
        PagerState pagerState = this.f5789b;
        if (pagerState.l() != Call.Parameters.DEFAULT_CAMERA_ZOOM && Math.abs(pagerState.l()) < 0.001d) {
            int iK = pagerState.k();
            if (pagerState.f5765k.a()) {
                BuildersKt.c(((PagerMeasureResult) ((SnapshotMutableStateImpl) pagerState.m).getF10755b()).t, null, null, new PagerState$requestScrollToPage$1(pagerState, null), 3);
            }
            pagerState.w(Call.Parameters.DEFAULT_CAMERA_ZOOM, iK, false);
        } else {
            new Float(pagerState.l());
        }
        return new Float(fFloatValue);
    }
}
