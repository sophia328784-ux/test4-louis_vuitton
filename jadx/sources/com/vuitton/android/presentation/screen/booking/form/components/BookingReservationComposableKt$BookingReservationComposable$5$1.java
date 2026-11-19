package com.vuitton.android.presentation.screen.booking.form.components;

import com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BookingReservationComposableKt$BookingReservationComposable$5$1 extends FunctionReferenceImpl implements Function2<String, BookingFormModuleDataUiModel.MultipleTextCategory, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str = (String) obj;
        BookingFormModuleDataUiModel.MultipleTextCategory multipleTextCategory = (BookingFormModuleDataUiModel.MultipleTextCategory) obj2;
        str.getClass();
        multipleTextCategory.getClass();
        ((BookingExperienceViewModel) this.receiver).K8(str, multipleTextCategory);
        return Unit.f71739a;
    }
}
