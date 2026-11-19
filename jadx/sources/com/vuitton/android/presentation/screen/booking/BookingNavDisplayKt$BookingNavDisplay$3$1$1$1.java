package com.vuitton.android.presentation.screen.booking;

import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class BookingNavDisplayKt$BookingNavDisplay$3$1$1$1 extends FunctionReferenceImpl implements Function1<BookingFormUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        BookingFormUiModel bookingFormUiModel = (BookingFormUiModel) obj;
        bookingFormUiModel.getClass();
        ((PrebookSummaryViewModel) this.receiver).Sa(bookingFormUiModel);
        return Unit.f71739a;
    }
}
