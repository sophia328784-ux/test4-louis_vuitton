package com.vuitton.android.presentation.screen.osa.form.storeselection.components;

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
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a9;
import defpackage.a90;
import defpackage.c4;
import defpackage.d21;
import defpackage.kc;
import java.time.LocalDate;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaLocationFormBottomSheetScreenKt {
    public static final void a(InAppDispatch inAppDispatch, boolean z, List list, LocalDate localDate, Function0 function0, Function1 function1, Function0 function2, Function0 function3, Composer composer, int i2) {
        int i3;
        boolean z2;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(771543118);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(inAppDispatch) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            z2 = z;
            i3 |= gapComposerH.b(z2) ? 32 : 16;
        } else {
            z2 = z;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(list) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(localDate) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            function3.mo47invoke();
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            LocalDate localDate2 = null;
            LocalDate localDate3 = localDate != null ? localDate : null;
            if (localDate3 != null) {
                localDate2 = localDate3;
            } else if (list != null) {
                localDate2 = (LocalDate) CollectionsKt.firstOrNull(list);
            }
            ref$ObjectRef.f71921b = localDate2;
            gapComposer = gapComposerH;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(gapComposerH, R.string.osa_calendar_title), null, StringResources_androidKt.c(gapComposerH, R.string.osa_calendar_disclaimer), null, LVAppDesignKitTheme.n(gapComposerH).g, true, null, null, ComposableLambdaKt.b(328673241, new c4(z2, inAppDispatch, list, localDate, ref$ObjectRef, function2, function1, function0), gapComposerH), gapComposer, 12582912, 48, 1835);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kc(inAppDispatch, z, list, localDate, function0, function1, function2, function3, i2);
        }
    }

    public static final void b(InAppDispatch inAppDispatch, OsaLocationFormBottomSheetScreen osaLocationFormBottomSheetScreen, boolean z, List list, LocalDate localDate, Function0 function0, Function1 function1, Function0 function2, Function0 function3, Function0 function4, Composer composer, int i2) {
        Function0 function5;
        inAppDispatch.getClass();
        osaLocationFormBottomSheetScreen.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerC = defpackage.a.c(function3, function4, composer, -1613885085);
        int i3 = i2 | (gapComposerC.y(inAppDispatch) ? 4 : 2) | (gapComposerC.K(osaLocationFormBottomSheetScreen) ? 32 : 16) | (gapComposerC.b(z) ? 256 : 128) | (gapComposerC.y(list) ? 2048 : 1024) | (gapComposerC.y(localDate) ? 16384 : 8192) | (gapComposerC.y(function0) ? 131072 : 65536) | (gapComposerC.y(function1) ? 1048576 : 524288) | (gapComposerC.y(function2) ? 8388608 : 4194304) | (gapComposerC.y(function3) ? 67108864 : 33554432) | (gapComposerC.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerC.p(i3 & 1, (306783379 & i3) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (osaLocationFormBottomSheetScreen.equals(OsaLocationFormBottomSheetScreen.OsaFormCalendarBottomSheet.f60803a)) {
                gapComposerC.L(-1386104040);
                int i4 = i3 & 14;
                int i5 = i3 >> 3;
                a(inAppDispatch, z, list, localDate, function0, function1, function2, function3, gapComposerC, i4 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | (3670016 & i5) | (i5 & 29360128));
                function5 = function0;
                gapComposerC.Z(false);
            } else {
                function5 = function0;
                if (osaLocationFormBottomSheetScreen.equals(OsaLocationFormBottomSheetScreen.OsaModificationAbortBottomSheet.f60804a)) {
                    gapComposerC.L(-1385552798);
                    c(function4, function5, gapComposerC, ((i3 >> 12) & 112) | ((i3 >> 27) & 14));
                    gapComposerC.Z(false);
                } else {
                    if (!(osaLocationFormBottomSheetScreen instanceof OsaLocationFormBottomSheetScreen.OsaPreBookErrorBottomSheet)) {
                        throw d21.u(gapComposerC, -460357471, false);
                    }
                    gapComposerC.L(-1385289050);
                    LVModalBottomSheetKt.a(null, null, null, null, null, ((OsaLocationFormBottomSheetScreen.OsaPreBookErrorBottomSheet) osaLocationFormBottomSheetScreen).f60805a, null, StringResources_androidKt.c(gapComposerC, R.string.close), null, false, null, function4, null, false, null, null, null, false, null, gapComposerC, 0, (i3 >> 24) & 112, 1046367);
                    gapComposerC = gapComposerC;
                    gapComposerC.Z(false);
                }
            }
        } else {
            function5 = function0;
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a90(inAppDispatch, osaLocationFormBottomSheetScreen, z, list, localDate, function5, function1, function2, function3, function4, i2);
        }
    }

    public static final void c(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1715624194);
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
            gapComposer = gapComposerH;
            LVModalBottomSheetKt.a(null, null, StringResources_androidKt.c(gapComposerH, R.string.osa_appointment_modification_cancelation_bottom_sheet_navigation_title), null, null, StringResources_androidKt.c(gapComposerH, R.string.osa_appointment_modification_cancelation_bottom_sheet_description), null, StringResources_androidKt.c(gapComposerH, R.string.osa_cta_appointment_modification_cancelation_confirmation), null, false, null, function0, StringResources_androidKt.c(gapComposerH, R.string.osa_cta_appointment_modification_cancelation), false, null, function1, null, false, null, gapComposer, 0, ((i3 << 3) & 112) | ((i3 << 15) & 3670016), 976731);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a9(function0, function1, i2, 6);
        }
    }
}
