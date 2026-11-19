package com.vuitton.android.presentation.screen.authentication.register.components;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import defpackage.pf0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeRegisterPersonalInfoComposableKt {
    public static final void a(ColumnScope columnScope, NativeRegisterViewState nativeRegisterViewState, Function2 function2, Function1 function1, Function0 function0, Function1 function3, boolean z, Composer composer, int i2) {
        int i3;
        columnScope.getClass();
        nativeRegisterViewState.getClass();
        function2.getClass();
        function1.getClass();
        function0.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1526616698);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(columnScope) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(nativeRegisterViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(z) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean z2 = ((i3 & 3670016) == 1048576) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new NativeRegisterPersonalInfoComposableKt$NativeRegisterPersonalInfoComposable$1$1(z, function3, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX);
            int i4 = i3 << 9;
            DynamicFormComposableKt.a(null, LVColorScheme.INVERT, nativeRegisterViewState.d, false, LVAppDesignKitTheme.l(gapComposerH).f48416e, function2, function1, function0, null, null, false, false, false, null, null, null, null, null, false, gapComposerH, (i4 & ImageMetadata.JPEG_GPS_COORDINATES) | 48 | (i4 & 3670016) | (i4 & 29360128), 0, 524041);
            gapComposerH = gapComposerH;
            SpacerKt.a(gapComposerH, columnScope.a(new DTFunctionNameModifier("NativeRegisterPersonalInfoComposable"), 1.0f, true));
            LVButtonKt.b((i3 << 15) & 1879048192, 376, gapComposerH, ModifierExtKt.e(PaddingKt.k(tr.d("NativeRegisterPersonalInfoComposable", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1), "nativeRegister_confirm_button"), LVAppDesignKitTheme.b(gapComposerH).f48447b, null, null, StringResources_androidKt.c(gapComposerH, R.string.confirm), function0, false, nativeRegisterViewState.f54031c.f53987a, false);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pf0(columnScope, nativeRegisterViewState, function2, function1, function0, function3, z, i2, 1);
        }
    }
}
