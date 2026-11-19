package com.vuitton.android.presentation.screen.orders.components.exchange;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.State;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1", f = "OrderReturnOrExchangeSelectionComposable.kt", l = {29}, m = "invokeSuspend", v = 2)
final class OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ State f60162c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f60163e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    final class AnonymousClass1<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f60164b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Context f60165c;
        public final /* synthetic */ State d;

        public AnonymousClass1(SnackbarHostState snackbarHostState, Context context, State state) {
            this.f60164b = snackbarHostState;
            this.f60165c = context;
            this.d = state;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Object emit(NotificationUiModel notificationUiModel, Continuation continuation) {
            OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1 orderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1;
            if (continuation instanceof OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1) {
                orderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1 = (OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1) continuation;
                int i2 = orderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1.d;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    orderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1.d = i2 - Integer.MIN_VALUE;
                } else {
                    orderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1 = new OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1(this, continuation);
                }
            } else {
                orderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1 = new OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1(this, continuation);
            }
            Object obj = orderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1.f60166b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = orderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1.d;
            if (i3 == 0) {
                ResultKt.b(obj);
                NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, this.f60165c, LVColorScheme.DEFAULT);
                orderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1.d = 1;
                if (this.f60164b.a(lVSnackbarVisualsB, orderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1$1$emit$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            ((OrderReturnOrExchangeViewState) this.d.getF10755b()).f60312h.j();
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1(State state, SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
        super(2, continuation);
        this.f60162c = state;
        this.d = snackbarHostState;
        this.f60163e = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1(this.f60162c, this.d, this.f60163e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderReturnOrExchangeSelectionComposableKt$OrderReturnOrExchangeSelectionComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60161b;
        if (i2 == 0) {
            ResultKt.b(obj);
            State state = this.f60162c;
            MutableSharedFlow mutableSharedFlow = ((OrderReturnOrExchangeViewState) state.getF10755b()).f60312h;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f60163e, state);
            this.f60161b = 1;
            if (mutableSharedFlow.f(anonymousClass1, this) == coroutineSingletons) {
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
