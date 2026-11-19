package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DistantRepairBottomSheetDatePickerKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import defpackage.a9;
import defpackage.al;
import defpackage.d21;
import defpackage.dh;
import defpackage.em;
import defpackage.g1;
import defpackage.nu;
import defpackage.ou;
import defpackage.pu;
import defpackage.rq;
import defpackage.v1;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairFormBottomSheetScreenKt {
    public static final void a(int i2, Function0 function0, Function1 function1, Composer composer, int i3) {
        int i4;
        GapComposer gapComposer;
        Function0 function2 = function0;
        GapComposer gapComposerH = composer.h(1816371248);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.d(i2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(function2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function1) ? 256 : 128;
        }
        int i5 = 0;
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_picture_delete_title);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.dr_picture_delete_subtitle);
            String strC3 = StringResources_androidKt.c(gapComposerH, R.string.button_yes);
            boolean z = ((i4 & 14) == 4) | ((i4 & 896) == 256) | ((i4 & 112) == 32);
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new ou(function1, i2, function2, i5);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, strC, null, null, strC2, null, strC3, null, false, null, (Function0) objX, StringResources_androidKt.c(gapComposerH, R.string.mylv_mywishlists_removeproductfromwishlist_confirmation_no), false, null, function0, null, false, null, gapComposer, 0, (i4 << 15) & 3670016, 976731);
            function2 = function0;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dh(i2, function2, function1, i3);
        }
    }

    public static final void b(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(711324356);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(function0) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            function1.mo47invoke();
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, null, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_zipcode_not_eligible_bottom_description), null, StringResources_androidKt.c(gapComposerH, R.string.dr_zipcode_not_eligible_cta_back), null, false, null, function0, null, false, null, null, null, false, null, gapComposer, 0, (i3 << 3) & 112, 1046367);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a9(function0, function1, i2, 1);
        }
    }

    public static final void c(DistantRepairFormBottomSheetScreen distantRepairFormBottomSheetScreen, DistantRepairFormViewState distantRepairFormViewState, DistantRepairCalendarViewState distantRepairCalendarViewState, SnackbarHostState snackbarHostState, Function1 function1, Function2 function2, Function1 function3, Function0 function0, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function0 function8, Function1 function9, Composer composer, int i2) {
        GapComposer gapComposer;
        distantRepairFormViewState.getClass();
        distantRepairCalendarViewState.getClass();
        snackbarHostState.getClass();
        function2.getClass();
        function3.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        GapComposer gapComposerH = composer.h(158245399);
        int i3 = i2 | (gapComposerH.K(distantRepairFormBottomSheetScreen) ? 4 : 2) | (gapComposerH.y(distantRepairFormViewState) ? 32 : 16) | (gapComposerH.y(distantRepairCalendarViewState) ? 256 : 128) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 8388608 : 4194304) | (gapComposerH.y(function4) ? 67108864 : 33554432) | (gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerH.y(function6) ? 4 : 2) | (gapComposerH.y(function7) ? 32 : 16) | (gapComposerH.y(function8) ? 256 : 128) | (gapComposerH.y(function9) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 1171) == 1170) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (distantRepairFormBottomSheetScreen.equals(DistantRepairFormBottomSheetScreen.BottomSheetLegal.f57246a)) {
                gapComposerH.L(-1584690693);
                int i5 = i4 >> 3;
                d(function6, function8, function9, gapComposerH, (i4 & 14) | (i5 & 112) | (i5 & 896));
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
            } else if (distantRepairFormBottomSheetScreen.equals(DistantRepairFormBottomSheetScreen.BottomSheetCalendar.f57243a)) {
                gapComposerH.L(-1584405648);
                String str = distantRepairFormViewState.f57386j.f64006f;
                boolean z = ((i3 & 29360128) == 8388608) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z || objX == composer$Companion$Empty$1) {
                    objX = new nu(function0, function2);
                    gapComposerH.q(objX);
                }
                Function2 function10 = (Function2) objX;
                boolean z2 = ((i3 & 3670016) == 1048576) | ((i3 & 1879048192) == 536870912);
                Object objX2 = gapComposerH.x();
                if (z2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new em(function5, function3, 1);
                    gapComposerH.q(objX2);
                }
                DistantRepairBottomSheetDatePickerKt.a(str, distantRepairCalendarViewState, snackbarHostState, function10, (Function1) objX2, function4, null, gapComposerH, ((i3 >> 3) & 1008) | ((i3 >> 9) & ImageMetadata.JPEG_GPS_COORDINATES), 64);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                if (distantRepairFormBottomSheetScreen instanceof DistantRepairFormBottomSheetScreen.BottomSheetDeletion) {
                    gapComposer.L(-1583749099);
                    a(((DistantRepairFormBottomSheetScreen.BottomSheetDeletion) distantRepairFormBottomSheetScreen).f57244a, function6, function1, gapComposer, ((i4 << 3) & 112) | ((i3 >> 6) & 896));
                    gapComposer.Z(false);
                } else if (distantRepairFormBottomSheetScreen.equals(DistantRepairFormBottomSheetScreen.BottomSheetTutorial.f57248a)) {
                    gapComposer.L(-1583474067);
                    f(gapComposer, 0);
                    gapComposer.Z(false);
                } else if (distantRepairFormBottomSheetScreen.equals(DistantRepairFormBottomSheetScreen.BottomSheetPrepare.f57247a)) {
                    gapComposer.L(-1583344208);
                    e(function6, gapComposer, i4 & 14);
                    gapComposer.Z(false);
                } else {
                    if (!distantRepairFormBottomSheetScreen.equals(DistantRepairFormBottomSheetScreen.BottomSheetExcludedRegion.f57245a)) {
                        throw d21.u(gapComposer, 1749995208, false);
                    }
                    gapComposer.L(-1583145622);
                    b(function6, function7, gapComposer, i4 & 126);
                    gapComposer.Z(false);
                }
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new al(distantRepairFormBottomSheetScreen, distantRepairFormViewState, distantRepairCalendarViewState, snackbarHostState, function1, function2, function3, function0, function4, function5, function6, function7, function8, function9, i2);
        }
    }

    public static final void d(Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        int i3;
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1877554620);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        int i4 = 16;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(gapComposerH, R.string.dr_privacy_policy_title), "careservicesConsent_title_text", null, null, null, false, "careservicesConsent_close_button", function0, ComposableLambdaKt.b(1586912007, new g1(i4, function2, function0, function1), gapComposerH), gapComposerH, 805309440, (i3 & 14) | 48, 499);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(function0, function1, function2, i2);
        }
    }

    public static final void e(Function0 function0, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1381322905);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(function0) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_info_card_title), null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_info_card_text), null, StringResources_androidKt.c(gapComposerH, R.string.ok), null, false, null, function0, null, false, null, null, null, false, null, gapComposer, 0, (i3 << 3) & 112, 1046363);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pu(i2, 0, function0);
        }
    }

    public static final void f(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1404821676);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_title_how_picture);
            ComposableSingletons$DistantRepairFormBottomSheetScreenKt.f57210a.getClass();
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, strC, null, null, null, null, true, null, null, ComposableSingletons$DistantRepairFormBottomSheetScreenKt.f57211b, gapComposerH, 12582912, 48, 1915);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rq(i2, 4);
        }
    }
}
