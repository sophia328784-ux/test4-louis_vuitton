package com.vuitton.android.presentation.screen.spotlight;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightDestinationsKt {
    public static final Intent a(SpotlightDestinations spotlightDestinations, Context context) {
        context.getClass();
        if (!(spotlightDestinations instanceof SpotlightDestinations.ToSpotlightPage)) {
            if (spotlightDestinations instanceof SpotlightDestinations.ToProductPage) {
                SpotlightDestinations.ToProductPage toProductPage = (SpotlightDestinations.ToProductPage) spotlightDestinations;
                return PdpActivity.Companion.a(PdpActivity.D, context, toProductPage.f64532a, toProductPage.f64533b, null, null, null, false, 120);
            }
            v40.g();
            return null;
        }
        SpotlightActivity.Companion companion = SpotlightActivity.r;
        String str = ((SpotlightDestinations.ToSpotlightPage) spotlightDestinations).f64534a;
        companion.getClass();
        str.getClass();
        Intent intent = new Intent(context, (Class<?>) SpotlightActivity.class);
        intent.putExtra("COLLECTION_ID", str);
        return intent;
    }
}
