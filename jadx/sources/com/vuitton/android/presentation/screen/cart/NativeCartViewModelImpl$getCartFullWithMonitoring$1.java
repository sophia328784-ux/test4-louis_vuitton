package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.cart.NativeCartMonitoring;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.screen.cart.models.CartItemMapperKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceInformationUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.foundation.model.domain.error.cart.Empty;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import defpackage.md;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$getCartFullWithMonitoring$1", f = "NativeCartViewModelImpl.kt", l = {408}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$getCartFullWithMonitoring$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f54904c;
    public final /* synthetic */ NativeCartViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$getCartFullWithMonitoring$1(Continuation continuation, NativeCartViewModelImpl nativeCartViewModelImpl) {
        super(2, continuation);
        this.d = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartViewModelImpl$getCartFullWithMonitoring$1(continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$getCartFullWithMonitoring$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        MonitorAction monitorAction;
        List list;
        CartPriceInformationUiModel cartPriceInformationUiModel;
        CartPriceUiModel cartPriceUiModel;
        NativeCartViewModelImpl nativeCartViewModelImpl = this.d;
        ContactUsDelegate contactUsDelegate = nativeCartViewModelImpl.f54875f;
        MutableStateFlow mutableStateFlow = nativeCartViewModelImpl.O;
        MutableStateFlow mutableStateFlow2 = nativeCartViewModelImpl.M;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54904c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = nativeCartViewModelImpl.f54872b.a(nativeCartViewModelImpl.A, NativeCartMonitoring.Action.OpenCart.f48887a);
            mutableStateFlow2.setValue(Boolean.TRUE);
            this.f54903b = dynatraceMonitorActionA;
            this.f54904c = 1;
            Object objYc = NativeCartViewModelImpl.yc(nativeCartViewModelImpl, this);
            if (objYc == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj2 = objYc;
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f54903b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            MutableStateFlow mutableStateFlow3 = nativeCartViewModelImpl.K;
            mutableStateFlow.setValue(Boolean.FALSE);
            CartUiModel cartUiModel = (CartUiModel) mutableStateFlow3.getValue();
            monitorAction.c(new Integer(cartUiModel != null ? cartUiModel.f55182b : 0), "cartSize");
            CartUiModel cartUiModel2 = (CartUiModel) mutableStateFlow3.getValue();
            if (cartUiModel2 == null || (list = cartUiModel2.f55183c) == null) {
                contactUsDelegate.z();
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ChatProductModel chatProductModelA = CartItemMapperKt.a((CartItemUiModel) it.next());
                    CartUiModel cartUiModel3 = (CartUiModel) mutableStateFlow3.getValue();
                    contactUsDelegate.I(chatProductModelA, (cartUiModel3 == null || (cartPriceInformationUiModel = cartUiModel3.d) == null || (cartPriceUiModel = cartPriceInformationUiModel.f55153a) == null) ? 0 : (int) cartPriceUiModel.f55158a);
                }
            }
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            if (thA instanceof Empty) {
                nativeCartViewModelImpl.P.setValue(Boolean.TRUE);
            } else {
                monitorAction.d(new NativeCartMonitoring.Error.OpenCartError(thA));
                mutableStateFlow.setValue(Boolean.TRUE);
            }
            contactUsDelegate.z();
            nativeCartViewModelImpl.f54871a.c("NativeCartViewModelImpl", "Unable to get cart", thA);
        }
        mutableStateFlow2.setValue(Boolean.FALSE);
        monitorAction.b();
        return Unit.f71739a;
    }
}
