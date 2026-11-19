package com.vuitton.android.presentation.screen.booking.details.components.bottomsheets;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import defpackage.r;
import defpackage.z;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CancelWarningBottomSheetContentKt {
    public static final void a(BookingUiModel bookingUiModel, BookingCTAState bookingCTAState, Function0 function0, Function0 function1, Composer composer, int i2) {
        bookingCTAState.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-354187435);
        int i3 = i2 | (gapComposerH.y(bookingUiModel) ? 4 : 2) | (gapComposerH.d(bookingCTAState.ordinal()) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(gapComposerH, R.string.booking_cancel_title), null, StringResources_androidKt.c(gapComposerH, R.string.booking_cancel_description), null, LVAppDesignKitTheme.n(gapComposerH).f48429j, false, null, null, ComposableLambdaKt.b(-595239830, new r((Object) bookingUiModel, (Object) bookingCTAState, (Object) function1, (Object) function0, 5), gapComposerH), gapComposerH, 0, 48, 1963);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) bookingUiModel, (Object) bookingCTAState, function0, function1, i2, 16);
        }
    }
}
