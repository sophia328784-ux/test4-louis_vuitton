package com.vuitton.android.presentation.screen.cart.components;

import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class NativeCartComposableKt$NativeCartComposable$11$7$1 extends AdaptedFunctionReference implements Function1<CartItemUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CartItemUiModel cartItemUiModel = (CartItemUiModel) obj;
        cartItemUiModel.getClass();
        ((NativeCartViewModel) this.receiver).P4(true, cartItemUiModel);
        return Unit.f71739a;
    }
}
