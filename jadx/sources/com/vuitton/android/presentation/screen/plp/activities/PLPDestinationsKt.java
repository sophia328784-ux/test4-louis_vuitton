package com.vuitton.android.presentation.screen.plp.activities;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.wishlist.WishlistActivity;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPDestinationsKt {
    public static final Intent a(PLPDestinations pLPDestinations, Context context) {
        context.getClass();
        if (pLPDestinations instanceof PLPDestinations.PageFromPlp) {
            PLPDestinations.PageFromPlp pageFromPlp = (PLPDestinations.PageFromPlp) pLPDestinations;
            return PLPDestinations.a(context, pageFromPlp.f62711a, null, null, pageFromPlp.f62712b, 28);
        }
        if (pLPDestinations instanceof PLPDestinations.PageFromExclusive) {
            return PLPDestinations.a(context, ((PLPDestinations.PageFromExclusive) pLPDestinations).f62710a, null, null, null, 56);
        }
        if (pLPDestinations instanceof PLPDestinations.PageFromStoreMode) {
            PLPDestinations.PageFromStoreMode pageFromStoreMode = (PLPDestinations.PageFromStoreMode) pLPDestinations;
            return PLPDestinations.a(context, pageFromStoreMode.f62713a, pageFromStoreMode.f62714b, pageFromStoreMode.f62715c, null, 36);
        }
        if (pLPDestinations instanceof PLPDestinations.ToWishlistPage) {
            return WishlistActivity.Companion.a(WishlistActivity.t, context, false, null, null, 14);
        }
        if (pLPDestinations instanceof PLPDestinations.ToAICompanionPage) {
            AICompanionActivity.v.getClass();
            return AICompanionActivity.Companion.a(context);
        }
        v40.g();
        return null;
    }
}
