package com.vuitton.android.presentation.screen.wishlist;

import com.vuitton.android.presentation.screen.wishlist.model.WishlistIdUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class WishlistNavHostKt$WishlistNavHost$4$1$1$3$1 extends FunctionReferenceImpl implements Function1<WishlistIdUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = ((WishlistIdUiModel) obj).f65738b;
        str.getClass();
        ((WishlistViewModel) this.receiver).D8(str);
        return Unit.f71739a;
    }
}
