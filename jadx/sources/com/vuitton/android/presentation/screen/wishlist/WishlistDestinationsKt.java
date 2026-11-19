package com.vuitton.android.presentation.screen.wishlist;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistDestinationsKt {
    public static final Intent a(WishlistDestinations wishlistDestinations, Context context) {
        context.getClass();
        if (wishlistDestinations.equals(WishlistDestinations.ToCatalogPage.f65609a)) {
            return MainActivity.Companion.a(MainActivity.L, context, MainTopLevelDestination.CATALOG, null, null, null, 28);
        }
        if (wishlistDestinations instanceof WishlistDestinations.ToProductDetailsPage) {
            WishlistDestinations.ToProductDetailsPage toProductDetailsPage = (WishlistDestinations.ToProductDetailsPage) wishlistDestinations;
            return PdpActivity.Companion.a(PdpActivity.D, context, toProductDetailsPage.f65610a, false, toProductDetailsPage.f65611b, null, null, false, 116);
        }
        v40.g();
        return null;
    }
}
