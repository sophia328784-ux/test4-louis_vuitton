package com.vuitton.android.presentation.screen.osa;

import androidx.activity.result.ActivityResultLauncher;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class OsaActivity$onCreate$2$1$1$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        OsaActivity osaActivity = (OsaActivity) this.receiver;
        ActivityResultLauncher activityResultLauncher = osaActivity.t;
        PlaceSearchActivity.Companion companion = PlaceSearchActivity.t;
        PlaceSearchActivity.PlaceInfoType placeInfoType = PlaceSearchActivity.PlaceInfoType.GEOCODING;
        AutocompleteContext autocompleteContext = AutocompleteContext.ONLINE_STORE_APPOINTMENT;
        PlaceGeocodingUiModel placeGeocodingUiModel = ((OsaLocationFormViewState) ((OsaLocationFormViewModel) osaActivity.q.getF71699b()).getU().getValue()).f60839e;
        String str = placeGeocodingUiModel != null ? placeGeocodingUiModel.f51804b : null;
        companion.getClass();
        activityResultLauncher.a(PlaceSearchActivity.Companion.a(osaActivity, placeInfoType, autocompleteContext, str));
        return Unit.f71739a;
    }
}
