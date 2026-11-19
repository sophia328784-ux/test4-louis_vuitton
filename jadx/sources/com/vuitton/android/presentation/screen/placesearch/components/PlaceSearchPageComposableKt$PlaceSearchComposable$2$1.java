package com.vuitton.android.presentation.screen.placesearch.components;

import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PlaceSearchPageComposableKt$PlaceSearchComposable$2$1 extends FunctionReferenceImpl implements Function2<String, PlaceSearchActivity.PlaceInfoType, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str = (String) obj;
        str.getClass();
        ((PlaceSearchViewModel) this.receiver).M8(str, (PlaceSearchActivity.PlaceInfoType) obj2);
        return Unit.f71739a;
    }
}
