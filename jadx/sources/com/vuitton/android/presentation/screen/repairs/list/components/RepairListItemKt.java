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
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import defpackage.n4;
import defpackage.qd;
import defpackage.sq0;
import defpackage.ys0;
import defpackage.zs0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairListItemKt {
    public static final void a(final CareServiceUiModel careServiceUiModel, final Function1 function1, final Function1 function2, final Function1 function3, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1623407705);
        final int i3 = 2;
        int i4 = (gapComposerH.y(careServiceUiModel) ? 4 : 2) | i2 | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024);
        final int i5 = 1;
        final int i6 = 0;
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = careServiceUiModel.r;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z) {
                gapComposerH.L(1021684795);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_proceed_payment);
                int i7 = (gapComposerH.y(careServiceUiModel) ? 1 : 0) | ((i4 & 7168) != 2048 ? 0 : 1);
                Object objX = gapComposerH.x();
                if (i7 != 0 || objX == composer$Companion$Empty$1) {
                    objX = new Function0() { // from class: xs0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            switch (i6) {
                                case 0:
                                    function3.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                                case 1:
                                    function3.invoke(careServiceUiModel.p);
                                    break;
                                case 2:
                                    function3.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                                default:
                                    function3.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX);
                }
                b(strC, (Function0) objX, gapComposerH, 0);
                gapComposerH.Z(false);
            } else if (careServiceUiModel.s) {
                gapComposerH.L(1021697391);
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_track_my_shippment);
                boolean zY = ((i4 & 112) == 32) | gapComposerH.y(careServiceUiModel);
                Object objX2 = gapComposerH.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new Function0() { // from class: xs0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            switch (i5) {
                                case 0:
                                    function1.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                                case 1:
                                    function1.invoke(careServiceUiModel.p);
                                    break;
                                case 2:
                                    function1.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                                default:
                                    function1.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                }
                b(strC2, (Function0) objX2, gapComposerH, 0);
                gapComposerH.Z(false);
            } else if (careServiceUiModel.u) {
                gapComposerH.L(1021705727);
                String strC3 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_accept_estimate);
                int i8 = (gapComposerH.y(careServiceUiModel) ? 1 : 0) | ((i4 & 896) != 256 ? 0 : 1);
                Object objX3 = gapComposerH.x();
                if (i8 != 0 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new Function0() { // from class: xs0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            switch (i3) {
                                case 0:
                                    function2.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                                case 1:
                                    function2.invoke(careServiceUiModel.p);
                                    break;
                                case 2:
                                    function2.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                                default:
                                    function2.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX3);
                }
                b(strC3, (Function0) objX3, gapComposerH, 0);
                gapComposerH.Z(false);
            } else if (careServiceUiModel.t) {
                gapComposerH.L(1021713512);
                String strC4 = StringResources_androidKt.c(gapComposerH, R.string.dr_cta_confirm_shipping_address);
                int i9 = (gapComposerH.y(careServiceUiModel) ? 1 : 0) | ((i4 & 7168) != 2048 ? 0 : 1);
                Object objX4 = gapComposerH.x();
                if (i9 != 0 || objX4 == composer$Companion$Empty$1) {
                    final int i10 = 3;
                    objX4 = new Function0() { // from class: xs0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            switch (i10) {
                                case 0:
                                    function3.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                                case 1:
                                    function3.invoke(careServiceUiModel.p);
                                    break;
                                case 2:
                                    function3.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                                default:
                                    function3.invoke(new CareServiceIdUiModel(careServiceUiModel.f63994b));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX4);
                }
                b(strC4, (Function0) objX4, gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1608552681);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ys0(careServiceUiModel, function1, function2, function3, i2, 0);
        }
    }

    public static final void b(String str, Function0 function0, Composer composer, int i2) {
        String str2;
        Function0 function1;
        GapComposer gapComposerH = composer.h(1298736481);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
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
            recomposeScopeImplB0.d = new qd(str2, function1, i2, 17);
        }
    }

    public static final void c(RepairsViewState repairsViewState, CareServiceUiModel careServiceUiModel, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Composer composer, int i2) {
        repairsViewState.getClass();
        careServiceUiModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-804695351);
        int i3 = i2 | (gapComposerH.y(repairsViewState) ? 4 : 2) | (gapComposerH.y(careServiceUiModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("RepairListItem");
            boolean z = (i3 & 896) == 256;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new sq0(function0, 8);
                gapComposerH.q(objX);
            }
            CardKt.a(ModifierExtKt.e(ModifierExtKt.c(dTFunctionNameModifier, false, null, null, (Function0) objX, 31), "careservicesList_repairsItem_button"), LVAppDesignKitTheme.j(gapComposerH).f48410b, null, null, ComposableLambdaKt.b(-1956565353, new n4(careServiceUiModel, function1, function2, function3, repairsViewState, 21), gapComposerH), gapComposerH, ImageMetadata.EDGE_MODE, 28);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zs0(repairsViewState, careServiceUiModel, function0, function1, function2, function3, i2, 0);
        }
    }
}
