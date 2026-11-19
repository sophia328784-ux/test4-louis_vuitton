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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1", f = "ScrollProgressTracker.kt", l = {158}, m = "invokeSuspend", v = 2)
final class ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyListState f51027c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f51028e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SnapshotStateList f51029f;
    public final /* synthetic */ Function1 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1(LazyListState lazyListState, int i2, int i3, SnapshotStateList snapshotStateList, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f51027c = lazyListState;
        this.d = i2;
        this.f51028e = i3;
        this.f51029f = snapshotStateList;
        this.g = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1(this.f51027c, this.d, this.f51028e, this.f51029f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f51026b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowK = FlowKt.k(SnapshotStateKt.m(new a1(this.f51027c, 9)));
            final SnapshotStateList snapshotStateList = this.f51029f;
            final Function1 function1 = this.g;
            final int i3 = this.d;
            final int i4 = this.f51028e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    Integer num = (Integer) obj2;
                    if (num != null) {
                        int iIntValue = ((num.intValue() + 1) * i3) - 1;
                        int i5 = i4;
                        int iD = i5 > 1 ? RangesKt.d((int) ((iIntValue / (i5 - 1)) * 100.0f), 0, 100) : 100;
                        Iterator<T> it = ScrollProgressTrackerKt.f51021a.iterator();
                        while (it.hasNext()) {
                            int iIntValue2 = ((Number) it.next()).intValue();
                            if (iD >= iIntValue2) {
                                Integer num2 = new Integer(iIntValue2);
                                SnapshotStateList snapshotStateList2 = snapshotStateList;
                                if (!snapshotStateList2.contains(num2)) {
                                    snapshotStateList2.add(new Integer(iIntValue2));
                                    function1.invoke(new Integer(iIntValue2));
                                }
                            }
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f51026b = 1;
            if (flowK.f(flowCollector, this) == coroutineSingletons) {
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
