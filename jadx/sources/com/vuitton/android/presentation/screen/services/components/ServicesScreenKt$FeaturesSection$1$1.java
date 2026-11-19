package com.vuitton.android.presentation.screen.services.components;

import android.view.View;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.u2;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.services.components.ServicesScreenKt$FeaturesSection$1$1", f = "ServicesScreen.kt", l = {156}, m = "invokeSuspend", v = 2)
final class ServicesScreenKt$FeaturesSection$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f64362c;
    public final /* synthetic */ View d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f64363e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServicesScreenKt$FeaturesSection$1$1(PagerState pagerState, View view, int i2, Continuation continuation) {
        super(2, continuation);
        this.f64362c = pagerState;
        this.d = view;
        this.f64363e = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ServicesScreenKt$FeaturesSection$1$1(this.f64362c, this.d, this.f64363e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ServicesScreenKt$FeaturesSection$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64361b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowM = SnapshotStateKt.m(new u2(this.f64362c, 15));
            final View view = this.d;
            final int i3 = this.f64363e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.services.components.ServicesScreenKt$FeaturesSection$1$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    int iIntValue = ((Number) obj2).intValue();
                    View view2 = view;
                    String string = view2.getContext().getString(R.string.alt_tab, new Integer(iIntValue + 1), new Integer(i3));
                    string.getClass();
                    view2.announceForAccessibility(string);
                    return Unit.f71739a;
                }
            };
            this.f64361b = 1;
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
