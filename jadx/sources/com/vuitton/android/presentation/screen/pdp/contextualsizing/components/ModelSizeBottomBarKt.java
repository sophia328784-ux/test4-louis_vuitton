package com.vuitton.android.presentation.screen.pdp.contextualsizing.components;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
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
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import defpackage.o9;
import defpackage.oa;
import defpackage.t30;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ModelSizeBottomBarKt {
    public static final void a(int i2, Composer composer, Modifier modifier, String str) {
        String str2;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "CrossFadeText");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(1408154843);
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.K(modifier2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableSingletons$ModelSizeBottomBarKt.f61485a.getClass();
            str2 = str;
            CrossfadeKt.b(str2, modifier2, null, null, ComposableSingletons$ModelSizeBottomBarKt.f61486b, gapComposerH, (i3 & 14) | 24576 | (i3 & 112), 12);
        } else {
            str2 = str;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o9(str2, modifier2, i2, 3);
        }
    }

    public static final void b(PagerState pagerState, Modifier modifier, List list, ModelSizeVariationUiModel modelSizeVariationUiModel, CoroutineScope coroutineScope, Function1 function1, Composer composer, int i2, int i3) {
        Modifier dTFunctionNameModifier = modifier;
        ModelSizeVariationUiModel modelSizeVariationUiModel2 = modelSizeVariationUiModel;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "ModelSizeBottomBar");
        }
        pagerState.getClass();
        list.getClass();
        modelSizeVariationUiModel2.getClass();
        coroutineScope.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-346024390);
        int i4 = i2 | (gapComposerH.K(pagerState) ? 4 : 2);
        int i5 = i3 & 2;
        if (i5 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(dTFunctionNameModifier) ? 32 : 16;
        }
        int i6 = i4 | (gapComposerH.y(list) ? 256 : 128) | (gapComposerH.y(modelSizeVariationUiModel2) ? 2048 : 1024) | (gapComposerH.y(coroutineScope) ? 16384 : 8192);
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i6 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if (gapComposerH.p(i6 & 1, (74899 & i6) != 74898)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("ModelSizeBottomBar");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            ModelSizeSliderKt.a((i6 & 910) | ((i6 >> 3) & 7168), pagerState, gapComposerH, PaddingKt.k(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "ModelSizeBottomBar"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1), list, coroutineScope);
            modelSizeVariationUiModel2 = modelSizeVariationUiModel;
            a(0, gapComposerH, ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("ModelSizeBottomBar"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), "contextualSizing_productDimensions_text"), modelSizeVariationUiModel2.f61536f);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48449e;
            Modifier modifierM = PaddingKt.m(tr.d("ModelSizeBottomBar", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48418h, 2);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.pdp_contextual_sizing_view_details_button);
            boolean zY = gapComposerH.y(modelSizeVariationUiModel2) | ((i6 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new t30(function1, modelSizeVariationUiModel2, 15);
                gapComposerH.q(objX);
            }
            LVButtonKt.b(0, 504, gapComposerH, modifierM, configurationButton, null, null, strC, (Function0) objX, false, false, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oa(pagerState, modifier2, list, modelSizeVariationUiModel2, coroutineScope, function1, i2, i3);
        }
    }
}
