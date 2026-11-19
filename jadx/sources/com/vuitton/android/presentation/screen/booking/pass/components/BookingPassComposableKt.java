package com.vuitton.android.presentation.screen.booking.pass.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModel;
import com.vuitton.android.presentation.screen.booking.pass.models.BookingPassViewState;
import defpackage.f0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingPassComposableKt {
    public static final void a(BookingPassViewModel bookingPassViewModel, Function0 function0, Composer composer, int i2) {
        BookingPassViewModel bookingPassViewModel2;
        bookingPassViewModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1832102663);
        int i3 = (gapComposerH.K(bookingPassViewModel) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            BookingPassViewState bookingPassViewState = (BookingPassViewState) FlowExtKt.c(bookingPassViewModel.getD(), null, gapComposerH, 0, 7).getF10755b();
            boolean z = (i3 & 14) == 4;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                bookingPassViewModel2 = bookingPassViewModel;
                BookingPassComposableKt$BookingPassComposable$1$1 bookingPassComposableKt$BookingPassComposable$1$1 = new BookingPassComposableKt$BookingPassComposable$1$1(0, bookingPassViewModel2, BookingPassViewModel.class, "getBookingPass", "getBookingPass()V", 0);
                gapComposerH.q(bookingPassComposableKt$BookingPassComposable$1$1);
                objX = bookingPassComposableKt$BookingPassComposable$1$1;
            } else {
                bookingPassViewModel2 = bookingPassViewModel;
            }
            BookingPassScreenKt.a(bookingPassViewState, function0, (Function0) ((KFunction) objX), gapComposerH, i3 & 112);
        } else {
            bookingPassViewModel2 = bookingPassViewModel;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f0(bookingPassViewModel2, function0, i2, 18);
        }
    }
}
