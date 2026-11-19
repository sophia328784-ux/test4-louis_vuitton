package com.vuitton.android.presentation.screen.orders.components.exchange;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSubmitResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1", f = "OrderExchangeReviewComposable.kt", l = {46}, m = "invokeSuspend", v = 2)
final class OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f60115c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f60116e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1(Context context, SnackbarHostState snackbarHostState, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f60115c = mutableState;
        this.d = snackbarHostState;
        this.f60116e = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1(this.f60116e, this.d, this.f60115c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60114b;
        if (i2 == 0) {
            ResultKt.b(obj);
            MutableState mutableState = this.f60115c;
            if ((((OrderReturnOrExchangeViewState) mutableState.getF10755b()).m instanceof ExchangeSetupResponseUiModel.Error.OutOfStock) || (((OrderReturnOrExchangeViewState) mutableState.getF10755b()).n instanceof ExchangeSubmitResponseUiModel.Error.OutOfStock)) {
                return Unit.f71739a;
            }
            MutableSharedFlow mutableSharedFlow = ((OrderReturnOrExchangeViewState) mutableState.getF10755b()).f60312h;
            final SnackbarHostState snackbarHostState = this.d;
            final Context context = this.f60116e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewComposableKt$OrderExchangeReviewComposable$3$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                    Object objA = snackbarHostState.a(NotificationBuilderKt.b((NotificationUiModel) obj2, context, LVColorScheme.DEFAULT), continuation);
                    return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
                }
            };
            this.f60114b = 1;
            if (mutableSharedFlow.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
