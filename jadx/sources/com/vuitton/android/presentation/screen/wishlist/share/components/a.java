package com.vuitton.android.presentation.screen.wishlist.share.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.vuitton.android.presentation.screen.options.dispatch.models.InAppDispatchMockKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        ComposableSingletons$SharedWishlistScreenKt composableSingletons$SharedWishlistScreenKt = ComposableSingletons$SharedWishlistScreenKt.f65765a;
        if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            WishlistViewState wishlistViewState = new WishlistViewState(InAppDispatchMockKt.f59833a, false, false, null, null, false, null, false, null, null, 1022, null);
            Object objX = composer.x();
            if (objX == Composer.Companion.f7939a) {
                objX = ComposableSingletons$SharedWishlistScreenKt$lambda$643921462$1$1$1.f65767b;
                composer.q(objX);
            }
            SharedWishlistScreenKt.b(null, wishlistViewState, "18/01/2024", (Function2) objX, composer, 3456);
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }
}
