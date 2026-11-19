package com.vuitton.android.presentation.screen.wishlist;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class WishlistActivity$onCreate$1$1$2$11$1 extends FunctionReferenceImpl implements Function1<SkuIdUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = ((SkuIdUiModel) obj).f61764b;
        str.getClass();
        ((WishlistViewModel) this.receiver).K9(str);
        return Unit.f71739a;
    }
}
