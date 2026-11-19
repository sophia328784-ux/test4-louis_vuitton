package com.vuitton.android.presentation.screen.booking.personalinfo.loginstatus.components;

import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoViewState;
import defpackage.h1;
import defpackage.k;
import defpackage.q;
import defpackage.w1;
import defpackage.w9;
import defpackage.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingAccountStatusComposableKt {
    public static final void a(BookingPersonalInfoViewModel bookingPersonalInfoViewModel, SnackbarHostState snackbarHostState, Function0 function0, Function0 function1, Composer composer, int i2) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i3;
        BookingPersonalInfoViewModel bookingPersonalInfoViewModel2 = bookingPersonalInfoViewModel;
        bookingPersonalInfoViewModel2.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1657127484);
        int i4 = i2 | (gapComposerH.K(bookingPersonalInfoViewModel2) ? 4 : 2) | (gapComposerH.K(snackbarHostState) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateC = FlowExtKt.c(bookingPersonalInfoViewModel2.getV(), null, gapComposerH, 0, 7);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Unit unit = Unit.f71739a;
            int i5 = i4 & 14;
            boolean z = i5 == 4;
            Object objX = gapComposerH.x();
            boolean z2 = z;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$2) {
                objX = new BookingAccountStatusComposableKt$BookingAccountStatusComposable$1$1(bookingPersonalInfoViewModel2, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            int i6 = i4 & 7168;
            boolean z3 = (i5 == 4) | (i6 == 2048);
            Object objX2 = gapComposerH.x();
            if (z3 || objX2 == composer$Companion$Empty$2) {
                objX2 = new k(bookingPersonalInfoViewModel2, function1, 14);
                gapComposerH.q(objX2);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX2, gapComposerH, 0);
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.BOOKING;
            boolean zY = gapComposerH.y(managedActivityResultLauncherA) | gapComposerH.y(context) | gapComposerH.K(mutableStateC);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$2) {
                objX3 = new q(managedActivityResultLauncherA, context, mutableStateC, 15);
                gapComposerH.q(objX3);
            }
            Function0 function2 = (Function0) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$2) {
                objX4 = new w9(28);
                gapComposerH.q(objX4);
            }
            Function0 function3 = (Function0) objX4;
            boolean z4 = i6 == 2048;
            Object objX5 = gapComposerH.x();
            if (z4 || objX5 == composer$Companion$Empty$2) {
                objX5 = new h1(function1, 17);
                gapComposerH.q(objX5);
            }
            SocialLoginBottomSheetState socialLoginBottomSheetStateB = SocialLoginBottomSheetKt.b(trackingAuthOrigin, function2, function3, (Function0) objX5, null, gapComposerH, 390, 16);
            boolean zK = (i6 == 2048) | (i5 == 4) | gapComposerH.K(socialLoginBottomSheetStateB);
            Object objX6 = gapComposerH.x();
            if (zK || objX6 == composer$Companion$Empty$2) {
                objX6 = new BookingAccountStatusComposableKt$BookingAccountStatusComposable$2$1(bookingPersonalInfoViewModel2, function1, socialLoginBottomSheetStateB, null);
                gapComposerH.q(objX6);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX6);
            BookingPersonalInfoViewState bookingPersonalInfoViewState = (BookingPersonalInfoViewState) mutableStateC.getF10755b();
            boolean z5 = i5 == 4;
            Object objX7 = gapComposerH.x();
            if (z5 || objX7 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                i3 = i5;
                BookingAccountStatusComposableKt$BookingAccountStatusComposable$3$1 bookingAccountStatusComposableKt$BookingAccountStatusComposable$3$1 = new BookingAccountStatusComposableKt$BookingAccountStatusComposable$3$1(1, bookingPersonalInfoViewModel, BookingPersonalInfoViewModel.class, "onEmailChanged", "onEmailChanged(Ljava/lang/String;)V", 0);
                bookingPersonalInfoViewModel2 = bookingPersonalInfoViewModel;
                gapComposerH.q(bookingAccountStatusComposableKt$BookingAccountStatusComposable$3$1);
                objX7 = bookingAccountStatusComposableKt$BookingAccountStatusComposable$3$1;
            } else {
                i3 = i5;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            }
            Function1 function4 = (Function1) ((KFunction) objX7);
            boolean z6 = i3 == 4;
            Object objX8 = gapComposerH.x();
            if (z6 || objX8 == composer$Companion$Empty$1) {
                objX8 = new w1(bookingPersonalInfoViewModel2, 11);
                gapComposerH.q(objX8);
            }
            BookingAccountStatusScreenKt.a(bookingPersonalInfoViewState, function4, function0, (Function0) objX8, snackbarHostState, gapComposerH, (r18 & 896) | ((i4 << 9) & 57344));
            SocialLoginBottomSheetKt.a(socialLoginBottomSheetStateB, gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) bookingPersonalInfoViewModel2, (Object) snackbarHostState, function0, function1, i2, 14);
        }
    }
}
