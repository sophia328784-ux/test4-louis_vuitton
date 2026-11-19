package com.vuitton.android.presentation.screen.booking.confirmation.components;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModel;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationViewState;
import defpackage.ef;
import defpackage.f0;
import defpackage.k;
import defpackage.l0;
import defpackage.u;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingConfirmationComposableKt {
    public static final void a(BookingConfirmationViewModel bookingConfirmationViewModel, Function0 function0, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z;
        BookingConfirmationViewModel bookingConfirmationViewModel2 = bookingConfirmationViewModel;
        bookingConfirmationViewModel2.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-107976948);
        int i4 = i2 | (gapComposerH.K(bookingConfirmationViewModel2) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            BookingConfirmationViewState bookingConfirmationViewState = (BookingConfirmationViewState) FlowExtKt.c(bookingConfirmationViewModel2.getF54380f(), null, gapComposerH, 0, 7).getF10755b();
            int i5 = i4 & 14;
            boolean z2 = (i5 == 4) | ((i4 & 112) == 32);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$2) {
                objX = new l0((Object) bookingConfirmationViewModel2, function0, 26);
                gapComposerH.q(objX);
            }
            Function0 function2 = (Function0) objX;
            boolean z3 = i5 == 4;
            Object objX2 = gapComposerH.x();
            if (z3 || objX2 == composer$Companion$Empty$2) {
                i3 = i5;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                BookingConfirmationComposableKt$BookingConfirmationComposable$2$1 bookingConfirmationComposableKt$BookingConfirmationComposable$2$1 = new BookingConfirmationComposableKt$BookingConfirmationComposable$2$1(0, bookingConfirmationViewModel, BookingConfirmationViewModel.class, "getConfirmedBookings", "getConfirmedBookings()V", 0);
                bookingConfirmationViewModel2 = bookingConfirmationViewModel;
                gapComposerH.q(bookingConfirmationComposableKt$BookingConfirmationComposable$2$1);
                objX2 = bookingConfirmationComposableKt$BookingConfirmationComposable$2$1;
            } else {
                i3 = i5;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            }
            Function0 function3 = (Function0) ((KFunction) objX2);
            boolean z4 = (i3 == 4) | ((i4 & 896) == 256);
            Object objX3 = gapComposerH.x();
            if (z4 || objX3 == composer$Companion$Empty$1) {
                objX3 = new k(bookingConfirmationViewModel2, function1, 17);
                gapComposerH.q(objX3);
            }
            Function1 function4 = (Function1) objX3;
            boolean zY = gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                z = false;
                objX4 = new ef(context, 0);
                gapComposerH.q(objX4);
            } else {
                z = false;
            }
            Function1 function5 = (Function1) objX4;
            boolean zY2 = (i3 != 4 ? z : true) | gapComposerH.y(context);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new f0(bookingConfirmationViewModel2, context, 14);
                gapComposerH.q(objX5);
            }
            Function2 function6 = (Function2) objX5;
            if (i3 == 4) {
                z = true;
            }
            boolean zY3 = z | gapComposerH.y(context);
            Object objX6 = gapComposerH.x();
            if (zY3 || objX6 == composer$Companion$Empty$1) {
                objX6 = new k(bookingConfirmationViewModel2, context, 18);
                gapComposerH.q(objX6);
            }
            gapComposer = gapComposerH;
            BookingConfirmationScreenKt.d(bookingConfirmationViewState, function2, function3, function4, function5, function6, (Function1) objX6, gapComposer, 0, 0);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(bookingConfirmationViewModel2, function0, function1, i2, 12);
        }
    }
}
