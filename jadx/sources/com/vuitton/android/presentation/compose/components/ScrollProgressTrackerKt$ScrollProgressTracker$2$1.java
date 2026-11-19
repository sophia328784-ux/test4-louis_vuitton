package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import defpackage.a1;
import defpackage.md;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt$ScrollProgressTracker$2$1", f = "ScrollProgressTracker.kt", l = {EACTags.CURRENCY_EXPONENT}, m = "invokeSuspend", v = 2)
final class ScrollProgressTrackerKt$ScrollProgressTracker$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyListState f51038c;
    public final /* synthetic */ SnapshotStateList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f51039e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollProgressTrackerKt$ScrollProgressTracker$2$1(LazyListState lazyListState, SnapshotStateList snapshotStateList, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f51038c = lazyListState;
        this.d = snapshotStateList;
        this.f51039e = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ScrollProgressTrackerKt$ScrollProgressTracker$2$1(this.f51038c, this.d, this.f51039e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ScrollProgressTrackerKt$ScrollProgressTracker$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f51037b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final LazyListState lazyListState = this.f51038c;
            Flow flowM = SnapshotStateKt.m(new a1(lazyListState, 10));
            final SnapshotStateList snapshotStateList = this.d;
            final Function1 function1 = this.f51039e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt$ScrollProgressTracker$2$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    Integer num = (Integer) obj2;
                    if (num != null) {
                        LazyListState lazyListState2 = lazyListState;
                        if (lazyListState2.j().getN() > 0) {
                            int n = lazyListState2.j().getN();
                            int iD = n > 1 ? RangesKt.d((int) ((num.intValue() / (n - 1)) * 100.0f), 0, 100) : 100;
                            Iterator<T> it = ScrollProgressTrackerKt.f51021a.iterator();
                            while (it.hasNext()) {
                                int iIntValue = ((Number) it.next()).intValue();
                                if (iD >= iIntValue) {
                                    Integer num2 = new Integer(iIntValue);
                                    SnapshotStateList snapshotStateList2 = snapshotStateList;
                                    if (!snapshotStateList2.contains(num2)) {
                                        snapshotStateList2.add(new Integer(iIntValue));
                                        function1.invoke(new Integer(iIntValue));
                                    }
                                }
                            }
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f51037b = 1;
            if (((AbstractFlow) flowM).f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
