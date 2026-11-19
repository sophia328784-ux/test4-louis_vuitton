package com.vuitton.android.presentation.screen.portal.components;

import android.content.Context;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.portal.PortalSwipeType;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import defpackage.md;
import defpackage.u2;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.portal.components.PortalSliderComponentKt$PortalSliderComponent$1$1", f = "PortalSliderComponent.kt", l = {112}, m = "invokeSuspend", v = 2)
final class PortalSliderComponentKt$PortalSliderComponent$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f63267c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f63268e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableIntState f63269f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PortalSliderComponentKt$PortalSliderComponent$1$1(PagerState pagerState, Function1 function1, Context context, MutableIntState mutableIntState, Continuation continuation) {
        super(2, continuation);
        this.f63267c = pagerState;
        this.d = function1;
        this.f63268e = context;
        this.f63269f = mutableIntState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PortalSliderComponentKt$PortalSliderComponent$1$1(this.f63267c, this.d, this.f63268e, this.f63269f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PortalSliderComponentKt$PortalSliderComponent$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63266b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final PagerState pagerState = this.f63267c;
            Flow flowK = FlowKt.k(SnapshotStateKt.m(new u2(pagerState, 14)));
            final Context context = this.f63268e;
            final MutableIntState mutableIntState = this.f63269f;
            final Function1 function1 = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.portal.components.PortalSliderComponentKt$PortalSliderComponent$1$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    int iIntValue = ((Number) obj2).intValue();
                    MutableIntState mutableIntState2 = mutableIntState;
                    int iF = mutableIntState2.f();
                    Function1 function2 = function1;
                    if (iIntValue > iF) {
                        function2.invoke(PortalSwipeType.NEXT);
                        mutableIntState2.i(iIntValue);
                    } else if (iIntValue < mutableIntState2.f()) {
                        function2.invoke(PortalSwipeType.PREVIOUS);
                        mutableIntState2.i(iIntValue);
                    }
                    Object[] objArr = {String.valueOf(iIntValue + 1), String.valueOf(pagerState.o())};
                    Context context2 = context;
                    String string = context2.getString(R.string.alt_tab, objArr);
                    string.getClass();
                    AccessibilityUtils.a(context2, string);
                    return Unit.f71739a;
                }
            };
            this.f63266b = 1;
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
