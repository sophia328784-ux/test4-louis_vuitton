package com.vuitton.android.presentation.screen.filter.quickaccess;

import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FiltersDestinationsKt {
    public static final Intent a(FiltersDestinations.ToTransparentFiltersPage toTransparentFiltersPage, Context context) {
        context.getClass();
        FiltersOverlayActivity.s.getClass();
        Intent intentPutExtra = new Intent(context, (Class<?>) FiltersOverlayActivity.class).putExtra("KEY_QAF_SOURCE", toTransparentFiltersPage.f57994a.name()).putExtra("SCREEN_TYPE", toTransparentFiltersPage.f57995b.name());
        intentPutExtra.getClass();
        return intentPutExtra;
    }
}
