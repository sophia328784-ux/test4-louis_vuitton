package com.vuitton.android.presentation.screen.story.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.story.models.StoryHeaderUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.es0;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoryHeaderKt {
    public static final void a(Modifier modifier, StoryHeaderUiModel storyHeaderUiModel, Composer composer, int i2) {
        String str;
        boolean z;
        String str2;
        boolean z2;
        Modifier modifierJ;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "StoryHeader");
        }
        GapComposer gapComposerH = composer.h(-2027579332);
        int i3 = i2 | 6 | (gapComposerH.K(storyHeaderUiModel) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("StoryHeader");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (storyHeaderUiModel == null || (str = storyHeaderUiModel.f65167b) == null || !StringExtKt.a(str)) {
                str = null;
            }
            if (str == null) {
                gapComposerH.L(-470149206);
                gapComposerH.Z(false);
                z = false;
                z2 = true;
                str2 = null;
            } else {
                Modifier modifierO = SizeKt.o(n00.i(gapComposerH, -470149205, "StoryHeader"), LVAppDesignKitTheme.d(gapComposerH).t);
                Color.f8866b.getClass();
                Modifier modifierA = AspectRatioKt.a(BackgroundKt.b(modifierO, Color.f8870h, RectangleShapeKt.f8913a), 1.0f, true);
                String strB = new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b))).b(str, new ImageConfiguration.Background.Opaque(null, 1, null));
                strB.getClass();
                z = false;
                str2 = null;
                z2 = true;
                ImageLoaderKt.b(modifierA, strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                gapComposerH.Z(false);
            }
            String str3 = storyHeaderUiModel != null ? storyHeaderUiModel.f65166a : str2;
            if (str3 == null) {
                gapComposerH.L(-469551092);
                gapComposerH.Z(z);
            } else {
                gapComposerH.L(-469551091);
                if (StringExtKt.a(storyHeaderUiModel.f65167b)) {
                    modifierJ = PaddingKt.m(n00.i(gapComposerH, 864202113, "StoryHeader"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    gapComposerH.Z(z);
                } else {
                    modifierJ = n00.j(gapComposerH, 864309497, z, "StoryHeader");
                }
                TextKt.c(str3, modifierJ, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 24576, 114680);
                gapComposerH = gapComposerH;
                gapComposerH.Z(z);
            }
            gapComposerH.Z(z2);
            modifierE = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new es0(modifierE, storyHeaderUiModel, i2, 12);
        }
    }
}
