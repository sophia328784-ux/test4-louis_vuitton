package com.vuitton.android.presentation.screen.filter.quickaccess;

import android.content.Intent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class FiltersOverlayActivity$onCreate$2$1$4$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        FiltersOverlayActivity filtersOverlayActivity = (FiltersOverlayActivity) this.receiver;
        FiltersOverlayActivity.Companion companion = FiltersOverlayActivity.s;
        filtersOverlayActivity.getClass();
        Intent intent = new Intent();
        intent.putExtra("FILTER_ID", str).putExtra("KEY_QAF_SOURCE", filtersOverlayActivity.I());
        filtersOverlayActivity.setResult(-1, intent);
        filtersOverlayActivity.finish();
        return Unit.f71739a;
    }
}
