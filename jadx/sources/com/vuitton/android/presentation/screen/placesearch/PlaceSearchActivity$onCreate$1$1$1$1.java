package com.vuitton.android.presentation.screen.placesearch;

import android.content.Intent;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PlaceSearchActivity$onCreate$1$1$1$1 extends FunctionReferenceImpl implements Function1<PlaceGeocodingUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        PlaceSearchActivity placeSearchActivity = (PlaceSearchActivity) this.receiver;
        PlaceSearchActivity.Companion companion = PlaceSearchActivity.t;
        placeSearchActivity.getClass();
        placeSearchActivity.setResult(-1, new Intent().putExtra("PLACE", (PlaceGeocodingUiModel) obj));
        placeSearchActivity.finish();
        return Unit.f71739a;
    }
}
