package com.vuitton.android.presentation.screen.plp.activities;

import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CatalogPLPActivity$onCreate$1$1$1$10$1 extends FunctionReferenceImpl implements Function1<FiltersButtonState, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FiltersButtonState filtersButtonState = (FiltersButtonState) obj;
        filtersButtonState.getClass();
        ((QuickAccessFiltersViewModel) this.receiver).Q1(filtersButtonState);
        return Unit.f71739a;
    }
}
