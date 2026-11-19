package com.vuitton.android.presentation.screen.authentication.social.components;

import android.content.Context;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.screen.authentication.register.components.LegalNoticeKt;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import defpackage.a;
import defpackage.jm0;
import defpackage.kj0;
import defpackage.kv0;
import defpackage.tr;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SocialRegisterComposableKt {
    public static final void a(Modifier modifier, SocialRegisterViewState socialRegisterViewState, Function2 function2, Function0 function0, Function0 function1, Composer composer, int i2) {
        Modifier modifier2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "SocialRegisterComposable");
        }
        GapComposer gapComposerH = composer.h(-67811669);
        int i3 = i2 | 6 | (gapComposerH.y(socialRegisterViewState) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                dTFunctionNameModifier = new DTFunctionNameModifier("SocialRegisterComposable");
            } else {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierM = PaddingKt.m(ScrollKt.d(dTFunctionNameModifier.o(SizeKt.f5052c), ScrollKt.b(gapComposerH), false, 14), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            LVColorScheme lVColorScheme = LVColorScheme.INVERT;
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            FormUiModel formUiModel = socialRegisterViewState.f54236b;
            int i4 = ((i3 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | 48;
            Modifier modifier3 = dTFunctionNameModifier;
            DynamicFormComposableKt.a(null, lVColorScheme, formUiModel, false, f2, function2, null, function0, null, null, false, false, true, null, null, null, null, null, false, gapComposerH, i4 | ((i3 << 12) & 29360128), 100663680, 257865);
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            FormUiModel formUiModel2 = socialRegisterViewState.f54237c;
            boolean zY = gapComposerH.y(socialRegisterViewState) | ((i3 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new jm0(socialRegisterViewState, function0, 28);
                gapComposerH.q(objX);
            }
            DynamicFormComposableKt.a(null, lVColorScheme, formUiModel2, false, f3, function2, null, (Function0) objX, null, null, false, false, false, new kv0(function1, 1), new kv0(function1, 2), null, null, null, false, gapComposerH, i4, 0, 499529);
            gapComposerH = gapComposerH;
            if (socialRegisterViewState.f54239f.f54199b) {
                gapComposerH.L(-1267208145);
                LegalNoticeKt.a(context, gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1267148563);
                gapComposerH.Z(false);
            }
            SpacerKt.a(gapComposerH, ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("SocialRegisterComposable"), 1.0f, true));
            LVButtonKt.b((i3 << 18) & 1879048192, 376, gapComposerH, ModifierExtKt.e(PaddingKt.k(tr.d("SocialRegisterComposable", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1), "nativeRegister_confirm_button"), LVAppDesignKitTheme.b(gapComposerH).f48447b, null, null, StringResources_androidKt.c(gapComposerH, R.string.confirm), function0, false, socialRegisterViewState.f54238e, false);
            gapComposerH.Z(true);
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0((Object) modifier2, (Object) socialRegisterViewState, (Function) function2, function0, function1, i2, 22);
        }
    }
}
