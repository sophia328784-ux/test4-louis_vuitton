package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.unit.IntOffset;
import defpackage.hb;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/ScrollScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState$scrollToItem$2", f = "LazyStaggeredGridState.kt", l = {}, m = "invokeSuspend", v = 1)
final class LazyStaggeredGridState$scrollToItem$2 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LazyStaggeredGridState f5679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5680c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyStaggeredGridState$scrollToItem$2(LazyStaggeredGridState lazyStaggeredGridState, int i2, Continuation continuation) {
        super(2, continuation);
        this.f5679b = lazyStaggeredGridState;
        this.f5680c = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LazyStaggeredGridState$scrollToItem$2(this.f5679b, this.f5680c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LazyStaggeredGridState$scrollToItem$2) create((ScrollScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0048  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo;
        long j2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        LazyStaggeredGridState lazyStaggeredGridState = this.f5679b;
        LazyStaggeredGridScrollPosition lazyStaggeredGridScrollPosition = lazyStaggeredGridState.f5667c;
        MutableIntState mutableIntState = lazyStaggeredGridScrollPosition.f5654c;
        MutableIntState mutableIntState2 = lazyStaggeredGridScrollPosition.f5655e;
        int iF = ((SnapshotMutableIntStateImpl) mutableIntState).f();
        int i2 = this.f5680c;
        boolean z = (iF == i2 && ((SnapshotMutableIntStateImpl) mutableIntState2).f() == 0) ? false : true;
        if (z) {
            LazyLayoutItemAnimator lazyLayoutItemAnimator = lazyStaggeredGridState.t;
            lazyLayoutItemAnimator.e();
            lazyLayoutItemAnimator.f5455b = null;
            lazyLayoutItemAnimator.f5456c = -1;
        }
        LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult = (LazyStaggeredGridMeasureResult) ((SnapshotMutableStateImpl) lazyStaggeredGridState.d).getF10755b();
        LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResult2 = LazyStaggeredGridMeasureResultKt.f5641a;
        List list = lazyStaggeredGridMeasureResult.m;
        List list2 = lazyStaggeredGridMeasureResult.m;
        if (list.isEmpty()) {
            lazyStaggeredGridItemInfo = null;
        } else {
            int f5212a = ((LazyStaggeredGridItemInfo) CollectionsKt.B(list2)).getF5212a();
            if (i2 > ((LazyStaggeredGridItemInfo) CollectionsKt.M(list2)).getF5212a() || f5212a > i2) {
                lazyStaggeredGridItemInfo = null;
            } else {
                lazyStaggeredGridItemInfo = (LazyStaggeredGridItemInfo) CollectionsKt.G(CollectionsKt.p(list2, list2.size(), new hb(i2, 16)), list2);
            }
        }
        if (lazyStaggeredGridItemInfo == null || !z) {
            int[] iArr = (int[]) lazyStaggeredGridScrollPosition.f5652a.invoke(Integer.valueOf(i2), Integer.valueOf(lazyStaggeredGridScrollPosition.f5653b.length));
            int length = iArr.length;
            int[] iArr2 = new int[length];
            for (int i3 = 0; i3 < length; i3++) {
                iArr2[i3] = 0;
            }
            lazyStaggeredGridScrollPosition.f5653b = iArr;
            ((SnapshotMutableIntStateImpl) lazyStaggeredGridScrollPosition.f5654c).i(LazyStaggeredGridScrollPosition.a(iArr));
            lazyStaggeredGridScrollPosition.d = iArr2;
            ((SnapshotMutableIntStateImpl) mutableIntState2).i(LazyStaggeredGridScrollPosition.b(iArr, iArr2));
            lazyStaggeredGridScrollPosition.f5657h.h(i2);
            lazyStaggeredGridScrollPosition.g = null;
        } else {
            Orientation orientation = lazyStaggeredGridMeasureResult.u;
            int[] iArr3 = lazyStaggeredGridMeasureResult.f5633b;
            if (orientation == Orientation.Vertical) {
                long t = lazyStaggeredGridItemInfo.getT();
                IntOffset.Companion companion = IntOffset.f11012b;
                j2 = t & BodyPartID.bodyIdMax;
            } else {
                long t2 = lazyStaggeredGridItemInfo.getT();
                IntOffset.Companion companion2 = IntOffset.f11012b;
                j2 = t2 >> 32;
            }
            int i4 = (int) j2;
            int length2 = iArr3.length;
            int[] iArr4 = new int[length2];
            for (int i5 = 0; i5 < length2; i5++) {
                iArr4[i5] = iArr3[i5] + i4;
            }
            lazyStaggeredGridScrollPosition.d = iArr4;
            ((SnapshotMutableIntStateImpl) mutableIntState2).i(LazyStaggeredGridScrollPosition.b(lazyStaggeredGridScrollPosition.f5653b, iArr4));
        }
        Remeasurement remeasurement = lazyStaggeredGridState.f5670h;
        if (remeasurement != null) {
            remeasurement.e();
        }
        return Unit.f71739a;
    }
}
