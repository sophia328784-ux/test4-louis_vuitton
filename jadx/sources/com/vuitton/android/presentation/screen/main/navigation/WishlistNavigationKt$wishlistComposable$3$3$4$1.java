package com.vuitton.android.presentation.screen.main.navigation;

import com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistIdUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class WishlistNavigationKt$wishlistComposable$3$3$4$1 extends FunctionReferenceImpl implements Function1<WishlistIdUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = ((WishlistIdUiModel) obj).f65738b;
        str.getClass();
        ((WishlistViewModelImpl) this.receiver).D8(str);
        return Unit.f71739a;
    }
}
