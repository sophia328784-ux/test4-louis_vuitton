package com.vuitton.android.presentation.screen.cart.components;

import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemIdUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class NativeCartComposableKt$NativeCartComposable$11$6$1 extends FunctionReferenceImpl implements Function1<CartItemIdUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = ((CartItemIdUiModel) obj).f55143b;
        str.getClass();
        ((NativeCartViewModel) this.receiver).J6(str);
        return Unit.f71739a;
    }
}
