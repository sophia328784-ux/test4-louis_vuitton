package com.vuitton.android.presentation.screen.cart.components;

import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class NativeCartComposableKt$NativeCartComposable$11$3$1 extends FunctionReferenceImpl implements Function2<CartItemUiModel, Integer, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CartItemUiModel cartItemUiModel = (CartItemUiModel) obj;
        int iIntValue = ((Number) obj2).intValue();
        cartItemUiModel.getClass();
        ((NativeCartViewModel) this.receiver).M5(cartItemUiModel, iIntValue);
        return Unit.f71739a;
    }
}
