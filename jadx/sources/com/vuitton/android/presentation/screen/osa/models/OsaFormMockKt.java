package com.vuitton.android.presentation.screen.osa.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.CtaUiModel;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.MegatrioUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreAddressUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreTypeUIModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.StoreSlotsUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.options.dispatch.models.InAppDispatchMockKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import java.time.LocalDate;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaFormMockKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OsaLocationFormViewState f60923a;

    static {
        TimeSlotUiModel timeSlotUiModel = new TimeSlotUiModel("00U2f0000065pWYEAY", "3:00 PM", "2023-02-25T14:00:00.000", "", "2023-02-25");
        OsaFormItemUiModel osaFormItemUiModel = new OsaFormItemUiModel("A06", "Louis Vuitton Maison Champs-Élysées", "101, avenue des champs", "Paris - France", "+33 9 77 40 40 77", "https://secure-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--StFi_Louis_Vuitton_Maison_Champs-Elysées_1_DI3.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", CollectionsKt.U(new TimeSlotUiModel("00U2f0000065pWYEAY", "3:00 PM", "2023-02-25T14:00:00.000", "", "2023-02-25"), new TimeSlotUiModel("00U2f0000065pYAEAY", "4:00 PM", "2023-02-25T15:00:00.000", "", "2023-02-25")), CollectionsKt.U(new TimeSlotUiModel("00U2f0000065pZAEAY", "5:00 PM", "2023-02-25T16:00:00.000", "", "2023-02-25")), "Europe/Paris", new MegatrioUiModel("Surtitle", "Description", CollectionsKt.O(new CtaUiModel("Discover", new ContributionLinkUiModel.ImmersiveArticle("megatrio hub")))));
        StoreUiModel storeUiModel = new StoreUiModel("A06", "Louis V", StoreTypeUIModel.PHYSICAL, "+6 07 07 10 09 01", new StoreAddressUiModel("", "Paris", "2 rue example", "France", "75001"), "Stfi_La Samaritaine_Paris", false, EmptyList.f71768b, null, 256, null);
        f60923a = new OsaLocationFormViewState(InAppDispatchMockKt.f59833a, false, false, CollectionsKt.P(LocalDate.parse("2023-02-25"), LocalDate.parse("2023-02-26")), new PlaceGeocodingUiModel("Paris,France", 48.8d, 2.35d, 48.9d, 2.46d, 48.81d, 2.22d), CollectionsKt.P(storeUiModel, StoreUiModel.a(storeUiModel, "A07"), StoreUiModel.a(storeUiModel, "A08")), CollectionsKt.O(new StoreSlotsUiModel("2023-02-25", CollectionsKt.P(timeSlotUiModel, TimeSlotUiModel.a(timeSlotUiModel, "00U2f0000065pYAEAY", "4:00 PM", "2023-02-25T15:00:00.000")), CollectionsKt.O(TimeSlotUiModel.a(timeSlotUiModel, "00U2f0000065pZAEAY", "5:00 PM", "2023-02-25T16:00:00.000")), storeUiModel.f51817a, "Europe/Paris")), CollectionsKt.O(osaFormItemUiModel), LocalDate.parse("2023-02-25"), "2/25/23", storeUiModel.f51817a, AppointmentTypeUiModel.DISTANT, timeSlotUiModel, osaFormItemUiModel, true, false, false, false, false, null, false, null, false, 8355844, null);
    }
}
