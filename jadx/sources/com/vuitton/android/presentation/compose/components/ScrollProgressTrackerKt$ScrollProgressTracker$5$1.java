package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.ScrollState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import defpackage.iu0;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt$ScrollProgressTracker$5$1", f = "ScrollProgressTracker.kt", l = {106}, m = "invokeSuspend", v = 2)
final class ScrollProgressTrackerKt$ScrollProgressTracker$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ScrollState f51047c;
    public final /* synthetic */ SnapshotStateList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f51048e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollProgressTrackerKt$ScrollProgressTracker$5$1(ScrollState scrollState, SnapshotStateList snapshotStateList, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f51047c = scrollState;
        this.d = snapshotStateList;
        this.f51048e = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ScrollProgressTrackerKt$ScrollProgressTracker$5$1(this.f51047c, this.d, this.f51048e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ScrollProgressTrackerKt$ScrollProgressTracker$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f51046b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final ScrollState scrollState = this.f51047c;
            Flow flowM = SnapshotStateKt.m(new iu0(scrollState, 0));
            final SnapshotStateList snapshotStateList = this.d;
            final Function1 function1 = this.f51048e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt$ScrollProgressTracker$5$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    int iD = RangesKt.d((int) ((((Number) obj2).intValue() / scrollState.g()) * 100.0f), 0, 100);
                    Iterator<T> it = ScrollProgressTrackerKt.f51021a.iterator();
                    while (it.hasNext()) {
                        int iIntValue = ((Number) it.next()).intValue();
                        if (iD >= iIntValue) {
                            Integer num = new Integer(iIntValue);
                            SnapshotStateList snapshotStateList2 = snapshotStateList;
                            if (!snapshotStateList2.contains(num)) {
                                snapshotStateList2.add(new Integer(iIntValue));
                                function1.invoke(new Integer(iIntValue));
                            }
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f51046b = 1;
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
