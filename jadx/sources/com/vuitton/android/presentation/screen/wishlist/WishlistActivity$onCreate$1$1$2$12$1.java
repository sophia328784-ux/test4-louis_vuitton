package com.vuitton.android.presentation.screen.wishlist;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistIdUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class WishlistActivity$onCreate$1$1$2$12$1 extends FunctionReferenceImpl implements Function2<WishlistIdUiModel, SkuIdUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str = ((WishlistIdUiModel) obj).f65738b;
        String str2 = ((SkuIdUiModel) obj2).f61764b;
        str.getClass();
        str2.getClass();
        ((WishlistViewModel) this.receiver).D5(str, str2);
        return Unit.f71739a;
    }
}
