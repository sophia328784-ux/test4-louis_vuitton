package com.vuitton.android.presentation.screen.booking.form.components;

import com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BookingReservationComposableKt$BookingReservationComposable$7$1 extends FunctionReferenceImpl implements Function1<List<? extends BookingFormModuleDataUiModel.MultipleTextOption>, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        List list = (List) obj;
        list.getClass();
        ((BookingExperienceViewModel) this.receiver).bb(list);
        return Unit.f71739a;
    }
}
