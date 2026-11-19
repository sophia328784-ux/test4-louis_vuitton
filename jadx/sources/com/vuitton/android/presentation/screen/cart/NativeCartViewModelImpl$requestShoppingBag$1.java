package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.presentation.screen.cart.models.CartTrackingUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.foundation.model.domain.model.cart.ShoppingBag;
import kotlin.Metadata;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$requestShoppingBag$1", f = "NativeCartViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$requestShoppingBag$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54930b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$requestShoppingBag$1(Continuation continuation, NativeCartViewModelImpl nativeCartViewModelImpl) {
        super(2, continuation);
        this.f54930b = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartViewModelImpl$requestShoppingBag$1(continuation, this.f54930b);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$requestShoppingBag$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        CartUiModel cartUiModelA;
        ShoppingBag shoppingBag;
        ShoppingBag shoppingBag2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        NativeCartViewModelImpl nativeCartViewModelImpl = this.f54930b;
        MutableStateFlow mutableStateFlow = nativeCartViewModelImpl.U;
        MutableStateFlow mutableStateFlow2 = nativeCartViewModelImpl.K;
        do {
            value = mutableStateFlow2.getValue();
            CartUiModel cartUiModel = (CartUiModel) value;
            CartUiModel cartUiModel2 = (CartUiModel) mutableStateFlow2.getValue();
            if (cartUiModel2 != null) {
                boolean z = false;
                boolean z2 = (cartUiModel == null || (shoppingBag2 = cartUiModel.g) == null) ? false : shoppingBag2.f66999a;
                if (cartUiModel != null && (shoppingBag = cartUiModel.g) != null) {
                    z = shoppingBag.f67000b;
                }
                cartUiModelA = CartUiModel.a(cartUiModel2, new ShoppingBag(z2, !z));
            } else {
                cartUiModelA = null;
            }
        } while (!mutableStateFlow2.i(value, cartUiModelA));
        Boolean bool = (Boolean) mutableStateFlow.getValue();
        if (bool != null) {
            boolean z3 = !bool.booleanValue();
            mutableStateFlow.setValue(Boolean.valueOf(z3));
            nativeCartViewModelImpl.W9(new CartTrackingUiModel.ShoppingBagToggle(z3));
        }
        return Unit.f71739a;
    }
}
