package com.vuitton.android.presentation.screen.booking.common;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.foundation.model.domain.error.booking.BookingException;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingErrorExtKt {
    public static final StringResourceUiModel a(Throwable th) {
        String str;
        BookingException bookingException = th instanceof BookingException ? (BookingException) th : null;
        if (bookingException != null && (str = bookingException.f66208b) != null) {
            if (StringsKt.w(str)) {
                str = null;
            }
            if (str != null) {
                return new StringResourceUiModel.Text(str);
            }
        }
        return new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null);
    }
}
