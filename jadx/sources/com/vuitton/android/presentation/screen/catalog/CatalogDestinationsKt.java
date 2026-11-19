package com.vuitton.android.presentation.screen.catalog;

import android.content.Context;
import android.content.Intent;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogDestinationsKt {
    public static final Intent a(CatalogDestinations.ToPdpPage toPdpPage, Context context) {
        context.getClass();
        return PdpActivity.Companion.a(PdpActivity.D, context, toPdpPage.f55218a, false, null, null, toPdpPage.f55219b, toPdpPage.f55220c, 28);
    }
}
