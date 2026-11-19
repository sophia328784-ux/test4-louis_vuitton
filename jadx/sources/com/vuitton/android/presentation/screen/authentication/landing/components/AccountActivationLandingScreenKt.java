package com.vuitton.android.presentation.screen.authentication.landing.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import defpackage.a;
import defpackage.cj;
import defpackage.pq0;
import defpackage.tr;
import defpackage.x2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccountActivationLandingScreenKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        Function0 function2 = function1;
        GapComposer gapComposerC = a.c(function0, function2, composer, -1273951138);
        Applier applier = gapComposerC.f7976a;
        int i4 = i2 | (gapComposerC.y(function0) ? 4 : 2) | (gapComposerC.y(function2) ? 32 : 16);
        if (gapComposerC.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AccountActivationLandingScreen");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifier.o(fillElement);
            Painter painterA = PainterResources_androidKt.a(R.drawable.native_login_background, gapComposerC, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA = PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerC.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerC, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function3);
            } else {
                gapComposerC.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerC, measurePolicyD, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerC, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerC, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerC, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerC, modifierC, function8);
            LVFloatingTopBarKt.a(null, FloatingTopBarType.Close, null, null, StringResources_androidKt.c(gapComposerC, R.string.alt_close), function2, null, null, gapComposerC, ((i4 << 12) & ImageMetadata.JPEG_GPS_COORDINATES) | 48, 205);
            Modifier modifierK = PaddingKt.k(pq0.i("AccountActivationLandingScreen", fillElement), LVAppDesignKitTheme.l(gapComposerC).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.g, horizontal, gapComposerC, 54);
            int iHashCode2 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerC.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerC, modifierK);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function3);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, columnMeasurePolicyA, function4);
            Updater.c(gapComposerC, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerC, function6, gapComposerC, function7);
            Updater.c(gapComposerC, modifierC2, function8);
            Modifier modifierA2 = ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("AccountActivationLandingScreen"), 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.g(LVAppDesignKitTheme.l(gapComposerC).f48416e, Alignment.Companion.l), horizontal, gapComposerC, 48);
            int iHashCode3 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerC.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerC, modifierA2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function3);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, columnMeasurePolicyA2, function4);
            Updater.c(gapComposerC, persistentCompositionLocalMapU3, function5);
            cj.t(iHashCode3, gapComposerC, function6, gapComposerC, function7);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerC).f48398i, gapComposerC, 0), null, SizeKt.o(tr.e(gapComposerC, modifierC3, function8, "AccountActivationLandingScreen"), IconSize.f48350e), LVAppDesignKitTheme.c(gapComposerC).f48361b.m, gapComposerC, 56, 0);
            String strC = StringResources_androidKt.c(gapComposerC, R.string.mylv_account_activation_title);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerC).f48425e;
            long j2 = LVAppDesignKitTheme.c(gapComposerC).f48361b.m;
            TextAlign.f10959b.getClass();
            int i5 = TextAlign.f10961e;
            TextKt.c(strC, null, j2, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, textStyle, gapComposerC, 0, 0, 130042);
            TextKt.c(StringResources_androidKt.c(gapComposerC, R.string.mylv_account_activation_description), null, LVAppDesignKitTheme.c(gapComposerC).f48361b.n, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerC).g, gapComposerC, 0, 0, 130042);
            gapComposerC.Z(true);
            Modifier modifierM = PaddingKt.m(WindowInsetsPadding_androidKt.b(SizeKt.d(new DTFunctionNameModifier("AccountActivationLandingScreen"), 1.0f)), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48417f, 7);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerC).f48447b;
            String strC2 = StringResources_androidKt.c(gapComposerC, R.string.activate_your_account_cta);
            i3 = 1;
            gapComposerC = gapComposerC;
            function2 = function1;
            LVButtonKt.b((i4 << 27) & 1879048192, 504, gapComposerC, modifierM, configurationButton, null, null, strC2, function0, false, false, false);
            gapComposerC.Z(true);
            gapComposerC.Z(true);
        } else {
            i3 = 1;
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x2(function0, function2, i2, i3);
        }
    }
}
