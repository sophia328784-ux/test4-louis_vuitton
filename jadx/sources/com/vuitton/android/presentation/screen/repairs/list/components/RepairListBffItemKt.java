package com.vuitton.android.presentation.screen.repairs.list.components;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import defpackage.kf;
import defpackage.kj0;
import defpackage.o;
import defpackage.p0;
import defpackage.ps0;
import defpackage.sq0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairListBffItemKt {
    public static final void a(CareServiceShortUiModel careServiceShortUiModel, Function1 function1, Function1 function2, Function1 function3, Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(422664653);
        int i3 = i2 | (gapComposerH.K(careServiceShortUiModel) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = careServiceShortUiModel.o;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z) {
                gapComposerH.L(-1841151313);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_proceed_payment);
                boolean z2 = ((i3 & 7168) == 2048) | ((i3 & 14) == 4);
                Object objX = gapComposerH.x();
                if (z2 || objX == composer$Companion$Empty$1) {
                    objX = new ps0(function3, careServiceShortUiModel, 0);
                    gapComposerH.q(objX);
                }
                b(strC, (Function0) objX, gapComposerH, 0);
                gapComposerH.Z(false);
            } else if (careServiceShortUiModel.p) {
                gapComposerH.L(-1841138714);
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_track_my_shippment);
                boolean z3 = ((i3 & 14) == 4) | ((i3 & 112) == 32);
                Object objX2 = gapComposerH.x();
                if (z3 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new ps0(careServiceShortUiModel, function1);
                    gapComposerH.q(objX2);
                }
                b(strC2, (Function0) objX2, gapComposerH, 0);
                gapComposerH.Z(false);
            } else if (careServiceShortUiModel.r) {
                gapComposerH.L(-1841130285);
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_accept_estimate);
                boolean z4 = ((i3 & 896) == 256) | ((i3 & 14) == 4);
                Object objX3 = gapComposerH.x();
                if (z4 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new ps0(function2, careServiceShortUiModel, 2);
                    gapComposerH.q(objX3);
                }
                b(strC3, (Function0) objX3, gapComposerH, 0);
                gapComposerH.Z(false);
            } else if (careServiceShortUiModel.q) {
                gapComposerH.L(-1841122500);
                String strC4 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_confirm_shipping_address);
                boolean z5 = ((i3 & 7168) == 2048) | ((i3 & 14) == 4);
                Object objX4 = gapComposerH.x();
                if (z5 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new ps0(function3, careServiceShortUiModel, 3);
                    gapComposerH.q(objX4);
                }
                b(strC4, (Function0) objX4, gapComposerH, 0);
                gapComposerH.Z(false);
            } else if (careServiceShortUiModel.s) {
                gapComposerH.L(-1841114457);
                b(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_cta_contact), function0, gapComposerH, (i3 >> 9) & 112);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1239819371);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(careServiceShortUiModel, function1, function2, function3, function0, i2);
        }
    }

    public static final void b(String str, Function0 function0, Composer composer, int i2) {
        int i3;
        String str2;
        Function0 function1;
        GapComposer gapComposerH = composer.h(64076485);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DividerKt.a(PaddingKt.m(new DTFunctionNameModifier("RepairItemCtaInternal"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
            str2 = str;
            function1 = function0;
            LVLinkKt.a(PaddingKt.m(new DTFunctionNameModifier("RepairItemCtaInternal"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), str2, false, null, false, function1, gapComposerH, ((i3 << 3) & 112) | ((i3 << 12) & ImageMetadata.JPEG_GPS_COORDINATES), 28);
            gapComposerH = gapComposerH;
        } else {
            str2 = str;
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kf(str2, function1, i2, 3);
        }
    }

    public static final void c(RepairsBffViewState repairsBffViewState, CareServiceShortUiModel careServiceShortUiModel, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function0 function4, Composer composer, int i2) {
        repairsBffViewState.getClass();
        careServiceShortUiModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1649069321);
        int i3 = i2 | (gapComposerH.y(repairsBffViewState) ? 4 : 2) | (gapComposerH.K(careServiceShortUiModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("RepairListBffItem");
            boolean z = (i3 & 896) == 256;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new sq0(function0, 7);
                gapComposerH.q(objX);
            }
            CardKt.a(ModifierExtKt.c(dTFunctionNameModifier, false, null, null, (Function0) objX, 31), LVAppDesignKitTheme.j(gapComposerH).f48410b, null, null, ComposableLambdaKt.b(885654725, new p0((Object) careServiceShortUiModel, (Object) function1, (Object) function2, (Object) function3, (Object) function4, (Object) repairsBffViewState, 21), gapComposerH), gapComposerH, ImageMetadata.EDGE_MODE, 28);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o(repairsBffViewState, careServiceShortUiModel, function0, function1, function2, function3, function4, i2);
        }
    }
}
